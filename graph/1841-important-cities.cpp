#include <bits/stdc++.h>

#define N 205
#define INF 0x3f3f3f3f
typedef long long ll;
using namespace std;

int n, m, city[N][N];
ll f[N][N];
priority_queue<int> pq;

void floyd() {
    for (int k = 1; k <= n; k++) {
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                if (i!=j&&j!=k) {
                    if (f[i][j] > f[i][k] + f[k][j]) {
                        f[i][j] = f[i][k] + f[k][j];
                        city[i][j] = k;
                    } else if (f[i][j] == f[i][k] + f[k][j]) {
                        city[i][j] = -1;
                    }
                }
            }
        }
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        f[i][i]=0;
        for (int j = 1; j <= n; ++j) {
            if (j != i) {
                f[i][j] = INF;
            }
        }
    }
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        f[u][v] = w, f[v][u] = w;
    }
    floyd();
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (city[i][j] && city[i][j] != -1) pq.push(city[i][j]);
        }
    }
    while (!pq.empty()) {
        cout << pq.top() << " ";
        pq.pop();
    }
    return 0;
}