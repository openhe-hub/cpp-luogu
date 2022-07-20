#include <bits/stdc++.h>
//01-bag
typedef long long ll;
using namespace std;

int main() {
    int n, sum;
    ll dp[400];
    cin >> n;
    if ((n * (n + 1) / 2) & 1) {
        cout << 0 << endl;
        return 0;
    }
    sum = (n * (n + 1)) / 4;

    memset(dp, 0, sizeof(dp));
    dp[0] = 1;
    for (int i = 1; i <= n; ++i) {
        for (int j = sum; j >= i; j--) {
            dp[j] += dp[j - i];
        }
    }
    cout << dp[sum] / 2 << endl;

    return 0;
}