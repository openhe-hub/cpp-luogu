#include <bits/stdc++.h>
//luogu 6175
#define N 105
#define INF 0X3f3f3f3f
typedef long long ll;
using namespace std;

int n, m;
ll f[N][N], dis[N][N], ans = INF;

/*
 * 时间复杂度：O(n^3)
 * 适用于任何图（有向无向，正权负权,不能有负权环）
 * */
int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (j != i) f[i][j] = INF, dis[i][j] = INF;
        }
    }
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        dis[u][v] = w, dis[v][u] = w;
        f[u][v] = w, f[v][u] = w;
    }
    for (int k = 1; k <= n; ++k) {
        for (int i = 1; i < k; i++) {
            for (int j = i + 1; j < k; j++) {
                ans = min(ans, f[i][j] + dis[i][k] + dis[k][j]);
            }
        }//枚举最小环，i,j必须在 k之前
        for (int i = 1; i <= n; ++i) {
            for (int j = 1; j <= n; ++j) {
                f[i][j] = min(f[i][j], f[i][k] + f[k][j]);
            }
        }
    }
    if (ans==INF) cout <<"No solution."<< endl;
    else cout <<ans<< endl;
    return 0;
}