#include "heap.h"

// 创建最小堆
pMinHeap initMinHeap(int capacity){
    pMinHeap minHeap = (pMinHeap)malloc(sizeof(MinHeap)); // 为堆结构体分配内存
    minHeap->_heap = (HEAP_DATA_TYPE *)malloc(capacity * sizeof(HEAP_DATA_TYPE)); // 为堆元素指针数组分配内存
    minHeap->_size = 0; // 初始化堆的当前大小为0
    minHeap->_capacity = capacity; // 初始化堆的最大容量
    return minHeap;
}

// 销毁最小堆
void destroyMinHeap(pMinHeap minHeap)
{
    free(minHeap->_heap); // 释放堆元素指针数组的内存
    free(minHeap);        // 释放堆结构体的内存
}

// 交换数组中两个元素的位置
void swap(HEAP_DATA_TYPE *a, HEAP_DATA_TYPE *b)
{
    HEAP_DATA_TYPE temp = *a;
    *a = *b;
    *b = temp;
}

// 向上调整堆，维持最小堆性质
void heapifyUp(pMinHeap minHeap, int index)
{
    int parent = (index - 1) / 2; // 计算父节点的索引
    // 当节点值小于父节点值时，交换节点和父节点的值，并继续向上调整
    while (index > 0 && COMPARE(minHeap->_heap[index], minHeap->_heap[parent])) {
        swap(&minHeap->_heap[index], &minHeap->_heap[parent]);
        index = parent;
        parent = (index - 1) / 2;
    }
}

// 向下调整堆，维持最小堆性质
void heapifyDown(pMinHeap minHeap, int index)
{
    int leftChild = 2 * index + 1;  // 左子节点的索引
    int rightChild = 2 * index + 2; // 右子节点的索引
    int smallest = index;           // 当前节点和其子节点中值最小的节点索引

    // 比较左子节点和当前节点的值，更新最小节点索引
    if (leftChild < minHeap->_size && COMPARE(minHeap->_heap[leftChild], minHeap->_heap[smallest])) {
        smallest = leftChild;
    }

    // 比较右子节点和当前最小节点的值，更新最小节点索引
    if (rightChild < minHeap->_size && COMPARE(minHeap->_heap[rightChild], minHeap->_heap[smallest])) {
        smallest = rightChild;
    }

    // 如果最小节点索引不是当前节点索引，交换节点和最小节点的值，并继续向下调整
    if (smallest != index) {
        swap(&minHeap->_heap[index], &minHeap->_heap[smallest]);
        heapifyDown(minHeap, smallest);
    }
}

// 添加元素到堆
void pushHeap(pMinHeap minHeap, HEAP_DATA_TYPE value)
{
    if (minHeap->_size < minHeap->_capacity) {
        minHeap->_heap[minHeap->_size] = value;
        minHeap->_size++;
        heapifyUp(minHeap, minHeap->_size - 1);
    } else {
        fprintf(stderr, "Heap is full, cannot push element!\n");
    }
}

// 弹出堆顶元素
HEAP_DATA_TYPE popHeap(pMinHeap minHeap)
{
    HEAP_DATA_TYPE nullNode = NULL; // 表示堆为空时的返回值
    if (minHeap->_size > 0) {
        HEAP_DATA_TYPE poppedValue = minHeap->_heap[0];
        minHeap->_heap[0] = minHeap->_heap[minHeap->_size - 1];
        minHeap->_size--;
        heapifyDown(minHeap, 0);
        return poppedValue;
    } else {
        fprintf(stderr, "Heap is empty, cannot pop element!\n");
        return nullNode; // 表示堆为空
    }
}

/* 测试用主函数
int main()
{
    pMinHeap minHeap = initMinHeap(100); // 创建最小堆，最大容量为100

    // 添加元素到堆
    Node node1 = {.value = 4};
    Node node2 = {.value = 2};
    Node node3 = {.value = 8};
    Node node4 = {.value = 5};
    Node node5 = {.value = 1};

    push(minHeap, &node1);
    push(minHeap, &node2);
    push(minHeap, &node3);
    push(minHeap, &node4);
    push(minHeap, &node5);

    // 弹出堆顶元素
    HEAP_DATA_TYPE poppedNode = pop(minHeap);
    if (poppedNode != NULL) {
        printf("弹出堆顶元素的值: %d\n", poppedNode->value);
    }

    // 打印弹出堆顶元素后的堆
    printf("弹出堆顶元素后的堆: ");
    for (int i = 0; i < minHeap->_size; i++) {
        printf("%d ", minHeap->_heap[i]->value);
    }
    printf("\n");

    // 销毁最小堆，释放内存
    destroyMinHeap(minHeap);

    return 0;
}
*/
