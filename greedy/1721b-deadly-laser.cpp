#include <iostream>
using namespace std;

int t,n,m,sx,sy,d;

int main(){
    cin>>t;
    for (int i = 0; i < t; ++i) {
        cin>>n>>m>>sx>>sy>>d;
        if (min(sx-1,m-sy)<=d && min(n-sx,sy-1)<=d) cout<<-1<<endl;
        else cout<<n+m-2<<endl;
    }
    return 0;
}