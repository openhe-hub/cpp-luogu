#include <bits/stdc++.h>
//acwing 10
#define N 105
using namespace std;

struct Edge {
    int from, to;
};

int n, v, dp[N][N], vi[N], wi[N], root;
vector<Edge> graph[N];

void dfs(int s) {
    for (int i = vi[s]; i <= v; i++) dp[s][i] = wi[s];//choose root
    for (int i = 0; i < graph[s].size(); i++) {
        int child = graph[s][i].to;
        dfs(child);//dfs child root fist
        for (int j = v; j >= vi[s]; j--) {//01-bag Reverse traversal(j>=vi[s])
            for (int k = 0; k <= j - vi[s]; k++) {//k=0,not choose;k>0,choose and allocate k to child node
                dp[s][j] = max(dp[s][j], dp[s][j - k] + dp[child][k]);
            }
        }
    }
}

int main() {
    cin >> n >> v;
    for (int i = 1; i <= n; ++i) {
        int p;
        cin >> vi[i] >> wi[i] >> p;
        if (p == -1) root = i;
        else graph[p].push_back({p, i});
    }
    dfs(root);
    cout << dp[root][v] << endl;
    return 0;
}