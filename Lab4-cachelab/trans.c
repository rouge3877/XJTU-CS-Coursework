/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

void _32_32_transpose(int M, int N, int A[N][M], int B[M][N]);
void _64_64_transpose(int M, int N, int A[N][M], int B[M][N]);
void _61_67_transpose(int M, int N, int A[N][M], int B[M][N]);
/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if (M == 32 && N == 32)
    {
        _32_32_transpose(M, N, A, B);
    }
    else if (M == 61 && N == 67)
    {
        _61_67_transpose(M, N, A, B);
    }
    else if (M == 64 && N == 64)
    {
        _64_64_transpose(M, N, A, B);
    }

    else
    {
        for (int i = 0; i < N; i++)
            for (int j = 0; j < M; j++)
                B[j][i] = A[i][j];
    }
    return;
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; j++)
        {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; ++j)
        {
            if (A[i][j] != B[j][i])
            {
                return 0;
            }
        }
    }
    return 1;
}

void _32_32_transpose(int M, int N, int A[N][M], int B[M][N])
{
    for (int x = 0; x < M; x += 8)
    {
        for (int y = 0; y < N; y += 8)
        {
            if (x != y)
            {
                for (int i = 0; i < 8; i++)
                    for (int j = 0; j < 8; j++)
                        if ((x + i) < N && (y + j) < M)
                            B[y + j][x + i] = A[x + i][y + j];
            }
            else
            {
                for (int i = 0; i < 8; i++)
                    for (int j = 0; j < 8; j++)
                        B[(y + 8) % N + j][(x + 8) % M + i] = A[x + i][y + j];
            }
        }
    }
    for (int x = 0; x < 8; x++)
    {
        int temp0 = B[x][0];
        int temp1 = B[x][1];
        int temp2 = B[x][2];
        int temp3 = B[x][3];
        int temp4 = B[x][4];
        int temp5 = B[x][5];
        int temp6 = B[x][6];
        int temp7 = B[x][7];
        for (int y = 0; y < 24; y += 8)
        {
            for (int i = 0; i < 8; i++)
            {
                B[y + x][i + y] = B[y + 8 + x][i + 8 + y];
            }
        }
        B[24 + x][24 + 0] = temp0;
        B[24 + x][24 + 1] = temp1;
        B[24 + x][24 + 2] = temp2;
        B[24 + x][24 + 3] = temp3;
        B[24 + x][24 + 4] = temp4;
        B[24 + x][24 + 5] = temp5;
        B[24 + x][24 + 6] = temp6;
        B[24 + x][24 + 7] = temp7;
    }
    return;
}

void _64_64_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, x, y, temp[8];
    for (x = 0; x < N; x += 8)
        for (y = 0; y < M; y += 8)
        {
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 8; j++)
                {
                    temp[j] = A[x + i][y + j];
                }
                for (j = 0; j < 4; j++)
                {
                    B[y + j][x + i + 0] = temp[j];
                    B[y + j][x + i + 4] = temp[7 - j];
                }
            }
            for (i = 0; i < 4; i++)
            {

                for (j = 0; j < 4; j++)
                {
                    temp[j] = A[x + 4 + j][y + 3 - i];
                    temp[j + 4] = A[x + 4 + j][y + 4 + i];
                }
                for (j = 0; j < 4; j++)
                {
                    B[y + 4 + i][x + j] = B[y + 3 - i][x + 4 + j];
                    B[y + 3 - i][x + 4 + j] = temp[j];
                    B[y + 4 + i][x + j + 4] = temp[j + 4];
                }
            }
        }

    // 处理对角线上4*4
    // for (int x = 0; x < 64; x += 4)
    // {
    //     for (int i = 0; i < 4; i++)
    //     {
    //         for (int j = 0; j < 4; j++)
    //         {
    //             B[(x + 4) % N + j][(x + 4) % M + i] = A[x + i][x + j];
    //         }
    //     }
    // }
    // for (int x = 0; x < 4; x++)
    // {
    //     temp[0] = B[x][0];
    //     temp[1] = B[x][1];
    //     temp[2] = B[x][2];
    //     temp[3] = B[x][3];

    //     for (int y = 0; y < 24; y += 8)
    //     {
    //         for (int i = 0; i < 8; i++)
    //         {
    //             B[y + x][i + y] = B[y + 8 + x][i + 8 + y];
    //         }
    //     }
    //     B[24 + x][24 + 0] = temp[0];
    //     B[24 + x][24 + 1] = temp[1];
    //     B[24 + x][24 + 2] = temp[2];
    //     B[24 + x][24 + 3] = temp[3];
    // }
    return;
}

void _61_67_transpose(int M, int N, int A[N][M], int B[M][N])
{
    for (int x = 0; x < N; x += 16)
        for (int y = 0; y < M; y += 16)
            for (int j = 0; j < 16; j++)
                for (int i = 0; i < 16; i++)
                    if ((x + i) < N && (y + j) < M)
                        B[y + j][x + i] = A[x + i][y + j];

    return;
}