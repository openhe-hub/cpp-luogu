#include <bits/stdc++.h>

#define N 510
typedef long long ll;
using namespace std;

int main() {
    int n;
    ll table[N][N];
    cin >> n;
    for (int i = 1; i < n; i++) {
        for (int j = i + 1; j <= n; j++) {
            int tmp;
            cin >> tmp;
            table[i][j] = table[j][i] = tmp;
        }
    }

    ll ans = 0;
    for (int i = 1; i <= n; i++) {
        sort(table[i] + 1, table[i] + n + 1);
        ans=max(ans,table[i][n-1]);
    }

    cout<<"1\n"<<ans<<endl;
    return 0;
}