/// week 17-4 zongzi_part4
/// 修改自 week 17-3 zongzi_part3
/// 要收回粽子，就不會超過100

PImage zongzi;
void setup()
{
  size(500, 500);
  zongzi = loadImage("zongzi.png"); ///剛剛有把圖檔拉進程式裡
}
/// float x, y;///只有一顆粽子
float []x = new float[100]; /// 可放100個粽子
float []y = new float[100]; /// 學 week06 的陣列
int N = 0; /// 一開始有0個粽子
void draw()
{
  background(204);  /// 204灰色
  imageMode(CENTER); /// 畫圖時，圖片的座標，把它設在中心點的座標，不要用左上角
  for (int i=0; i<N; i++)
  {
    if(x[i]>0)
    {
      image(zongzi, x[i], y[i], 100, 100); ///把粽子，畫在 X, Y 的座標
      y[i]++; /// 座標往下，代表粽子往下
      if (y[i]>500)
      {
        for (int k=i+1; k<N; k++) /// 把i+1 i+2 ...搬到i i+1
        {
          x[k-1] = x[k]; ///右邊搬到左邊
          y[k-1] = y[k];
        }
        N--; /// 粽子的數量-1
      }
    }
  }
  println(N);
}
void mousePressed() ///使用week04的餵飼料的方法，讓粽子往下掉
{
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
