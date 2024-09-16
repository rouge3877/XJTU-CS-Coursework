#include "poly.h"
#define _XOPEN_SOURCE 600
#include <time.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>

// 8 * 2 : about 0.995
void poly_optim(const double a[], double x, long degree, double *result)
{
    long i;
    double r1 = a[degree];
    double r2 = a[degree - 1];
    double r3 = a[degree - 2];
    double r4 = a[degree - 3];
    double r5 = a[degree - 4];
    double r6 = a[degree - 5];
    double r7 = a[degree - 6];
    double r8 = a[degree - 7];

    long start_index = degree - 8;
    long end_index = (degree - 7) % 16 - 1;

    double c1, c2, c3, c4, c5, c6, c7, c8;

    double x2 = x * x;
    double x4 = x2 * x2;
    double x8 = x4 * x4;
    double x16 = x8 * x8;

    for (i = start_index; i > end_index; i -= 16)
    {
        c1 = a[i] * x8;
        c2 = a[i - 1] * x8;
        c3 = a[i - 2] * x8;
        c4 = a[i - 3] * x8;
        c5 = a[i - 4] * x8;
        c6 = a[i - 5] * x8;
        c7 = a[i - 6] * x8;
        c8 = a[i - 7] * x8;

        r1 = r1 * x16;
        r2 = r2 * x16;
        r3 = r3 * x16;
        r4 = r4 * x16;
        r5 = r5 * x16;
        r6 = r6 * x16;
        r7 = r7 * x16;
        r8 = r8 * x16;

        c1 = a[i - 8] + c1;
        c2 = a[i - 9] + c2;
        c3 = a[i - 10] + c3;
        c4 = a[i - 11] + c4;
        c5 = a[i - 12] + c5;
        c6 = a[i - 13] + c6;
        c7 = a[i - 14] + c7;
        c8 = a[i - 15] + c8;

        r1 = r1 + c1;
        r2 = r2 + c2;
        r3 = r3 + c3;
        r4 = r4 + c4;
        r5 = r5 + c5;
        r6 = r6 + c6;
        r7 = r7 + c7;
        r8 = r8 + c8;
    }

    r1 = r1 * x4 * x2 * x + r2 * x4 * x2 + r3 * x4 * x + r4 * x4 + r5 * x2 * x + r6 * x2 + r7 * x + r8;

    for (i = end_index; i >= 0; i--)
        r1 = a[i] + r1 * x;

    *result = r1;
    return;
}

// 4 * 2 : about 1.058
// void poly_optim(const double a[], double x, long degree, double *result)
// {
//     long i;
//     double r1 = a[degree];
//     double r2 = a[degree - 1];
//     double r3 = a[degree - 2];
//     double r4 = a[degree - 3];

//     long start_index = degree - 4;
//     long end_index = (degree - 3) % 8 - 1;

//     double c1, c2, c3, c4;
//     double t1, t2, t3, t4;

//     double x2 = x * x;
//     double x4 = x2 * x2;
//     double x8 = x4 * x4;

//     for (i = start_index; i > end_index; i = i - 8)
//     {
//         c1 = a[i] * x4;
//         c2 = a[i - 1] * x4;
//         c3 = a[i - 2] * x4;
//         c4 = a[i - 3] * x4;

//         r1 = r1 * x8;
//         r2 = r2 * x8;
//         r3 = r3 * x8;
//         r4 = r4 * x8;

//         r1 = a[i - 4] + c1 + r1;
//         r2 = a[i - 5] + c2 + r2;
//         r3 = a[i - 6] + c3 + r3;
//         r4 = a[i - 7] + c4 + r4;

//     }

//     r1 = r1 * x * x2;
//     r1 = r1 + r4;
//     r2 = r2 * x2;
//     r3 = r3 * x;
//     r2 = r2 + r3;
//     r1 = r1 + r2;

//     for (i = end_index; i >= 0; i--)
//         r1 = a[i] + r1 * x;

//     *result = r1;
//     return;
// }

// 4 * 3 : about 1.186
// void poly_optim(const double a[], double x, long degree, double *result)
// {
//     long i;
//     double r1 = a[degree];
//     double r2 = a[degree - 1];
//     double r3 = a[degree - 2];
//     double r4 = a[degree - 3];

//     long start_index = degree - 4;
//     long end_index = (degree - 3) % 12;

//     double c1, c2, c3, c4;

//     double x2 = x * x;
//     double x4 = x2 * x2;
//     double x8 = x4 * x4;
//     double x12 = x8 * x4;

//     for (i = start_index; i >= end_index; i = i - 12)
//     {
//         r1 = r1 * x12;
//         r2 = r2 * x12;
//         r3 = r3 * x12;
//         r4 = r4 * x12;

//         c1 = a[i] * x8;
//         c2 = a[i - 1] * x8;
//         c3 = a[i - 2] * x8;
//         c4 = a[i - 3] * x8;

//         r1 = r1 + a[i - 8];
//         r2 = r2 + a[i - 9];
//         r3 = r3 + a[i - 10];
//         r4 = r4 + a[i - 11];

