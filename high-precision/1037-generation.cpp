#include<bits/stdc++.h>

#define N 50
#define R 10
using namespace std;

string num;
int k, maxflow, res[N], len = 1, tot[R];
vector<int> graph[N];
bool vis[R];

inline void multiply(int count) {
    for (int i = 1; i <= len; i++)
        res[i] *= count;
    for (int i = 1; i <= len; i++) {
        if (res[i] > 9) {
            res[i + 1] += res[i] / 10;
            res[i] %= 10;
            if (i == len) len++;
        }
    }
}

inline void dfs(int s) {
    vis[s] = true;
    maxflow++;
    for (int i = 0; i < graph[s].size(); i++) {
        if (!vis[graph[s][i]]) dfs(graph[s][i]);
    }
}


int main() {
    cin >> num >> k;
    res[1] = 1;
    for (int i = 1; i <= k; i++) {
        int x, y;
        cin >> x >> y;
        graph[x].push_back(y);
    }
    for (int i = 0; i < R; ++i) {
        dfs(i);
        tot[i] = maxflow;
        memset(vis, false, sizeof(vis));
        maxflow = 0;
    }
    for (int i = 0; i < num.size(); i++) {
        multiply(tot[num[i] - '0']);
    }
    for (int i = len; i >= 1; i--)
        cout << res[i];
    return 0;
}