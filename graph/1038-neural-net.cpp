#include <iostream>
#include <vector>
#include <queue>

#define N 101
using namespace std;

struct Node {
    int from;
    int to;
    int weight;
};

vector<Node> graph[N];
queue<int> q;
int in[N], out[N], c[N], u[N], n, v;

void topoSort() {
    for (int i = 1; i <= n; ++i) {
        if (in[i] == 0) q.push(i);
    }
    while (!q.empty()) {
        int cnt = q.front();
        q.pop();
        for (int i = 0; i < graph[cnt].size(); ++i) {
            Node next = graph[cnt][i];
            if (c[next.from] > 0) c[next.to] += next.weight * c[next.from];
            if (--in[next.to] == 0) q.push(next.to);
        }
    }
}


int main() {
    cin >> n >> v;
    for (int i = 1; i <= n; ++i) {
        cin >> c[i] >> u[i];
        if (c[i]==0) c[i]-=u[i];
    }
    for (int i = 1; i <= v; ++i) {
        int from, to, weight;
        cin >> from >> to >> weight;
        in[to]++;
        out[from]++;
        Node node = {from, to, weight};
        graph[from].push_back(node);
    }
    topoSort();

    bool flag = false;
    for (int i = 1; i <= n; ++i) {
        if (out[i] == 0 && c[i] > 0) {
            cout << i << " " << c[i] << endl;
            flag = true;
        }
    }
    if (!flag) cout << "NULL" << endl;
    return 0;
}