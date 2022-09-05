#include <bits/stdc++.h>

using namespace std;

map<string, vector<int>> rec;
int t, n;

int main() {
    cin >> t;
    for (int i = 0; i < t; ++i) {
        cin >> n;
        rec.clear();
        int *cnt=new int[3]{0,0,0};
        //cnt
        for (int j = 0; j < 3; ++j) {
            for (int k = 0; k < n; ++k) {
                string tmp;
                cin >> tmp;
                if (rec.find(tmp) != rec.end()) {
                    rec[tmp].push_back(j);
                } else {
                    vector<int> tmp2;
                    tmp2.push_back(j);
                    rec.insert(make_pair(tmp, tmp2));
                }
            }
        }
        //calc
        for (auto & iter : rec) {
            vector<int> vec=iter.second;
            if (vec.size()==1) cnt[vec[0]]+=3;
            else if (vec.size()==2){
                cnt[vec[0]]+=1;
                cnt[vec[1]]+=1;
            }
        }
        //print
        for (int j = 0; j < 3; ++j) {
            cout<<cnt[j]<<" ";
        }
        cout<<endl;
    }
    return 0;
}