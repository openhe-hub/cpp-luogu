#include<bits/stdc++.h>
#pragma GCC optimize(2) //吸氧，要不然TLE一个点
#define N 65
#define M 32005
using namespace std;
int n, m, root=0;
int v[N], q[N];
int dp[N][N * N];
vector<int> graph[N];
bool flag=false;

inline void dfs(int u) {
    for (int i = v[u]; i <= m; i++) dp[u][i] = q[u];
    for (int i = 0; i < graph[u].size(); i++) {
        int child = graph[u][i];
        dfs(child);
        for (int j = m; j >= v[u]; j--)
            for (int k = 0; k <= j - v[u]; k++)
                dp[u][j] = max(dp[u][j], dp[u][j - k] + dp[child][k]);
    }
}

int main() {
    cin >> m >> n;
    m/=10;
    for (int i = 1; i <= n; i++) {
        int q;
        cin >> v[i] >> q[i] >> q;
        v[i]/=10;
        q[i] *= v[i];
        if (q == 0) graph[root].push_back(i);
        else graph[q].push_back(i);
    }
    dfs(root);
    printf("%d\n", dp[root][m]*10);
    return 0;
}