/// week 17-3 zongzi_part3
/// 修改自 week 17-1 zongzi_part2
/// 等於結合 week04 week10 和現在的
/// 現在粽子要往下掉，配合 mouse 會放粽子
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
    }
  }
}
void mousePressed() ///使用week04的餵飼料的方法，讓粽子往下掉
{
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
