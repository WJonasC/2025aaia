// week14-05_sound
// 選單 Sketch - Library - Manage Libraries ...
// 安裝 sound 後，開始寫
// 選單 File - Examples 選 Libraries 核心函式庫 Sound - Soundfile - JumbleSoundfile
// 再自己寫
import processing.sound.*; // Java 使用 Sound 外掛
SoundFile music; //宣告一個變數 music
void setup()
{
  size(640,360); //記得要把音樂檔，拉到程式裡
  music = new SoundFile(this,"In Game Music.mp3");
  music.play(); //play()播放
}
void draw()
{
  //裡面是空白
}
