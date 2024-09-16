#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_SIZE 16
#define MAX_QUEUE_SIZE 1000
typedef int Vertex;

typedef struct queue {
    int vertices[MAX_QUEUE_SIZE];
    int front, rear, size;
} Queue;

/* 构造函数 */
Queue *newQueue()
{
    Queue *q = (Queue *)malloc(sizeof(Queue));
    q->front = q->rear = q->size = 0;
    return q;
}

/* 判断队列是否为空 */
int isEmpty(Queue *q)
{
    return q->size == 0;
}

/* 入队操作 */
void enqueue(Queue *q, int vet)
{
    q->vertices[q->rear] = vet;
    q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
    q->size++;
}

/* 出队操作 */
int dequeue(Queue *q)
{
    int vet = q->vertices[q->front];
    q->front = (q->front + 1) % MAX_QUEUE_SIZE;
    q->size--;
    return vet;
}

typedef struct graph {
    Vertex vertices[MAX_SIZE];
    bool adjMat[MAX_SIZE][MAX_SIZE];
    int size;
} GraphAdjMat, *Graph;

/* 构造函数 */
GraphAdjMat *newGraphAdjMat(int max_size)
{
    GraphAdjMat *graph = (GraphAdjMat *)malloc(sizeof(GraphAdjMat));
    graph->size = 0;
    for (int i = 0; i < MAX_SIZE; i++) {
        for (int j = 0; j < MAX_SIZE; j++) {
            graph->adjMat[i][j] = false;
        }
    }
    return graph;
}

/* 析构函数 */
void delGraphAdjMat(GraphAdjMat *graph)
{
    free(graph);
}

/* 添加顶点 */
void addVertex(GraphAdjMat *graph, int val)
{
    if (graph->size == MAX_SIZE) {
        fprintf(stderr, "图的顶点数量已达最大值\n");
        return;
    }
    // 添加第 n 个顶点，并将第 n 行和列置零
    int n = graph->size;
    graph->vertices[n] = val;
    for (int i = 0; i <= n; i++) {
        graph->adjMat[n][i] = graph->adjMat[i][n] = false;
    }
    graph->size++;
}

/* 添加边 */
// 参数 i, j 对应 vertices 元素索引
void addEdge(GraphAdjMat *graph, int i, int j)
{
    if (i < 0 || j < 0 || i >= graph->size || j >= graph->size || i == j) {
        fprintf(stderr, "边索引越界或相等\n");
        return;
    }
    graph->adjMat[i][j] = true;
    graph->adjMat[j][i] = true;
}

void BFS(Graph graph, Vertex terget, Vertex begin, int path[], Queue *path_queue, bool visited[])
{

    int begin_index = -1;
    int end_index = -1;
    for (int i = 0; i < graph->size; i++) {
        if (graph->vertices[i] == begin)
            begin_index = i;

        if (graph->vertices[i] == terget)
            end_index = i;
    }

    enqueue(path_queue, begin_index);
    int index = 0;
    path[begin_index] = -1;
    visited[begin_index] = true;
    while (!isEmpty(path_queue)) {
        int this_index = dequeue(path_queue);
        for (int i = 0; i < graph->size; i++) {
            if (graph->adjMat[this_index][i] && !visited[i]) {
                enqueue(path_queue, i);
                path[i] = this_index;
                visited[i] = true;
            }
        }
    }
}

bool judgeExcess(Vertex from, Vertex to)
{
    if (from > to) {
        int temp = from;
        from = to;
        to = temp;
    }
    Vertex move = from ^ to;

    bool judge = false;
    switch (move) {
    case 0b1100:
        if (from == 1 || from == 2)
            judge = true;
        break;

    case 0b1010:
        if ((move & to) == move)
            judge = true;
        break;

    case 0b1001:
        if (from == 2 || from == 4)
            judge = true;
        break;

    case 0b1000:
        if (from == 5 || from == 2)
            judge = true;
        break;

    default:
        judge = false;
        break;
    }

    return judge;
}

