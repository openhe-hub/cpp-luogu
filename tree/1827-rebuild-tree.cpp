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

Node *rebuild(string , string);

void pre_order(Node *node);

string result;
Node *root;

int main() {
    string in_order, pre_order;
    cin >> in_order >> pre_order;
    root = rebuild(in_order, pre_order);
    pre_order(root);
    cout << result << endl;
    return 0;
}

Node *rebuild(string in_order, string pre_order) {
    if (in_order.length()==0&&pre_order.length()==0){
        return NULL;
    }
    Node* curr=new Node;
    curr->value = pre_order[0];
    int index = in_order.find(curr->value);
    curr->left = rebuild(in_order.substr(0, index), pre_order.substr(1, index));
    curr->right = rebuild(in_order.substr(index + 1), pre_order.substr(index + 1));
    return curr;
}

void pre_order(Node *node) {
    if (node == nullptr) {
        return;
    }
    pre_order(node->left);
    pre_order(node->right);
    result += node->value;
}



