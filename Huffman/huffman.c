#include "huffman.h"

pHuffmanNode createHuffmanNode(CharInfo element, int frequnecy)
{
    pHuffmanNode node = (pHuffmanNode)malloc(sizeof(HuffmanNode));
    node->_data = element;
    node->_left = NULL;
    node->_right = NULL;
    node->_parents = NULL;
    return node;
}

void destroyHuffmanNode(pHuffmanNode node)
{
    free(node);
}

Huffman createHuffmanTree(CharInfo *char_list, int size)
{
    pMinHeap minHeap = initMinHeap(size);
    for (int i = 0; i < size; i++)
        pushHeap(minHeap, createHuffmanNode(char_list[i], char_list[i]._frequency));

    while (minHeap->_size > 1) {
        pHuffmanNode left = popHeap(minHeap);
        pHuffmanNode right = popHeap(minHeap);
        pHuffmanNode parents = createHuffmanNode(char_list[0], left->_data._frequency + right->_data._frequency);
        parents->_left = left;
        parents->_right = right;
        left->_parents = parents;
        right->_parents = parents;
        pushHeap(minHeap, parents);
    }
    Huffman ret = popHeap(minHeap);
    destroyMinHeap(minHeap);
    return ret;
}

void destroyHuffmanTree(Huffman root)
{
    if (root->_left != NULL) {
        destroyHuffmanTree(root->_left);
    }
    if (root->_right != NULL) {
        destroyHuffmanTree(root->_right);
    }
    destroyHuffmanNode(root);
}

int findMaxDepth(Huffman root)
{
    if (root == NULL) {
        return 0;
    }
    int left = findMaxDepth(root->_left);
    int right = findMaxDepth(root->_right);
    return left > right ? left + 1 : right + 1;
}
