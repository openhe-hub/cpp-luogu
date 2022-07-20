//
// Created by william on 8/26/2020.
//
#include <iostream>

using namespace std;

struct Node {
    int left;
    int right;
};

int get_height(int node, Node *tree);

int main() {
    int n;
    cin >> n;
    Node *tree = new Node[n + 1];

    for (int i = 1; i <= n; ++i) {
        cin >> tree[i].left >> tree[i].right;
    }

    cout << get_height(1, tree) << endl;
    return 0;
}

int get_height(int node, Node *tree) {
    int left_height, right_height;
    if (tree[node].right == 0 && tree[node].left == 0) {
        return 1;
    }
    right_height = get_height(tree[node].right, tree);
    left_height = get_height(tree[node].left, tree);
    return (right_height > left_height) ? (right_height + 1) : (left_height + 1);
}

