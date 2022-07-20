#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>

#define N 100001
using namespace std;

int n, m, res[N];
vector<int> graph[N];
bool maxflow[N];

void dfs(int node, int num) {
    if (maxflow[node]) return;
    maxflow[node] = true;
    res[node] = num;
    for (int i = 0; i < graph[node].size(); ++i) {
        dfs(graph[node][i], num);
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= m; ++i) {
        int a, b;
        cin >> a >> b;
        graph[b].push_back(a);
    }

    for (int i = 1; i <= n; ++i) {
        maxflow[i] = false;
    }

    for (int i = n; i >= 1; i--) {
        dfs(i, i);
    }

    for (int i = 1; i <= n; ++i) {
        cout << res[i] << " ";
    }
    return 0;
}