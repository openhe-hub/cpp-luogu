#include <iostream>

#define N 200005
using namespace std;

int n, id[N], dis[N], _max = 0x7fffffff;

void init() {
    for (int i = 1; i <= n; ++i) {
        id[i] = i;
        dis[i] = 0;
    }
}

int get(int a) {
    if (id[a] != a) {
        int last = id[a];
        id[a] = get(id[a]);
        dis[a] += dis[last];
    }
    return id[a];
}

void connect(int a, int b) {
    int ar = get(a);
    int br = get(b);
    if (ar != br) {
        id[a] = br;
        dis[a] = dis[b] + 1;
    } else {
        ::_max = min(::_max, dis[a] + dis[b] + 1);
    }
}

int main() {
    cin >> n;
    init();
    for (int i = 1; i <= n; ++i) {
        int tar;
        cin >> tar;
        connect(i, tar);
    }
    cout << ::_max << endl;
    return 0;
}