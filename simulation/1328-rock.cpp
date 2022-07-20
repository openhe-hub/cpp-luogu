#include <iostream>

#define N 205
using namespace std;

int n, len, l2, sc1 = 0, sc2 = 0;
int list1[N], list2[N];
int rule[5][5] = {{0,  -1, 1,  1,  -1},
                  {1,  0,  -1, 1,  -1},
                  {-1, 1,  0,  -1, 1},
                  {-1, -1, 1,  0,  1},
                  {1,  1,  -1, -1, 0}};

int main() {
    cin >> n >> len >> l2;
    for (int i = 0; i < len; ++i) {
        cin >> list1[i];
    }
    for (int i = 0; i < l2; ++i) {
        cin >> list2[i];
    }

    for (int i = 0; i < n; ++i) {
        int a = list1[i % len];
        int b = list2[i % l2];
        if (rule[a][b] == 1) sc1++;
        if (rule[a][b] == -1) sc2++;
    }
    cout << sc1 << " " << sc2 << endl;
    return 0;
}