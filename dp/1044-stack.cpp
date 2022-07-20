#include <iostream>

#define N 20
using namespace std;

double catalan(int n){
    double num=n;
    double ans=1;
    for (double i = 1.0; i <=n ; i=i+1.0) {
        ans*=(n+i)/i;
    }
    return ans/(n+1);
}

int main() {
    int n;
    cin>>n;
    if (n==0){
        cout <<0<< endl;
        return 0;
    }
    cout <<(int)catalan(n)<< endl;
    return 0;
}