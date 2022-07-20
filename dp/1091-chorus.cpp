#include <bits/stdc++.h>

#define N 101
using namespace std;


int main() {
    int dp1[N], dp2[N], height[N], res = 0, n;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> height[i];
        dp1[i]=1;
        dp2[i]=1;
    }

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < i; ++j) {
            if (height[j] < height[i]) {
                dp1[i] = max(dp1[i], dp1[j] + 1);
            }
        }
    }

    for (int i = n - 1; i >= 0; i--) {
        for (int j = n - 1; j > i; j--) {
            if (height[j] < height[i]) {
                dp2[i] = max(dp2[i], dp2[j] + 1);
            }
        }
    }

    for (int i = 0; i < n; ++i) {
        res = max(dp1[i] + dp2[i] - 1, res);
    }

    cout << n - res << endl;

    return 0;
}