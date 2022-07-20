#include <iostream>
#include <unordered_map>
#include <string>
#include <vector>

using namespace std;

int *id;
int *size;
const string YES = "Yes.";
const string NO = "No.";

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

int main() {
    int n, m, k;
    unordered_map<string, int> map;
    vector<string> results;
    string temp, a, b;

    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        cin >> temp;
        map.insert(make_pair(temp, i));
    }
    init(n);
    for (int i = 0; i < m; ++i) {
        cin >> a >> b;
        connect(map[a], map[b]);
    }

    cin >> k;
    for (int i = 0; i < k; ++i) {
        cin >> a >> b;
        if (is_connected(map[a], map[b])) {
            results.push_back(YES);
        } else {
            results.push_back(NO);
        }
    }

    for (string result:results) {
        cout << result << endl;
    }
    return 0;
}