#include <bits/stdc++.h>

#define N 21
using namespace std;


int main() {
    vector<int> graph[N];
    int num[N], dp[N];
    vector<int> track[N];
    int n, res = 0, pos;
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> num[i];
    }
    for (int i = 1; i <= n - 1; ++i) {
        for (int j = 1; j <= n - i; ++j) {
            int to;
            cin >> to;
            if (to == 1) graph[i].push_back(j + i);
        }
    }

    dp[n] = num[n];
    track[n].push_back(n);
    for (int i = n - 1; i >= 1; i--) {
        int m = 0, t = -1;
        for (int j = 0; j < graph[i].size(); ++j) {
            m = max(m, dp[graph[i][j]]);
            if (m == dp[graph[i][j]]) t = graph[i][j];
        }
        dp[i] = m + num[i];
        track[i].push_back(i);
        if (t != -1) {
            for (int j = 0; j < track[t].size(); ++j) {
                track[i].push_back(track[t][j]);
            }
        }
    }

    for (int i = 1; i <= n; ++i) {
        res = max(res, dp[i]);
        if (res == dp[i]) pos = i;
    }

    for (int i = 0; i < track[pos].size(); ++i) {
        cout << track[pos][i] << " ";
    }
    cout << endl << res << endl;
    return 0;
}