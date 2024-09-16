#include "encode.h"

// 生成哈夫曼编码，code_table为哈夫曼编码表，index为当前编码的下标，code为当前编码
void createCodeTable(Huffman root, CodeKey2Value *code_table, int index, bool *code)
{
    static int table_index = 0;
    if (root->_left != NULL) {
        code[index] = false;
        createCodeTable(root->_left, code_table, index + 1, code);
    }
    if (root->_right != NULL) {
        code[index] = true;
        createCodeTable(root->_right, code_table, index + 1, code);
    }
    if (root->_left == NULL && root->_right == NULL) {
        code_table[table_index]->_data = root->_data._char;
        code_table[table_index]->_code = (bool *)malloc(sizeof(bool) * index);

        code_table[table_index]->_length = index;

        // printf("<createCodeTable>char:%c(%d)->length%d\n", root->_data._char, root->_data._char, code_table[table_index]->_length);

        for (int i = 0; i < index; i++) {
            code_table[table_index]->_code[i] = code[i];
        }
        table_index++;
    }
    return;
}

void inorderTraversals(Huffman root)
{
    if (root == NULL) {
        return;
    }
    inorderTraversals(root->_left);
    if (root->_left == NULL && root->_right == NULL) {
        printf("%c(%d)\n", root->_data._char, root->_data._char);
    }
    inorderTraversals(root->_right);
}

// 释放哈夫曼编码表
void destroyCodeTable(CodeKey2Value *code_table, int size)
{
    for (int i = 0; i < size; i++) {
        free(code_table[i]->_code);
        free(code_table[i]);
    }
    free(code_table);
}

// 将表扩展为256以方便寻表。哈希表的思想
CodeKey2Value *expandCodeTable(CodeKey2Value *small_table, int table_size)
{
    CodeKey2Value *expand_table = (CodeKey2Value *)malloc(sizeof(CodeKey2Value) * MAX_CHAR);

    for (int i = 0; i < MAX_CHAR; i++) {
        expand_table[i] = (CodeKey2Value)malloc(sizeof(HuffmanCode));
        expand_table[i]->_data = i;

        expand_table[i]->_length = 0;

        expand_table[i]->_code = NULL;
    }
    for (int i = 0; i < table_size; i++) {
        expand_table[small_table[i]->_data]->_length = small_table[i]->_length;
        expand_table[small_table[i]->_data]->_code = small_table[i]->_code;
    }

    // for (int i = 0; i < MAX_CHAR; i++) {
    //     if(expand_table[i]->_code!=NULL){
    //         printf("%c(%d)->lentgth:%d\n",expand_table[i]->_data,expand_table[i]->_data,expand_table[i]->_length);
    //     }
    // }

    return expand_table;
}

// 将编码表写入（先写入编码表的大小，然后是总字符数，再写入编码表）
void writeCodeTable(FILE *output, CodeKey2Value *code_table, int table_size, int text_ch_num)
{
    // 写入原始文件字符个数，虽然存在端序问题，但是实际上写入和读取操作都会使用相同的端序。因此无需考虑  printf("%d", text_diff_char_num);
    size_t elements_written = fwrite(&table_size, sizeof(int), 1, output);
    if (elements_written != 1) {
        fprintf(stderr, "Have wrong when writting in the output file!\n");
        exit(0);
    }
    elements_written = fwrite(&text_ch_num, sizeof(int), 1, output);
    if (elements_written != 1) {
        fprintf(stderr, "Have wrong when writting in the output file!\n");
        exit(0);
    }

    for (int i = 0; i < table_size; i++) {
        size_t elements_written = fwrite(&code_table[i]->_data, sizeof(ORIGINAL_DATA_TYPE), 1, output);
        if (elements_written != 1) {
            fprintf(stderr, "Have wrong when writting in the output file!\n");
            exit(0);
        }

        elements_written = fwrite(&code_table[i]->_length, sizeof(int), 1, output);
        if (elements_written != 1) {
            fprintf(stderr, "Have wrong when writting in the output file!\n");
            exit(0);
        }

        printf("<compress>: %c(%d)->length:%d ", code_table[i]->_data, code_table[i]->_data, code_table[i]->_length);

        for (int j = 0; j < code_table[i]->_length; j++) {
            elements_written = fwrite(&code_table[i]->_code[j], sizeof(bool), 1, output);
            if (elements_written != 1) {
                fprintf(stderr, "Have wrong when writting in the output file!\n");
                exit(0);
            }

            printf("%d", code_table[i]->_code[j]);
        }

        printf("\n");
    }
}

