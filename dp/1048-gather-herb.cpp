#include <iostream>
#include <algorithm>
#include <cstring>
#define MAX_T 1001
#define MAX_M 101
using namespace std;

int weight[MAX_N], value[MAX_N], dp2[MAX_T];
int t, n;

int main() {
    cin >> t >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i] >> value[i];
    }
    memset(dp2, 0, MAX_T);
    for (int i = 1; i <= n; ++i) {
        for (int j = t; j >= weight[i]; j--) {
            dp2[j] = max(dp2[j], dp2[j - weight[i]] + value[i]);
        }
    }
    cout << dp2[t] << endl;
    return 0;
}