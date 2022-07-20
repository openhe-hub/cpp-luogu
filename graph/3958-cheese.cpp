/*
#include <bits/stdc++.h>

#define N 1005
using namespace std;

int t, n, h, r;
struct Node {
    int x, y, z;
    int id;
} node[N];

//相交：- ；相切：0 ；相离：+
double calc(Node a, Node b, int r) {
    return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2) + pow(a.z - b.z, 2)) - 2 * r;
}

int main() {
    cin >> t;
    for (int i = 1; i <= t; ++i) {
        cin >> n >> h >> r;
        Node node[N];
        int in[N], in_num = 1;
        bool out[N];
        vector<int> connected[N];

        for (int j = 1; j <= n; ++j) {
            cin >> node[j].x >> node[j].y >> node[j].z;
            node[j].id = j;
            if (node[j].z <= r) in[in_num++] = j;
            if (h - node[j].z <= r) out[j] = true;
        }

        for (int j = 1; j <= n; ++j) {
            for (int k = j + 1; k <= n; k++) {
                if (calc(node[j], node[k], r) <= 0) {
                    connected[j].push_back(k);
                    connected[k].push_back(j);
                }
            }
        }

        bool is_found=false;
        for (int j = 1; j < in_num&&!is_found; j++) {
            int start=in[j];
            if(out[start]){
                cout<<"Yes"<<endl;
                is_found= true;
                break;
            }
            for(int k=0;k<connected[start].size();k++){
                if(out[connected[start][k]]){
                    cout<<"Yes"<<endl;
                    is_found= true;
                    break;
                }
            }
        }

        for (int j = 1; j <= n; ++j) {
            connected[j].clear();
            in[j]=0;
            out[j]=false;
            node[j]={};
        }

        if(!is_found) cout<<"No"<<endl;
    }
    return 0;
}*/

#include<bits/stdc++.h>

using namespace std;

int f[1001];//并查集
long long x[100001], y[100001], z[100001];
int f1[100001], f2[100001];
//f1记录与顶面相交的洞的序号
//f2记录与底面相交的洞的序号



int find(int x) {
    return x == f[x] ? f[x] : f[x] = find(f[x]);
}

void connect(int x, int y) {
    int xr = find(x);
    int yr = find(y);
    if (xr != yr) f[xr]=yr;
}

bool connected(int x, int y) {
    return find(x) == find(y);
}

long long dis(long long x, long long y, long long z, long long x1, long long y1, long long z1) {
    return (x - x1) * (x - x1) + (y - y1) * (y - y1) + (z - z1) * (z - z1);
}//两点距离公式，注意这里算的是距离平方。


int main() {
    int t;
    cin >> t;
    int n, h;
    long long r;
    for (int i = 1; i <= t; i++) {
        cin >> n >> h >> r;
        int tot1 = 0;//记录与顶面相交的洞有几个
        int tot2 = 0;//记录与底面相交的洞有几个

        for (int j = 1; j <= n; j++) {
            f[j] = j;  //并查集初始化
        }
        for (int j = 1; j <= n; j++) {
            cin >> x[j] >> y[j] >> z[j];
            if (z[j] + r >= h) {//判断这个点是否与顶面相交
                tot1++;
                f1[tot1] = j;
            }
            if (z[j] - r <= 0) {//判断这个点是否与底面相交
                tot2++;
                f2[tot2] = j;
            }
            for (int k = 1; k <= j; k++) {//枚举之前的洞是否与这个洞相交，如果相交则合并集合
                if ((x[j] - x[k]) * (x[j] - x[k]) + (y[j] - y[k]) * (y[j] - y[k]) > 4 * r * r) continue;
                //防止爆long long的特判。
                if (dis(x[j], y[j], z[j], x[k], y[k], z[k]) <= 4 * r * r) {
                    connect(j,k);
                }
            }
        }
        int s = 0;
        //看看每一个中是否有洞连接上下面
        for (int j = 1; j <= tot1 && s != 1; j++) {
            for (int k = 1; k <= tot2; k++) {
                if (connected(f1[j], f2[k])) {
                    s = 1;
                    break;
                }
            }
        }
        if (s == 1) cout << "Yes" << endl;
        else cout << "No" << endl;
    }
    return 0;
}
