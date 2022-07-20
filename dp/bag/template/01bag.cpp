#include <iostream>
#include <algorithm>

#define MAX_M 201
#define MAX_N 101
using namespace std;

int main() {
    int m, n;
    int weight[MAX_N], value[MAX_N];
    int dp[MAX_N][MAX_M];
    cin >> m >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i] >> value[i];
    }
    for (int i = 1; i <= n; ++i) {
        for (int j = m; j >= 1; j--) {
            if (j >= weight[i]) {
                dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - weight[i]] + value[i]);
            } else {
                dp[i][j] = dp[i - 1][j];
            }
        }
    }
    cout << dp[n][m] << endl;
    return 0;
}