#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <set>
#include <cmath>
#include <stdio.h>
#include <list>
#include <numeric>
#include <stack>
#include <queue>
#include <tuple>
#include <bitset>
#include <map>
#include <math.h>
//ceil(a/b)   (a + (b - 1))/ b
using namespace std;
#define rep(i,n) for(int i = 0; i < (n); i++)
typedef long long ll;
typedef pair<int,int> P;
const int inf=1000000007;
const ll mod=1000000007;
const double PI=3.14159265358979323846;
int dx[] = {1,-1,0,0};
int dy[] = {0,0,1,-1};

ll gcd(ll a, ll b){
  if (b==0) return a;
  else return gcd(b,a%b);
}

int cans(bool f){
  if(f) cout << "Yes" << endl;
  else cout << "No" << endl;
  return 0;
}



int main(){
  int H,W,K;
  cin >> H >> W >> K;
  char C[H][W];
  int sum = 0;
  int ans = 0;
  rep(i,H) {
	rep(j,W) {
	  cin >> C[i][j];
	  if(C[i][j] == '#') sum++;
	}
  }
  for(int bith = 0; bith < (1<<H); bith++) {
	for(int bitw = 0; bitw < (1<<W); bitw++) {
	  int tmp = sum;
	  rep(i,H) {
		rep(j,W) {
		  if(bith & (1<<i) || bitw & (1<<j)) {
			if(C[i][j] == '#') tmp--;
		  }
		}
	  }
	  if(tmp == K) ans++;
	  //	  cout << tmp << endl;
	}
  }
  cout << ans << endl;
  return 0;
}

