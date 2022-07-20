#include <iostream>
#include <string>

using namespace std;

int m, n;
string num, order;

void add() {
    for (int i = num.length() - 1; i >= 0; i--) {
        char ch = num[i];
        int val = ch - '0';
        if (val == 1) {
            num[i] = '0';
        } else if (val == 0) {
            num[i] = '1';
            break;
        }
    }
}

void _minus() {
    for (int i = num.length() - 1; i >= 0; i--) {
        char ch = num[i];
        int val = ch - '0';
        if (val == 1) {
            num[i] = '0';
            break;
        } else if (val == 0) {
            num[i] = '1';
        }
    }
}

void multiply() {
    num.append("0");
}

void divide() {
    num = num.substr(0, num.length()-1);
}


int main() {
    cin >> n >> m;
    cin >> num >> order;
    for (int i = 0; i < m; ++i) {
        switch (order[i]) {
            case '+': {
                add();
            }
                break;
            case '-': {
                _minus();
            }
                break;
            case '*': {
                multiply();
            }
                break;
            case '/': {
                divide();
            }
                break;
        }
    }
    cout << num << endl;
    return 0;
}