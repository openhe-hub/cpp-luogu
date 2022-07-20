#include <iostream>
#include <algorithm>

#define MAXN 100001

using namespace std;
int n = 0, weight[MAXN], dp1[MAXN], dp2[MAXN];

int main() {
    int ans1 = 0, ans2 = 0;
    while (cin >> weight[n++]);

    for (int i = 0; i < n; i++) {
        dp1[i] = 1;
        for (int j = 0; j < i; j++) {
            if (weight[j] >= weight[i]) {
                dp1[i] = max(dp1[i], dp1[j] + 1);
            }
        }
        ans1 = max(ans1, dp1[i]);
    }

    for (int i = 0; i < n; i++) {
        dp2[i] = 1;
        for (int j = 0; j < i; j++) {
            if (weight[j] < weight[i]) {
                dp2[i] = max(dp2[i], dp2[j] + 1);
            }
        }
        ans2 = max(ans2, dp2[i]);
    }
    cout << ans1 - 1 << endl;
    cout << ans2 << endl;
    return 0;
}