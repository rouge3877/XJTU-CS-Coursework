#ifndef NODE_H
#define NODE_H

class Node
{
public:
    Node(int coef, int exp, Node *next = nullptr);

public:
    int _coef;
    int _exp;
    Node *_next;
};

#endif // NODE_H