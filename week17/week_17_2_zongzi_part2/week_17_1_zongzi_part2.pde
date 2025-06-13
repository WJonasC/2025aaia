/// week 17-2 zongzi_part2
/// 修改自week 17-1 zongzi_part1
/// 現在粽子要往下掉，配合 mouse 會放粽子
PImage zongzi;
void setup()
{
  size(500, 500);
  zongzi = loadImage("zongzi.png"); ///剛剛有把圖檔拉進程式裡
}
float x, y;///只有一顆粽子
void draw()
{
  background(204);  /// 204灰色
  imageMode(CENTER); /// 畫圖時，圖片的座標，把它設在中心點的座標，不要用左上角
  if(x>0)
  {
    image(zongzi, X, Y, 100, 100); ///把粽子，畫在 X, Y 的座標
    y++; /// 座標往下，代表粽子往下
  }
}
void mousePressed() ///使用week04的餵飼料的方法，讓粽子往下掉
{
  x = mouseX;
  y = mouseY;
}
