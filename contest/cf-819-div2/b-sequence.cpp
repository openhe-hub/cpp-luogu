#include <iostream>
using namespace std;

int main(){
    int t,n,m;
    cin>>t;
    for (int i = 0; i < t; ++i) {
        cin>>n>>m;
        if (m%2==0){
            if (m%n==0){
                cout<<"Yes"<<endl;
                for (int j = 0; j < n; ++j) {
                    cout<<m/n<<" ";
                }
                cout<<endl;
            }
            else if (n%2==1) cout<<"No"<<endl;
            else if (n>m) cout<<"No"<<endl;
            else{
                int j=2;
                while(j<=n){
                    if ((m-j)/(n-j)%2==0&&(m-j)%(n-j)==0){
                        cout<<"Yes"<<endl;
                        for (int k = 0; k < j; ++k) {
                            cout<<1<<" ";
                        }
                        for (int k = j; k < n; ++k) {
                            cout<<(m-j)/(n-j)<<" ";
                        }
                        cout<<endl;
                        break;
                    }
                    j+=2;
                }
            }
        }else{
            if (m%n==0){
                cout<<"Yes"<<endl;
                for (int j = 0; j < n; ++j) {
                    cout<<m/n<<" ";
                }
                cout<<endl;
            }
            else if (n>m){
                cout<<"No"<<endl;
            }else{
                for (int j = 0; j < n - 1; ++j) {
                    cout<<1<<" ";
                }
                cout<<(m-n+1)<<endl;
            }
        }
    }
    return 0;
}