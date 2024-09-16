#ifndef _HASH_H_
#define _HASH_H_

#include "count.h"
#include <stdbool.h>
#include <string.h>

#define HASH_TABLE_SIZE MAX_CHAR * 100
#define HASH_INIT 5381
#define DELETED ((bool *)-1)

// 比较两个数组是否相等（在length范围内）
bool cmpArray(bool *array1, bool *array2, int length);

typedef struct HashKey {
    int _length;
    bool *_code;
} HashKey;

typedef struct HashNode {
    HashKey key;
    ORIGINAL_DATA_TYPE value;
    bool isOccupied;
} HashTable;

unsigned long hash(HashKey key);

void insertHashTable(HashKey key, ORIGINAL_DATA_TYPE value, HashTable my_hash_table[]);

ORIGINAL_DATA_TYPE searchHashTable(HashKey key, HashTable my_hash_table[]);

void cleanHashTable(HashTable my_hash_table[]);

#endif // !_HASH_H_
