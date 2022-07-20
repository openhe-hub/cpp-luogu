#include <iostream>

#define N 40
using namespace std;

int n, matrix[N][N];

int main() {
    cin >> n;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            matrix[i][j] = 0;
        }
    }
    matrix[0][n / 2] = 1;
    int i = 0, j = n / 2;

    for (int k = 2; k <= n*n; k++) {
        if (i == 0 && j != n - 1) {
            i = n - 1;
            j += 1;
        } else if (j == n - 1 && i != 0) {
            j = 0;
            i -= 1;
        } else if (i == 0 && j == n - 1) {
            i += 1;
        } else if (i != 0 && j != n - 1) {
            if (matrix[i - 1][j + 1] == 0) {
                i -= 1;
                j += 1;
            } else {
                i += 1;
            }
        }
        matrix[i][j] = k;
    }

    for (int k = 0; k < n; ++k) {
        for (int l = 0; l < n; ++l) {
            cout << matrix[k][l] << " ";
        }
        cout << endl;
    }
    return 0;
}