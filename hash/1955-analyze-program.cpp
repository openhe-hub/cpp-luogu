#include <iostream>
#include <vector>
#include <string>

using namespace std;

const string YES = "YES", NO = "NO";

vector<int> id;
vector<int> size;

void connect(int a, int b);

int find(int a);

bool is_connected(int a, int b);

void init(int n);

int main() {
    int n1, n2, num1, num2, e;
    vector<string> results;
    string result;

    cin >> n1;
    for (int i = 0; i < n1; ++i) {
        //input
        cin >> n2;
        //init
        init(n2);
        result = YES;
        vector<pair<int, int>> un_equal;

        for (int j = 0; j < n2; ++j) {
            cin >> num1 >> num2 >> e;
            if (e == 1) {
                connect(num1, num2);
            } else if (e == 0) {
                un_equal.push_back(make_pair(num1, num2));
            }
        }

        for (auto &pair:un_equal) {
            if (is_connected(pair.first, pair.second)) {
                result = NO;
            }
        }

        results.push_back(result);
    }

    for (auto &res:results) {
        cout << res << endl;
    }
    return 0;
}

void init(int n) {
    id.clear();
    size.clear();
    for (int i = 0; i <= n; ++i) {
        id.push_back(i);
    }
    for (int i = 0; i <= n; ++i) {
        size.push_back(1);
    }
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

int find(int a) {
    return id[a] == a ? a : (id[a] = find(id[a]));
}

bool is_connected(int a, int b) {
    return find(a) == find(b);
}