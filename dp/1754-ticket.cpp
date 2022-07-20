#include <iostream>

using namespace std;

int catalan(int n) {
    double ans = 1.0;
    for (double i = 1; i <= n; i += 1) {
        ans *= (n + i) / i;
    }
    return (int) (ans / (n + 1));
}

int main() {
    int n;
    cin >> n;
    cout << catalan(n) << endl;
    return 0;
}