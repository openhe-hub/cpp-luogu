#include <bits/stdc++.h>
#define N 205
using namespace std;
int a[N], dp1[N][N], dp2[N][N], sum[N];
int n, min_x = 0x7fffffff, max_x;


void input() {
    cin >> n;
    for (int i = 1; i <= n; i++) cin >> a[i], a[i + n] = a[i];
    for (int i = 1; i <= 2 * n; i++) sum[i] = sum[i - 1] + a[i];
    memset(dp1, 0x3f3f3f3f, sizeof(dp1));
    for (int i = 1; i <= 2 * n; i++) dp1[i][i] = 0;
}

void dp() {
    for (int j = 2; j <= 2 * n; j++)
        for (int i = j - 1; i >= 1; i--) {
            for (int k = i; k < j; k++) {
                dp1[i][j] = min(dp1[i][j], dp1[i][k] + dp1[k + 1][j] + sum[j] - sum[i - 1]);
                dp2[i][j] = max(dp2[i][j], dp2[i][k] + dp2[k + 1][j] + sum[j] - sum[i - 1]);
            }
        }
}

void output() {
    for (int i = 1; i <= n; i++)
        min_x = min(min_x, dp1[i][i + n - 1]), max_x = max(max_x, dp2[i][i + n - 1]);
    cout << min_x << endl << max_x << endl;
}

int main() {
    input();
    dp();
    output();
    return 0;
}