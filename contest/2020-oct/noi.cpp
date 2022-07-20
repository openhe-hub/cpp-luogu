#include <bits/stdc++.h>

using namespace std;

int main() {
    int sum = 0, temp;
    for (int i = 0; i < 7; ++i) {
        cin >> temp;
        sum += temp;
    }
    cin >> temp;
    sum += temp == 1 ? 5 : 0;
    cin >> temp;
    string s = sum >= temp ? "AKIOI" : "AFO";
    cout << s << endl;
    return 0;
}