char *binnumToStr(int num)
{
    char *str = (char *)malloc(5 * sizeof(char));
    for (int i = 0; i < 4; i++) {
        str[3 - i] = num % 2 + '0';
        num /= 2;
    }
    str[4] = '\0';
    return str;
}

char *binnumToStatus(int num)
{
    char *str = binnumToStr(num);

    char *strategy = (char *)malloc(150 * sizeof(char));
    for (int i = 0; i < 150; i++)
        strategy[i] = '\0';
    int index = 0;
    for (int i = 0; i < 4; i++) {
        if (i == 0) {
            strcat(strategy, "Farmer in the ");
            index += 13;
        } else if (i == 1) {
            strcat(strategy, "Wolf in the ");
            index += 12;
        } else if (i == 2) {
            strcat(strategy, "Goat in the ");
            index += 12;
        } else if (i == 3) {
            strcat(strategy, "Cabbage in the ");
            index += 15;
        }
        if (str[i] == '0') {
            strcat(strategy, "South bank, ");
            index += 12;
        } else {
            strcat(strategy, "North bank, ");
            index += 12;
        }
    }
    strcat(strategy, " (");
    strcat(strategy, str);
    strcat(strategy, ")");
    index += 19;
    strategy[index] = '\0';
    free(str);
    return strategy;
}

void printPath(int path[], int u, FILE *output)
{

    if (path[u] == -1) {
        char *strategy = binnumToStatus(u);
        fprintf(output, "    %s", strategy);
        free(strategy);
        return;
    }
    printPath(path, path[u], output);
    char *strategy = binnumToStatus(u);
    fprintf(output, "\n--> %s", strategy);
}

void DFS(Graph graph, Vertex target, Vertex v, bool visited[], int path[], FILE *output)
{
    visited[v] = true;
    static int count = 0;
    if (v == target) {
        count++;
        fprintf(output, "The farmer's strategy for crossing the river %d: \n", count);
        fprintf(output, "*/Each line represents the status but not the Handling process/*\n");
        fprintf(output, "--------Strategy %d begin--------\n", count);
        printPath(path, v, output);
        fprintf(output, "\n--------Strategy %d end--------\n\n", count);
    }

    for (int i = 0; i < graph->size; ++i) {
        // 如果当前节点与节点 i 相连，并且节点 i 未访问过
        if (graph->adjMat[v][i] && !visited[i]) {
            path[i] = v;
            DFS(graph, target, i, visited, path, output);
        }
    }

    visited[v] = false; // 回溯
}

int main(int argc, char const *argv[])
{
    FILE *output = NULL;
    if (argc == 1) {
        output = stdout;
    } else if (argc != 2) {
        fprintf(stderr, "Usage: %s [output_filename]\n", argv[0]);
        exit(1);
    } else {
        if (strcmp(argv[1], "--help") == 0) {
            fprintf(stderr, "Usage: %s [output_filename]\n", argv[0]);
            exit(1);
        } else {
            output = fopen(argv[1], "w");
            if (!output) {
                fprintf(stderr, "Unable to open output file.\n");
                exit(1);
            }
        }
    }

    Graph plan = newGraphAdjMat(16);
    for (int vertex = 0b0000; vertex <= 0b1111; vertex++) {
        addVertex(plan, vertex);
    }
    for (int index1 = 0; index1 < MAX_SIZE; index1++) {
        for (int index2 = 0; index2 < MAX_SIZE; index2++) {
            if (judgeExcess(plan->vertices[index1], plan->vertices[index2]))
                addEdge(plan, index1, index2);
        }
    }

    int path[MAX_SIZE] = {0};
    for (int i = 0; i < MAX_SIZE; i++)
        path[i] = -1;
    Queue *queue = newQueue();
    bool visited[MAX_SIZE] = {0};
    for (int i = 0; i < MAX_SIZE; i++)
        visited[i] = 0;

    DFS(plan, 0b1111, 0b0000, visited, path, output);

    fclose(output);
    return 0;
}
