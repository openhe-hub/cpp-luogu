#include <iostream>
#include <vector>
#include <queue>

#define N 100001
using namespace std;

int m, n;
priority_queue<int, vector<int>, greater<int> > graph[N];
priority_queue<int, vector<int>, greater<int> > graph2[N];
queue<int> q;
bool maxflow[N];

void dfs(int node) {
    if (maxflow[node]) return;
    maxflow[node] = true;
    cout << node << " ";
    while (!graph[node].empty()) {
        int next = graph[node].top();
        graph[node].pop();
        dfs(next);
    }
}

void bfs() {
    maxflow[1]= true;
    int num = 1, temp = 0;
    while (!q.empty()) {
        for (int i = 0; i < num; ++i) {
            int node = q.front();
            q.pop();
            cout << node << " ";
            while (!graph2[node].empty()) {
                int next = graph2[node].top();
                graph2[node].pop();
                if (!maxflow[next]) {
                    q.push(next);
                    temp++;
                }
                maxflow[next]=true;
            }
        }
        num = temp;
        temp=0;
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= m; ++i) {
        int a, b;
        cin >> a >> b;
        graph[a].push(b);
        graph2[a].push(b);
    }

    for (int i = 1; i <= n; ++i) {
        maxflow[i] = false;
    }
    dfs(1);
    cout<< endl;

    for (int i = 1; i <= n; ++i) {
        maxflow[i] = false;
    }
    q.push(1);
    bfs();

    return 0;
}