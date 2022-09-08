#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    int t, n, m;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        cin >> n >> m;
        vector<int> seg;
        int prev = 0, curr = 0,head=0;
        int *infected=new int[m];
        //input
        for (int j = 0; j < m; ++j) {
            cin>>infected[j];
        }
        sort(infected,infected+m);

        for (int j = 0; j < m; ++j) {
            curr=infected[j];
            if (j && curr != prev + 1) {
                seg.push_back(curr - prev - 1);
            }
            if (!j) head=curr;
            prev = curr;
        }
        if (!(curr==n&&head==1)) seg.push_back(n-curr+head-1);

        //sort
        sort(seg.begin(),seg.end());
        //solve
        int cnt=0,saved=0;
        while (!seg.empty()&&cnt*2<seg.back()){
            if (seg.back()-cnt*2==1){
                saved++;
                cnt++;
            }else{
                saved+=seg.back()-cnt*2-1;
                cnt+=2;
            }
            seg.pop_back();
        }
        cout<<n-saved<<endl;
    }
    return 0;
}