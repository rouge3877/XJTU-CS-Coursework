#include "hash.h"

bool cmpArray(bool *array1, bool *array2, int length)
{
    for (int i = 0; i < length; i++) {
        if (array1[i] != array2[i])
            return false;
    }
    return true;
}

unsigned long hash(HashKey key)
{
    unsigned long hash = HASH_INIT;
    for (int i = 0; i < key._length; ++i) {
        // 将bool值转换为整数 (0 或 1)，然后参与哈希计算
        hash = (key._code[i]*(2<<i)/7 - (hash << 5)%HASH_INIT+HASH_INIT + hash)%HASH_TABLE_SIZE;
    }
    return hash;
}

void insertHashTable(HashKey key, ORIGINAL_DATA_TYPE value, HashTable my_hash_table[])
{
    unsigned long index = hash(key);
    while (my_hash_table[index].isOccupied) {
        index = (index + 1) % HASH_TABLE_SIZE;
        
    }
    bool *code_copy = malloc(sizeof(bool) * key._length);
    memcpy(code_copy, key._code, sizeof(bool) * key._length);

    my_hash_table[index].key._length = key._length;
    my_hash_table[index].key._code = code_copy;

    my_hash_table[index].value = value;
    my_hash_table[index].isOccupied = true;
    printf("insertHashTable: index = %lu, , value = %d\n", index, value);
}

ORIGINAL_DATA_TYPE searchHashTable(HashKey key, HashTable my_hash_table[])
{
    unsigned long index = hash(key);
    unsigned long start_index = index;

    do {
        if (my_hash_table[index].isOccupied && my_hash_table[index].key._code != DELETED) {
            if (my_hash_table[index].key._length == key._length && cmpArray(my_hash_table[index].key._code, key._code, key._length))
                return my_hash_table[index].value;
        }
        index = (index + 1) % HASH_TABLE_SIZE;
    } while (index != start_index);

    // Key not found
    return 0;
}

void cleanHashTable(HashTable my_hash_table[])
{
    for (int i = 0; i < HASH_TABLE_SIZE; ++i) {
        if (my_hash_table[i].isOccupied) {
            free(my_hash_table[i].key._code);
            my_hash_table[i].key._code = DELETED;
        }
    }
}
