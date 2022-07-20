#include <bits/stdc++.h>

#define N 1005
#define M 100005
using namespace std;

struct Edge {
    int x, y, t;
} edge[M];

int n, m, id[N], cnt;

bool cmp(Edge edge1, Edge edge2) {
    return edge1.t < edge2.t;
}

void init() {
    cnt = n;
    for (int i = 1; i <= n; ++i) {
        id[i] = i;
    }
}

int find(int x) {
    return id[x] == x ? x : id[x] = find(id[x]);
}

void connect(int x, int y) {
    int xr = find(x);
    int yr = find(y);
    if (xr != yr) {
        id[xr] = yr;
        cnt--;
    }
}

bool connected(int x, int y) {
    return find(x) == find(y);
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= m; ++i) {
        cin >> edge[i].x >> edge[i].y >> edge[i].t;
    }
    sort(edge + 1, edge + 1 + m, cmp);
    init();

    for (int i = 1; i <= m; ++i) {
        if(!connected(edge[i].x,edge[i].y)){
            connect(edge[i].x,edge[i].y);
            if(cnt==1){
               cout<<edge[i].t<<endl;
               return 0;
            }
        }
    }
    cout<<-1<<endl;
    return 0;
}