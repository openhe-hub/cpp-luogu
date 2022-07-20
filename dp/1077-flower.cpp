#include <bits/stdc++.h>

#define MOD 1000007
#define N 101
using namespace std;

int dp[N][N], n, m, kind[N];

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        cin >> kind[i];
    }
    dp[0][0] = 1;
    for (int i = 1; i <= n; ++i) {
        for (int j = 0; j <= m; ++j) {
            for (int k = 0; k <= min(j, kind[i]); ++k) {
                dp[i][j] = (dp[i][j] + dp[i - 1][j - k]) % MOD;
            }
        }
    }
    cout << dp[n][m] << endl;
    return 0;
}