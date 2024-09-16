#include "Node.h"
#include "Polynomial.h"
#include <iostream>

// 构造函数和析构函数
Node::Node(int coef, int exp, Node *next)
    : _coef(coef), _exp(exp), _next(next) {}

Polynomial::Polynomial() : _head(new Node(0, 0, nullptr)) {}

Polynomial::~Polynomial()
{
    Node *p = _head;
    while (p != nullptr) {
        Node *q = p;
        p = p->_next;
        delete q;
    }
}

// 方法实现
void Polynomial::insertTerm(int coef, int exp)
{
    if (coef == 0)
        return;

    Node *p = _head;
    while (p->_next != nullptr && p->_next->_exp > exp) {
        p = p->_next;
    }
    if (p->_next != nullptr && p->_next->_exp == exp) {
        p->_next->_coef += coef;
        if (p->_next->_coef == 0) {
            Node *q = p->_next;
            p->_next = q->_next;
            delete q;
            _head->_coef--;
        }
    } else {
        p->_next = new Node(coef, exp, p->_next);
        _head->_coef++;
    }
}

double Polynomial::calcExp(double x, int exp)
{
    double result = 1;
    for (int i = 0; i < exp; i++) {
        result *= x;
    }
    return result;
}

void Polynomial::readFromFile(const char *filename)
{
    FILE *file = fopen(filename, "r");

    if (!file) {
        fprintf(stderr, "Unable to open file.\n");
        exit(1);
    }

    char line[1024];
    while (fgets(line, sizeof(line), file)) {
        char *p = line;
        int sign = 1;
        while (*p) {
            while (*p == ' ')
                ++p; // 跳过空白字符
            int coef = 0, exp = 0;
            if (*p == '-') { // 处理负号
                sign = -1;
                ++p;
            } else if (*p == '+') { // 处理正号
                sign = 1;
                ++p;
            }
            while (*p >= '0' && *p <= '9') { // 系数
                coef = coef * 10 + (*p - '0');
                ++p;
            }
            coef *= sign;

            if (*p == '*') { // 处理乘号
                ++p;
                if (*p == 'x' || *p == 'X') {
                    ++p;
                    if (*p == '^') { // 乘幂号，指数应该跟在后面
                        ++p;
                        while (*p >= '0' && *p <= '9') { // 指数
                            exp = exp * 10 + (*p - '0');
                            ++p;
                        }
                    } else { // 没有指数时，指数应该为1
                        exp = 1;
                    }
                } else { // 错误，应该是x
                    fprintf(stderr, "Error in input format.\n");
                    exit(1);
                }
            } else if (*p == 'x' || *p == 'X') { // 如果没有系数，系数应该为1
                coef = sign;
                ++p;
                if (*p == '^') { // 乘幂号，指数应该跟在后面
                    ++p;
                    while (*p >= '0' && *p <= '9') { // 指数
                        exp = exp * 10 + (*p - '0');
                        ++p;
                    }
                } else { // 如果没有指数，指数应该为1
                    exp = 1;
                }
            }

            // 插入项，同时如果系数为0，跳过
            if (coef != 0) {
                Node *cur = _head;
                while (cur->_next && cur->_next->_exp > exp)
                    cur = cur->_next;
                Node *newNode = new Node(coef, exp);
                newNode->_next = cur->_next;
                cur->_next = newNode;
                _head->_coef++;
            }
        }
    }

    fclose(file);
}

void Polynomial::outputPoly(FILE *outputFile)
{

    fprintf(outputFile, "%d", _head->_coef);
    Node *p = _head->_next;
    while (p != nullptr) {
        fprintf(outputFile, ",%d,%d", p->_coef, p->_exp);
        p = p->_next;
    }
    fprintf(outputFile, "\n");
}

Polynomial *Polynomial::addPoly(Polynomial &poly1, Polynomial &poly2)
{
    Polynomial *poly = new Polynomial();
    Node *p1 = poly1._head->_next;
    Node *p2 = poly2._head->_next;
    while (p1 != nullptr && p2 != nullptr) {
        if (p1->_exp > p2->_exp) {
            poly->insertTerm(p1->_coef, p1->_exp);
            p1 = p1->_next;
        } else if (p1->_exp < p2->_exp) {
            poly->insertTerm(p2->_coef, p2->_exp);
            p2 = p2->_next;
        } else {
            poly->insertTerm(p1->_coef + p2->_coef, p1->_exp);
            p1 = p1->_next;
            p2 = p2->_next;
        }
    }
    while (p1 != nullptr) {
        poly->insertTerm(p1->_coef, p1->_exp);
        p1 = p1->_next;
    }
    while (p2 != nullptr) {
        poly->insertTerm(p2->_coef, p2->_exp);
        p2 = p2->_next;
    }
    return poly;
}

Polynomial *Polynomial::subPoly(Polynomial &poly1, Polynomial &poly2)
{
    Polynomial *poly = new Polynomial();
    Node *p1 = poly1._head->_next;
    Node *p2 = poly2._head->_next;
    while (p1 != nullptr && p2 != nullptr) {
        if (p1->_exp > p2->_exp) {
            poly->insertTerm(p1->_coef, p1->_exp);
            p1 = p1->_next;
        } else if (p1->_exp < p2->_exp) {
            poly->insertTerm(-p2->_coef, p2->_exp);
            p2 = p2->_next;
        } else {
            poly->insertTerm(p1->_coef - p2->_coef, p1->_exp);
            p1 = p1->_next;
            p2 = p2->_next;
        }
    }
    while (p1 != nullptr) {
        poly->insertTerm(p1->_coef, p1->_exp);
        p1 = p1->_next;
    }
    while (p2 != nullptr) {
        poly->insertTerm(-p2->_coef, p2->_exp);
        p2 = p2->_next;
    }
    return poly;
}

double Polynomial::calcPoly(double x)
{
    double result = 0;
    Node *p = _head->_next;
    while (p != nullptr) {
        result += p->_coef * calcExp(x, p->_exp);
        p = p->_next;
    }
    return result;
}