//         c1 = a[i - 4] * x4 + c1;
//         c2 = a[i - 5] * x4 + c2;
//         c3 = a[i - 6] * x4 + c3;
//         c4 = a[i - 7] * x4 + c4;

//         r1 = r1 + c1;
//         r2 = r2 + c2;
//         r3 = r3 + c3;
//         r4 = r4 + c4;
//     }

//     r1 = r1 * x * x2;
//     r2 = r2 * x2;
//     r3 = r3 * x;
//     r1 = r1 + r4;
//     r2 = r2 + r3;
//     r1 = r1 + r2;

//     for (i = end_index - 1; i >= 0; i--)
//         r1 = a[i] + r1 * x;

//     *result = r1;
//     return;
// }

// 2 * 4 : about 1.290
// void poly_optim(const double a[], double x, long degree, double *result)
// {
//     long i;
//     double r1 = a[degree];
//     double r2 = a[degree-1];

//     long start_index = degree - 2;
//     long end_index = (degree-1) % 8;

//     double c1, c2;
//     double a1, a2, a3, a4;
//     double b1, b2, b3, b4;

//     double x2 = x * x;
//     //double x3 = x * x * x;
//     double x4 = x * x * x * x;
//     double x5 = x * x * x * x * x;
//     double x6 = x * x * x * x * x * x;
//     double x7 = x * x * x * x * x * x * x;
//     double x8 = x * x * x * x * x * x * x * x;

//     for(i = start_index; i >= end_index; i = i - 8)
//     {

//         a1 = a[i] * x6;
//         c1 = a[i - 6] + a1;
//         b1 = a[i - 1] * x6;
//         c2 = a[i - 7] + b1;
//         a2 = a[i - 2] * x4;
//         b2 = a[i - 3] * x4;
//         a3 = a[i - 4] * x2;
//         b3 = a[i - 5] * x2;

//         c1 = c1 + a2;
//         c2 = c2 + b2;
//         c1 = c1 + a3;
//         c2 = c2 + b3;

//         r1 = c1 + r1 * x8;
//         r2 = c2 + r2 * x8;

//     }

//     r1 = r1 * x + r2;

//     for (i = end_index-1; i >= 0; i--)
//     {
//         r1 = a[i] + r1 * x;
//     }

//     *result = r1;
//     return;
// }

// 3*3 : about 1.086
// void poly_optim(const double a[], double x, long degree, double *result)
// {
//     long i;
//     double r1 = a[degree];
//     double r2 = a[degree-1];
//     double r3 = a[degree-2];

//     long start_index = degree - 3;
//     long end_index = (degree-2) % 9;

//     double a1, a2;
//     double b1, b2;
//     double c1, c2;

//     double x3 = x * x * x;
//     double x6 = x3 * x3;
//     double x9 = x3 * x6;

//     for(i = start_index; i >= end_index; i = i - 9)
//     {

//         a1 = a[i] * x6;
//         b1 = a[i - 1] * x6;
//         c1 = a[i - 2] * x6;

//         a2 = a[i - 3] * x3;
//         b2 = a[i - 4] * x3;
//         c2 = a[i - 5] * x3;

//         a1 = a[i - 6] + a1;
//         b1 = a[i - 7] + b1;
//         c1 = a[i - 8] + c1;

//         r1 = r1 * x9;
//         r2 = r2 * x9;
//         r3 = r3 * x9;

//         a1 = a1 + a2;
//         b1 = b1 + b2;
//         c1 = c1 + c2;

//         r1 = r1 + a1;
//         r2 = r2 + b1;
//         r3 = r3 + c1;

//     }

//     r1 = r1 * x * x + r2 * x + r3;

//     for (i = end_index-1; i >= 0; i--)
//     {
//         r1 = a[i] + r1 * x;
//     }

//     *result = r1;
//     return;
// }

void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time)
{
    double result;
    // 在计时前先执行一遍待测函数，从而调入所需的cache
    poly(a, x, degree, &result);
    poly(a, x, degree, &result);
    long delta_t = 0;
    int rep_times = 1000;
    struct timespec start_ts, end_ts;
    struct timespec test_ts;
    clock_gettime(CLOCK_REALTIME, &start_ts);
    for (int i = 0; i < rep_times; i++)
    {
        poly(a, x, degree, &result);
    }
    clock_gettime(CLOCK_REALTIME, &end_ts);
    delta_t += (end_ts.tv_sec - start_ts.tv_sec) * 1000000000L + (end_ts.tv_nsec - start_ts.tv_nsec);

    clock_gettime(CLOCK_REALTIME, &start_ts);
    for (int i = 0; i < rep_times; i++)
        clock_gettime(CLOCK_REALTIME, &test_ts);
    clock_gettime(CLOCK_REALTIME, &end_ts);
    delta_t -= (end_ts.tv_sec - start_ts.tv_sec) * 1000000000L + (end_ts.tv_nsec - start_ts.tv_nsec);

    *time = (double)delta_t / (double)rep_times;
}
