#include <bits/stdc++.h>

#define N 5005
#define M 500005
#define MOD 80112002
using namespace std;

int n, m;

vector<int> graph[N];
queue<int> q;
int num[N], in[N], out[N], res = 0;

void topoSort() {
    while (!q.empty()) {
        int node = q.front();
        q.pop();
        for (int i = 0; i < graph[node].size(); i++) {
            int next = graph[node][i];
            num[next] = (num[next] + num[node]) % MOD;
            if (--in[next] == 0) q.push(next);
        }
        graph[node].clear();
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= m; ++i) {
        int a, b;
        cin >> a >> b;
        graph[b].push_back(a);
        in[a]++;
        out[b]++;
    }
    for (int i = 1; i <= n; ++i) {
        if (in[i] == 0){
            q.push(i);
            num[i]=1;
        }
    }
    topoSort();
    for (int i = 1; i <= n; ++i) {
        if (out[i] == 0) res = (res + num[i]) % MOD;
    }
    cout << res << endl;
    return 0;
}