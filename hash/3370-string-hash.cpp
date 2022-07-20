#include <iostream>
#include <vector>

using namespace std;

class Bucket {
public:
    vector<string> _data;

    void insert(string data) {
        int index = contains(data);
        if (index == -1) {
            _data.push_back(data);
        }
    }

    int contains(string &data) {
        for (int i = 0; i < _data.size(); ++i) {
            if (_data[i] == data) {
                return i;
            }
        }
        return -1;
    }

    int size() {
        return _data.size();
    }
};

class StringHashSet {
public:
    static const int length = 7001;
    Bucket buckets[length];

    int hash(string str) {
        int key = 0;
        for (char i : str) {
            key += i;
        }
        return key % length;
    }

    void insert(string str) {
        buckets[hash(str)].insert(str);
    }

    int size() {
        int result = 0;
        for (auto &bucket : buckets) {
            result += bucket.size();
        }
        return result;
    }
};

int main() {
    StringHashSet set;
    int length;
    string temp;
    cin >> length;
    for (int i = 0; i < length; ++i) {
        cin >> temp;
        set.insert(temp);
    }
    cout<<set.size()<< endl;
    return 0;
}

