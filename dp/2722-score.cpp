#include <iostream>

#define N 10005
using namespace std;

int weight[N], val[N], dp[N], m, n;

int main() {
    cin >> m >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> val[i] >> weight[i];
    }
    for (int i = 1; i <= n; i++) {
        for (int j = weight[i]; j <= m; j++) {
            dp[j] = max(dp[j], dp[j - weight[i]] + val[i]);
        }
    }
    cout << dp[m] << endl;
    return 0;
}