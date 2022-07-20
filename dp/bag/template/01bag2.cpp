#include <iostream>
#include <algorithm>
#include <cstring>

#define MAX_M 201
#define MAX_N 101
using namespace std;

int main() {
    int m, n;
    int weight[MAX_N], value[MAX_N];
    int dp[MAX_M];
    cin >> m >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i] >> value[i];
    }
    memset(dp, 0, MAX_M);
    for (int i = 1; i <= n; ++i) {
        for (int j = m; j >= weight[i]; j--) {
            dp[j] = max(dp[j], dp[j - weight[i]] + value[i]);
        }
    }
    cout << dp[m] << endl;
    return 0;
}