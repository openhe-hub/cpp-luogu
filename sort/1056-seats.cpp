#include <bits/stdc++.h>

#define N 2005
using namespace std;

struct Pos {
    int pos;
    int num;
};

int m, n, k, l, d;
Pos row[N], col[N];

bool cmp(Pos a, Pos b) {
    return a.num > b.num;
}

bool cmp1(Pos a, Pos b) {
    return a.pos < b.pos;
}

int main() {
    cin >> m >> n >> k >> l >> d;
    for (int i = 0; i < d; ++i) {
        int x1, y1, x2, y2;
        cin >> x1 >> y1 >> x2 >> y2;
        if (x1 == x2) {
            col[min(y1, y2)].pos = min(y1, y2);
            col[min(y1, y2)].num++;
        }
        if (y1 == y2) {
            row[min(x1, x2)].pos = min(x1, x2);
            row[min(x1, x2)].num++;
        }
    }


    sort(row, row + m, cmp);
    sort(col, col + n, cmp);
    sort(row, row + k, cmp1);
    sort(col, col + l, cmp1);

    for (int i = 0; i < k; ++i) {
        cout << row[i].pos << " ";
    }
    cout << endl;
    for (int i = 0; i < l; ++i) {
        cout << col[i].pos << " ";
    }
    cout << endl;

    return 0;
}