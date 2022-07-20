#include <bits/stdc++.h>
#define N 101
using namespace std;

vector<int> graph[N], order;
queue<int> q;
int in[N];
int m, n;

void topoSort() {
    for (int i = 1; i <= n; ++i) {
        if (in[i] == 0) q.push(i);
    }
    while (!q.empty()) {
        int cnt = q.front();
        order.push_back(cnt);
        q.pop();
        for (int i = 0; i < graph[cnt].size(); ++i) {
            if (--in[graph[cnt][i]] == 0) q.push(graph[cnt][i]);
        }
    }
}

int main() {
    cin >> n >> m;
    while (true) {
        int a, b;
        cin >> a >> b;
        if (a == 0 && b == 0) break;
        graph[a].push_back(b);
        in[b]++;
    }
    topoSort();
    for (int i = 0; i < order.size(); i++) {
        cout << order[i] << " ";
    }
    return 0;
}