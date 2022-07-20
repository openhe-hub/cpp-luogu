#include <iostream>

#define N 1000005
using namespace std;

string b;
int len;
int nxt[N];

void getNext() {
    int i = 0, j = -1;
    nxt[0] = -1;
    while (i < len) {
        if (j == -1 || b[i] == b[j]) {
            nxt[++i] = ++j;
        } else {
            j = nxt[j];
        }
    }
}

int main() {
    cin >> len;
    cin >> b;
    getNext();
    cout << len - nxt[len] << endl;
    return 0;
}