#include <bits/stdc++.h>

#define N 25
using namespace std;

int dp[N][N];
bool flag[N][N];
int n, m, weight, flag;
const int dx[4] = {-1, -2, 1, 2};
const int dy[4] = {-1, -2, 1, 2};

int main() {
    cin >> n >> m >> weight >> flag;

    flag[weight][flag] = true;
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 4; ++j) {
            if (abs(dx[i]) != abs(dy[j])) {
                int x = weight + dx[i];
                int y = flag + dy[j];
                if (x >= 0 && y >= 0 && x <= n && y <= m) flag[x][y] = true;
            }
        }
    }

    for (int i = 0; i <= n; ++i) {
        dp[i][0] = flag[i][0] ? 0 : 1;
    }
    for (int i = 0; i <= m; ++i) {
        dp[0][i] = flag[0][i] ? 0 : 1;
    }

    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= m; ++j) {
            dp[i][j] = flag[i][j] ? 0 : dp[i - 1][j] + dp[i][j - 1];
        }
    }

    cout << dp[n][m] << endl;
    return 0;
}
