#include <iostream>
#include <vector>
#include <queue>

using namespace std;

struct Edge {
    int a;
    int b;
    int weight;
};

vector<vector<Edge>> graph;
vector<bool> mark;
priority_queue<Edge> pq;

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int start, v, result = 0;

bool is_connected();

void dfs(int u);

int prim();

void visit(int v);


int main() {
    int a, b, weight;
    cin >> start >> v;
    for (int i = 0; i < start; ++i) {
        vector<Edge> vec;
        graph.push_back(vec);
    }

    for (int i = 0; i < v; ++i) {
        cin >> a >> b >> weight;
        Edge edge = {--a, --b, weight};
        graph[a].push_back(edge);
        graph[b].push_back(edge);
    }

    if (!is_connected()) {
        cout << "orz" << endl;
    } else {
        cout << prim() << endl;
    }
    return 0;
}

bool is_connected() {
    for (int i = 0; i < start; ++i) {
        mark.push_back(false);
    }
    dfs(0);
    for (int i = 0; i < start; ++i) {
        if (!mark[i]) {
            return false;
        }
    }
    return true;
}

void dfs(int v) {
    mark[v] = true;
    for (Edge edge:graph[v]) {
        int index = edge.a == v ? edge.b : edge.a;
        if (!mark[index]) {
            dfs(index);
        }
    }
}

int prim() {
    for (int i = 0; i < start; ++i) {
        mark[i] = false;
    }
    visit(0);
    while (!pq.empty()) {
        Edge edge = pq.top();
        pq.pop();
        if (mark[edge.a] && mark[edge.b]) {
            continue;
        } else {
            result += edge.weight;
            if (!mark[edge.a]) {
                visit(edge.a);
            }
            if (!mark[edge.b]) {
                visit(edge.b);
            }
        }
    }
    return result;
}

void visit(int v) {
    mark[v] = true;
    for (Edge edge:graph[v]) {
        int index = edge.a == v ? edge.b : edge.a;
        if (!mark[index]) {
            pq.push(edge);
        }
    }
}