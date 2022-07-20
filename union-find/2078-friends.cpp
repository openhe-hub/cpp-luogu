#include <iostream>
#include <algorithm>
#include <cmath>

using namespace std;

int *id;
int *size;

void init(int n) {
    id = new int[n + 1];
    size = new int[n + 1];
    for (int i = 1; i <= n; ++i) {
        id[i] = i;
    }
    for (int i = 1; i <= n; ++i) {
        size[i] = 1;
    }
}

int find(int a) {
    return a == id[a] ? a : (id[a] = find(id[a]));
}

void connect(int a, int b) {
    int aRoot = find(a);
    int bRoot = find(b);
    if (aRoot != bRoot) {
        if (size[aRoot] < size[bRoot]) {
            id[aRoot] = id[bRoot];
            size[bRoot] += size[aRoot];
        } else {
            id[bRoot] = id[aRoot];
            size[aRoot] += size[bRoot];
        }
    }
}

bool is_connected(int a, int b) {
    return find(a) == find(b);
}

int number(int num, int n) {
    int count = 0;
    for (int i = 1; i <= n; ++i) {
        if (is_connected(num, i)) {
            count++;
        }
    }
    return count;
}


int main() {
    int n, p, m, q;
    cin >> n >> m >> p >> q;

    init(n);
    for (int i = 0; i < p; ++i) {
        int a, b;
        cin >> a >> b;
        connect(a, b);
    }
    int num1 = number(1, n) - 1;

    init(m);
    for (int i = 0; i < q; ++i) {
        int a, b;
        cin >> a >> b;
        a=abs(a);
        b=abs(b);
        connect(a, b);
    }
    int num2 = number(1, m) - 1;
    cout << min(num1,num2) + 1 << endl;
    return 0;
}