// 长为8的布尔数组变成一个8-bit的字节，如[1,1,0,1,0,0,0,1] -> 11010001
__uint8_t boolList2Byte(bool *bool_list)
{
    // 先检查布尔数组是否是8长（防止越界导致的段错误）
    for (int i = 0; i < 8; i++) {
        if (*(bool_list + i) != 1 && *(bool_list + i) != 0) {
            fprintf(stderr, "The bool_list is not 8-length!\n");
            exit(0);
        }
    }
    __uint8_t byte = 0;
    for (int i = 0; i < 8; i++) {
        byte = byte << 1;
        byte = byte | *(bool_list + i);
    }
    return byte;
}

void writeByte(FILE *output, __uint8_t byte)
{
    size_t elements_written = fwrite(&byte, sizeof(__uint8_t), 1, output);
    if (elements_written != 1) {
        fprintf(stderr, "Have wrong when writting in the output file!\n");
        exit(0);
    }
}

void Huffman_Compress(FILE *input, FILE *output)
{
    // 统计文件字符个数
    int text_diff_char_num = 0;
    int text_ch_num = 0;
    // 统计文件中各个字符以及其出现的次数
    CharInfo *text_char_info = CountChar(input, &text_diff_char_num, &text_ch_num);
    // 创建哈夫曼树
    Huffman huffman = createHuffmanTree(text_char_info, text_diff_char_num);
    // inorderTraversals(huffman);
    // 创建哈夫曼编码表
    CodeKey2Value *code_table = (CodeKey2Value *)malloc(sizeof(CodeKey2Value) * text_diff_char_num);
    for (int i = 0; i < text_diff_char_num; i++) {
        code_table[i] = (CodeKey2Value)malloc(sizeof(HuffmanCode));
    }
    int max_depth = findMaxDepth(huffman);
    bool *code = (bool *)malloc(sizeof(bool) * max_depth + 1);
    createCodeTable(huffman, code_table, 0, code);

    // 写入文件
    // 写入哈夫曼编码表
    writeCodeTable(output, code_table, text_diff_char_num, text_ch_num);

    // 写入文件
    ORIGINAL_DATA_TYPE ch;
    CodeKey2Value *expand_table = expandCodeTable(code_table, text_diff_char_num);
    rewind(input);

    int max_code_length = -1;
    for (int i = 0; i < text_diff_char_num; i++) {
        if (code_table[i]->_length > max_code_length)
            max_code_length = code_table[i]->_length;
    }
    printf("\nmax_code_length is %d\n", max_code_length);

    // 每读一个字符，就将其编码写入缓冲区
    int buffer_index_upper = BUFFER_MAX_FILE_SIZE * sizeof(ORIGINAL_DATA_TYPE) * max_code_length + 8;
    bool* read_buffer = (bool*)malloc(buffer_index_upper);
    int count_size_before = 0;
    int buffer_index = 0;
    while (fread(&ch, sizeof(ORIGINAL_DATA_TYPE), 1, input) == 1) {
        count_size_before++;
        for (int i = 0; i < expand_table[ch]->_length; i++) {
            read_buffer[buffer_index] = expand_table[ch]->_code[i];
            buffer_index++;
            if (buffer_index == buffer_index_upper) {
                fprintf(stderr, "The buffer is full!\n");
                exit(0);
            }
        }
    }
    //printf("count_size_before***************************:%d\n", count_size_before);
    // 补齐缓冲区
    int padding = 8 - buffer_index % 8;
    for (int i = 0; i < padding; i++) {
        read_buffer[buffer_index++] = 0;
    }

    // 将缓冲区中的编码写入文件
    int count_size_after = 0;
    for (int i = 0; i < buffer_index; i += 8) {
        __uint8_t byte = boolList2Byte(read_buffer + i);
        writeByte(output, byte);
        count_size_after++;
    }
    //printf("count_size_after***************************:%d\n", count_size_after);
    // 释放内存
    destroyCodeTable(code_table, text_diff_char_num);
    destroyHuffmanTree(huffman);
    free(text_char_info);
    free(code);
    return;
}
