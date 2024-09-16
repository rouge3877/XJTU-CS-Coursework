#include "encode.h"

// 读取哈夫曼编码表
CodeKey2Value *readCodeTable(FILE *input, int *table_size, int *text_ch_num)
{
    size_t elements_read = fread(table_size, sizeof(int), 1, input);
    if (elements_read != 1) {
        fprintf(stderr, "Error reading the table size from the compressed file!\n");
        exit(0);
    }

    elements_read = fread(text_ch_num, sizeof(int), 1, input);
    if (elements_read != 1) {
        fprintf(stderr, "Error reading the total character count from the compressed file!\n");
        exit(0);
    }

    CodeKey2Value *code_table = (CodeKey2Value *)malloc(sizeof(CodeKey2Value) * (*table_size));
    for (int i = 0; i < *table_size; i++) {
        code_table[i] = (CodeKey2Value)malloc(sizeof(HuffmanCode));

        elements_read = fread(&code_table[i]->_data, sizeof(ORIGINAL_DATA_TYPE), 1, input);
        if (elements_read != 1) {
            fprintf(stderr, "Error reading data from the compressed file!\n");
            exit(0);
        }

        elements_read = fread(&code_table[i]->_length, sizeof(int), 1, input);
        if (elements_read != 1) {
            fprintf(stderr, "Error reading code length from the compressed file!\n");
            exit(0);
        }

        code_table[i]->_code = (bool *)malloc(sizeof(bool) * code_table[i]->_length);

        for (int j = 0; j < code_table[i]->_length; j++) {
            elements_read = fread(&code_table[i]->_code[j], sizeof(bool), 1, input);
            if (elements_read != 1) {
                fprintf(stderr, "Error reading code from the compressed file!\n");
                exit(0);
            }
        }
    }

    return code_table;
}

// 从缓冲区中读取下一个比特
bool readBit(bool *read_buffer, int *buffer_index)
{
    return read_buffer[(*buffer_index)++];
}


DecodeHuffmanTree* codeTableBuildHuffmanTree(CodeKey2Value *code_table, int table_size)
{
    DecodeHuffmanTree* huffman = (DecodeHuffmanTree*)malloc(sizeof(struct decodeHuffmanTree));
    huffman->_left = huffman->_right = NULL;

    for (int i = 0; i < table_size; i++) {
        DecodeHuffmanTree* p = huffman;
        for (int j = 0; j < code_table[i]->_length; j++) {
            if (code_table[i]->_code[j] == 0) {
                if (p->_left == NULL) {
                    p->_left = (DecodeHuffmanTree*)malloc(sizeof(struct decodeHuffmanTree));
                    p->_left->_left = p->_left->_right = NULL;
                }
                p = p->_left;
            } else {
                if (p->_right == NULL) {
                    p->_right = (DecodeHuffmanTree*)malloc(sizeof(struct decodeHuffmanTree));
                    p->_right->_left = p->_right->_right = NULL;
                }
                p = p->_right;
            }
        }
        p->_data = code_table[i]->_data;
    }

    return huffman;
}

void inorderTraversal(DecodeHuffmanTree* huffman)
{
    if (huffman == NULL) {
        return;
    }
    inorderTraversal(huffman->_left);
    if (huffman->_left == NULL && huffman->_right == NULL) {
        printf("%d\n", huffman->_data);
    }
    inorderTraversal(huffman->_right);
}

void Huffman_Uncompress(FILE *input, FILE *output)
{
    int table_size, text_ch_num;

    // 读取哈夫曼编码表
    CodeKey2Value *code_table = readCodeTable(input, &table_size, &text_ch_num);

    // 从哈夫曼编码表中构建哈夫曼树
    DecodeHuffmanTree* huffman = codeTableBuildHuffmanTree(code_table, table_size);

    //inorderTraversal(huffman);
    
    // 读取编码并解压缩
    __uint8_t read_byte;
    int buffer_index = 0;
    bool *read_buffer = (bool *)malloc(BUFFER_MAX_FILE_SIZE * sizeof(__uint8_t) * 8 + 8);
    DecodeHuffmanTree *current_node = huffman;

    while (text_ch_num > 0 && fread(&read_byte, sizeof(__uint8_t), 1, input) == 1) {
        for (int i = 7; i >= 0; i--) {
            read_buffer[buffer_index] = (read_byte >> i) & 1;
            buffer_index++;

            // Traverse the Huffman tree based on the bits read
            if (read_buffer[buffer_index - 1] == 0) {
                current_node = current_node->_left;
            } else {
                current_node = current_node->_right;
            }

            // Check if a leaf node is reached
            if (current_node->_left == NULL && current_node->_right == NULL) {
                // Write the decoded character to the output file
                size_t elements_written = fwrite(&current_node->_data, sizeof(ORIGINAL_DATA_TYPE), 1, output);
                if (elements_written != 1) {
                    fprintf(stderr, "Error writing to the decompressed file!\n");
                    exit(0);
                }

                // Reset the current_node to the root for the next iteration
                current_node = huffman;
                text_ch_num--;
            }
        }
    }

    // 释放内存
    free(read_buffer);
    
}
