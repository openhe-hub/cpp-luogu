#include <bits/stdc++.h>
using namespace std;

int main(int argc, char const *argv[])
{
    ifstream fin("in.txt");
    ofstream fout("out.txt");
    int a, b, res;
    fin >> a >> b;
    res = a + b;
    fout << res << endl;
    return 0;
}