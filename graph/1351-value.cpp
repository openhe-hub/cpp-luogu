#include<bits/stdc++.h>

#define N 200005
using namespace std;

vector<int> graph[N];
int weight[200005];
int n, _max, max_x;


int main() {
    scanf("%d", &n);
    for (int i = 1; i < n; i++) {
        int u, v;
        scanf("%d %d", &u, &v);
        graph[u].push_back(v);
        graph[v].push_back(u);
    }
    for (int i = 1; i <= n; i++) {
        scanf("%d", &weight[i]);
    }

    for (int i = 1; i <= n; i++) {
        int max1 = 0, max2 = 0;
        int t1 = 0, t2 = 0;
        for (int j = 0; j < graph[i].size(); j++) {
            int w = weight[graph[i][j]];
            if (w > max1) {
                max2 = max1, max1 = w;
            } else if (w > max2) {
                max2 = w;
            }
            t1 = (t1 + w) % 10007;
            t2 = (t2 + w * w) % 10007;
        }
        t1 = t1 * t1 % 10007;
        _max = (_max + t1 + 10007 - t2) % 10007;
        if (max_x < max1 * max2)max_x = max1 * max2;
    }
    printf("%d %d\n", max_x, _max);
    return 0;
}