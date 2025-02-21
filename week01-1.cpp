///week01-1.cpp

#include <stdio.h> ///使用 standard 標準的 input/output

int main()
{
	int a, b; /// 整數a,b
	scanf("%d%d", &a, &b);///讀入資料 小心"%d%d"後面的逗號
	///兩個%d%d   &   &
	printf("%d" , a + b);///印出資料，把答案印出來
}
