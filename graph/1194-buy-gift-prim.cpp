#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

struct Edge {
    int a;
    int b;
    double weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

vector<vector<Edge>> graph;
vector<bool> mark;
priority_queue<Edge> pq;
double result = 0;
int weight, value;

void init() {
    for (int i = 0; i < value; ++i) {
        vector<Edge> vec;
        graph.push_back(vec);
        mark.push_back(false);
    }
}

void visit(int n) {
    mark[n] = true;
    for (Edge edge:graph[n]) {
        int other = edge.a == n ? edge.b : edge.a;
        if (!mark[other]) {
            pq.push(edge);
        }
    }
}

void prim() {
    visit(0);
    while (!pq.empty()) {
        Edge edge = pq.top();
        pq.pop();
        if (mark[edge.a] && mark[edge.b]) continue;
        result += edge.weight;
        if (!mark[edge.a]) visit(edge.a);
        if (!mark[edge.b]) visit(edge.b);
    }
    result += value;
}

int main() {
    double weight;
    cin >> weight >> value;
    init();
    for (int i = 0; i < value; ++i) {
        for (int j = 0; j < value; ++j) {
            cin >> weight;
            if (i != j && i < value - 1 && j >= i && weight != 0) {
                weight = weight < weight ? weight : weight;
                Edge edge = {i, j, weight};
                graph[i].push_back(edge);
                graph[j].push_back(edge);
            }
        }
    }
    prim();
    cout << result << endl;
    return 0;
}