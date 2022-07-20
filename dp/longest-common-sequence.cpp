#include <iostream>
#include <algorithm>
#define LEN 1000
using namespace std;

int main() {
    int n, list1[LEN], list2[LEN], dp[LEN + 1][LEN + 1];
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> list1[i];
    }
    for (int i = 0; i < n; ++i) {
        cin >> list2[i];
    }

    for (int i = 0; i <= n; ++i) {
        dp[i][0] = 0;
    }

    for (int i = 0; i <= n; ++i) {
        dp[0][1] = 0;
    }

    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= n; ++j) {
            if (list1[i - 1] == list2[j - 1]) {
                dp[i][j] = max(dp[i - 1][j], max(dp[i][j - 1], dp[i - 1][j - 1] + 1));
            } else {
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);
            }
        }
    }
    cout << dp[n][n] << endl;
    return 0;
}