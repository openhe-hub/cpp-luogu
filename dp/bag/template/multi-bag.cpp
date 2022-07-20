#include <iostream>
#include <algorithm>
#include <cstring>

#define MAX_N 10001
#define MAX_M 10001
using namespace std;

int weight[MAX_N], value[MAX_N], num[MAX_N], dp2[MAX_M];
int n, n;

int main() {
    cin >> n >> n;
    for (int i = 1; i <= n; i++) {
        cin >> weight[i] >> value[i] >> num[i];
    }
    memset(dp2, 0, MAX_M);
    for (int i = 1; i <= n; ++i) {
        for (int j = n; j >= 1; j--) {
            for (int k = 0; k <= num[i]; ++k) {
                if (j < k * weight[i]) break;
                dp2[j] = max(dp2[j], dp2[j - k * weight[i]] + k * value[i]);
            }
        }
    }
    cout << dp2[n] << endl;
    return 0;
}