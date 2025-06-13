/// week 17-1 zongzi_part1
/// 在家裡安裝Processing 4.4.4 新版(會裝在系統的目錄 左下Win)
/// 在學校s305教室，可繼續使用 下載目錄的Processing 4.3.3 舊版
/// 補第15週端午節的粽子的小遊戲 week04 week06 week10 三週整合
/// 修改自 week04-5_fishX_fishY_dx_dy_dist
/// 修改自 week 06-4b_array_x_y_int_N_for_mousePressed_recyle_for_k
/// 修改自 week10_1_bubble_happy_part2
/// https://github.com/WJonasC/2025aaia 可下載全部的程式
/// TODO : 把粽子的圖片 zongzi.png 找出來，拉到程式裡。(Teams有)
PImage zongzi;
void setup()
{
  size(500, 500);
  zongzi = loadImage("zongzi.png"); ///剛剛有把圖檔拉進程式裡
}
void draw()
{
  background(204);  /// 204灰色
  imageMode(CENTER); /// 畫圖時，圖片的座標，把它設在中心點的座標，不要用左上角
  /// image(zongzi, 0, 0); /// 好大的粽子 1024 X 1024，要畫小一點
  /// image(zongzi, 0, 0, 100, 100); /// 在 0, 0 座標，畫出 100 X 100 的粽子
  image(zongzi, mouseX, mouseY, 100, 100); ///把粽子，畫在 mouse 的座標
}
