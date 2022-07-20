#include <iostream>
#include <vector>
#include <algorithm>

#define N 301
using namespace std;

int n, m;
vector<int> children[N];
int score[N];
int dp[N][N];

void dfs(int root) {
    dp[root][1] = score[root];
    for (int i = 0; i < children[root].size(); ++i) {
        dfs(children[root][i]);
        for (int j = m; j > 0; j--) {
            for (int k = j - 1; k > 0; k--) {
                dp[root][j] = max(dp[root][j], dp[root][j - k] + dp[children[root][i]][k]);
            }
        }
    }
}


int main() {
    cin >> n >> m;
    m++;
    for (int i = 1; i <= n; i++) {
        int a, b;
        cin >> a >> b;
        children[a].push_back(i);
        score[i] = b;
    }
    dfs(0);
    cout << dp[0][m] << endl;
    return 0;
}