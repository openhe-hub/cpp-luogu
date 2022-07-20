//
// Created by william on 8/26/2020.
//
#include <iostream>
#include <string>

using namespace std;

struct Node {
    char value;
    Node *left;
    Node *right;
};

Node *rebuild(string, string);

void pre_order(Node *node);

string result;
Node *root;

int main() {
    string in_order, post_order;
    cin >> in_order >> post_order;
    root = rebuild(in_order, post_order);
    pre_order(root);
    cout << result << endl;
    return 0;
}

Node *rebuild(string in_order, string post_order) {
    if (in_order.length() == 0 && post_order.length() == 0) {
        return NULL;
    }
    Node *curr = new Node;
    curr->value = post_order[post_order.length() - 1];
    int index = in_order.find(curr->value);
    curr->left = rebuild(in_order.substr(0, index), post_order.substr(0, index));
    curr->right = rebuild(in_order.substr(index + 1), post_order.substr(index, post_order.length() - 1 - index));
    return curr;
}

void pre_order(Node *node) {
    if (node == nullptr) {
        return;
    }
    result += node->value;
    pre_order(node->left);
    pre_order(node->right);
}



