// week03-1.cpp �G�X�@��C++����
// LeetCode 2579. Count Total Number of Colored Cells
class Solution {
public:
    long long coloredCells(int n) {
        long long ans = n; // �n�h�g�o�@��A��Ʀr�ɯšA��64�줸�i�ܪ��ܪ�����ơj
        return ans*ans + (ans-1)*(ans-1); // C/C++/Java/C# ���n�[����
    }
};
