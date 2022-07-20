#include <iostream>
#include <vector>
#include <algorithm>

#define N 6001
using namespace std;

int n;
int happiness[N];
vector<int> children[N];
int dp[N][2];
int num[N];

void dfs(int root) {
    dp[root][0] = 0;
    dp[root][1] = happiness[root];
    for (int i = 0; i < children[root].size(); ++i) {
        int child = children[root][i];
        dfs(child);
        dp[root][0] += max(dp[child][0], dp[child][1]);
        dp[root][1] += dp[child][0];
    }
}

int main() {
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> happiness[i];
    }
    for (int i = 1; i <= n - 1; ++i) {
        int a, b;
        cin >> a >> b;
        children[b].push_back(a);
        num[a]++;
    }

    for (int i = 1; i <= n; ++i) {
        if (num[i] == 0) {
            dfs(i);
            cout << max(dp[i][0], dp[i][1]) << endl;
            break;
        }
    }
    return 0;
}