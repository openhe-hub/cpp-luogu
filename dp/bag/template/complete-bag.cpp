#include <iostream>
#include <algorithm>
#include <cstring>

#define MAX_N 1001
#define MAX_M 1001
using namespace std;

int weight[MAX_N], value[MAX_N], dp2[MAX_M];

int main() {
    int m, n;
    cin >> m >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i] >> value[i];
    }
    memset(dp2, 0, MAX_M);
    for (int i = 1; i <= n; ++i) {
        for (int j = weight[i]; j <= m; j++) {
            dp2[j] = max(dp2[j], dp2[j - weight[i]] + value[i]);
        }
    }
    cout << dp2[m] << endl;
    return 0;
}