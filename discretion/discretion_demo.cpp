#include<bits/stdc++.h>

using namespace std;

int m, n, k, x[100100], y[100100], c[100100], flag[1001000];

int main() {
    cin >> n;
    for (int i = 1; i <= n; i++) {
        cin >> x[i] >> y[i];
        c[++m] = x[i];
        c[++m] = y[i];
    }
    sort(c + 1, c + 1 + m);
    m = unique(c + 1, c + 1 + m) - c - 1;
    for (int i = 1; i <= n; i++) {
        x[i] = lower_bound(c + 1, c + 1 + m, x[i]) - c;
        y[i] = lower_bound(c + 1, c + 1 + m, y[i]) - c;
        flag[x[i]]++;
        flag[y[i]]--;
    }
    int sum = 0, ans = 0;
    for (int i = 1; i <= m; i++) {
        sum += flag[i];
        if (sum > 0)ans += c[i + 1] - c[i];
    }
    cout << ans;
}
