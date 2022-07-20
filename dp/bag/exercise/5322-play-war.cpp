#include <bits/stdc++.h>

#define N 105
#define M 20005
using namespace std;

int s, n, m, group[N][N], dp[M];

int main() {
    cin >> s >> n >> m;
    for (int i = 1; i <= s; ++i) {
        for (int j = 1; j <= n; ++j) {
            cin >> group[j][i];
        }
    }
    for (int i = 1; i <= n; ++i) {
        sort(group[i] + 1, group[i] + s + 1);
    }
    for (int i = 1; i <= n; ++i) {
        for (int j = m; j >= 1; j--) {
            for (int l = 1; l <= s; l++) {
                if (j > 2 * group[i][l]) {
                    dp[j] = max(dp[j], dp[j - 2 * group[i][l] - 1] + l * i);
                }
            }
        }
    }
    cout << dp[m] << endl;
    return 0;
}