//
// Created by william on 8/26/2020.
//
#include <iostream>
#include <algorithm>
#include <climits>
#include <vector>

using namespace std;

struct Node {
    int value;
    vector<int> edges;
};

int _max = INT_MAX;


int dfs(int, vector<Node>, int, vector<bool>);

void reset(vector<bool> &);

int main() {
    //1. build tree
    int n;
    cin >> n;
    vector<Node> graph(n + 1);
    vector<bool> is_visited(n + 1);
    for (int i = 1; i <= n; ++i) {
        int left, right;
        cin >> graph[i].value;
        cin >> right >> left;
        graph[i].edges.push_back(right);
        graph[i].edges.push_back(left);
        if (right != 0) {
            graph[right].edges.push_back(i);
        }
        if (left != 0) {
            graph[left].edges.push_back(i);
        }
    }
    //2. dfs
    for (int i = 1; i <= n; ++i) {
        reset(is_visited);
        _max = min(_max, dfs(i, graph, 0, is_visited));
    }
    //3. return
    cout << _max << endl;
    return 0;
}

int dfs(int index, vector<Node> graph, int depth, vector<bool> is_visited) {
    if (index == 0 || is_visited[index]) {
        return 0;
    } else {
        is_visited[index] = true;
        int distance = depth * graph[index].value;
        for (int i = 0; i < graph[index].edges.size(); ++i) {
            distance += dfs(graph[index].edges[i], graph, depth + 1, is_visited);
        }
        return distance;
    }
}

void reset(vector<bool> &is_visited) {
    for (int i = 0; i < is_visited.size(); ++i) {
        is_visited[i]= false;
    }
}


