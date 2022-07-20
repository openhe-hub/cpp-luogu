#include<iostream>
#include<algorithm>
#define MAX_VAL 1e9

using namespace std;

int main() {
    int n, m, ans = MAX_VAL;
    int weight[100], value[100], dp[55001];
    cin >> n >> m;
    for (int i = 1; i <= m + 5000; i++) {
        dp[i] = MAX_VAL;
    }
    for (int i = 1; i <= n; i++) {
        cin >> weight[i] >> value[i];
    }
    for (int i = 1; i <= n; i++) {
        for (int j = weight[i]; j <= m + 5000; j++) {
            dp[j] = min(dp[j], dp[j - weight[i]] + value[i]);
        }
    }
    for (int i = m; i <= m + 5000; i++) {
        ans = min(ans, dp[i]);
    }
    cout << ans << endl;
    return 0;
}