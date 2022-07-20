#include <bits/stdc++.h>

#define N 10001
using namespace std;

int h1, h2, m1, m2;
int t, n, weight[N], val[N], num[N], dp[N];

void calc() {
    t = (h2 - h1) * 60 + (m2 - m1);
}

int main() {
    scanf("%d:%d %d:%d %d", &h1, &m1, &h2, &m2, &n);
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i] >> val[i] >> num[i];
        num[i] = (num[i] == 0) ? 0x7fffffff : num[i];
    }
    calc();

    for (int i = 1; i <= n; ++i) {
        for (int j = t; j >= weight[i]; j--) {
            for (int k = 1; k <= num[i]; ++k) {
                if (j - k * weight[i] >= 0) dp[j] = max(dp[j], dp[j - k * weight[i]] + k * val[i]);
                else break;
            }
        }
    }

    cout << dp[t] << endl;
    return 0;
}