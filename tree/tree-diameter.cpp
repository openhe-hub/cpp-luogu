#include <bits/stdc++.h>
//luogu U76533
#define N 300005
using namespace std;

struct Edge {
    int from, to, weight;
};
int n, c = 1, dis[N], vis[N];
vector<Edge> graph[N];

void dfs(int u) {
    vis[u] = 1;
    for (int i = 0; i < graph[u].size(); i++) {
        int v = graph[u][i].to;
        if (!vis[v]) {
            int weight = graph[u][i].weight;
            dis[v] = dis[u] + weight;
            if (dis[v] > dis[c]) c = v;
            dfs(v);
        }
    }
}

void solve() {
    for (int i = 1; i <= n; i++) {
        vis[i] = 0;
        dis[i] = 0;
    }
    dfs(c);
}


int main() {
    cin >> n;
    for (int i = 1; i <= n - 1; ++i) {
        int from, to, weight;
        cin >> from >> to >> weight;
        graph[from].push_back({from, to, weight});
        graph[to].push_back({to, from, weight});
    }
    solve();
    solve();
    cout << dis[c] << endl;
    return 0;
}