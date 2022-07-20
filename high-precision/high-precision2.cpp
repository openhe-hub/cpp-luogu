#include <bits/stdc++.h>

#define N 500001
using namespace std;
string str;
long long b, r=0, n=1, weight[N], len, res[N];

int main() {
    cin >> str >> b;
    len = str.size();
    for (int i = 1; i <= len; ++i) {
        weight[i] = str[i - 1] - '0';
    }
    for (int i = 1; i <= len; ++i) {
        r = r * 10 + weight[i];
        res[i] = r / b;
        r = r % b;
    }
    while (res[n] == 0 && n < len) n++;
    for (int i = n; i <= len; ++i) {
        cout << res[i];
    }
    cout << endl;
    return 0;
}