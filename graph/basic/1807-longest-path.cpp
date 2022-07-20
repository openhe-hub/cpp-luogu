#include<bits/stdc++.h>

#define N 1501
#define M 50001
using namespace std;

int main() {
    int dis[N], u[M], v[M], w[M], n, m;
    cin >> n >> m;
    for (int i = 1; i <= n; i++) {
        dis[i] = i == 1 ? 0 : 0x7fffffff;
    }
    for (int i = 1; i <= m; i++) {
        cin >> u[i] >> v[i] >> w[i];
        w[i] = -w[i];
    }
    for (int i = 1; i <= n - 1; i++) {
        for (int j = 1; j <= m; j++) {
            dis[v[j]] = min(dis[v[j]], dis[u[j]] + w[j]);
        }
    }
    cout << -dis[n];
    return 0;
}