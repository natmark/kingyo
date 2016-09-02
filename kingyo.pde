void setup(){
  size(400,300);
  background(255);
  
pushMatrix(); //(0, 0)を原点とする座標軸をスタックに格納
scale(2.0, 2.0); // 座標を 幅2.0倍, 高さ4.0倍に拡大
noStroke();
fill(200,0,0);
 translate(40, 30); // 座標軸を 右に40px, 下に30px移動
  rotate(PI/6); // 座標軸を 30°回転
 
 beginShape();
  vertex(40.9, 20.5);
      bezierVertex(40.9, 20.5, 56.6, 17.3, 67.2, 33.6);
      bezierVertex(59.9, 30.8, 57.8, 28.2, 54.2, 29.0);
    bezierVertex(53.5, 29.2, 52.7, 29.1, 52.0, 28.9);
      bezierVertex(51.1, 28.6, 49.5, 28.2, 47.1, 28.6);
      bezierVertex(51.0, 34.8, 53.0, 62.1, 48.9, 73.1);
      bezierVertex(44.7, 84.1, 83.6, 90.0, 59.0, 118.8);
     bezierVertex(59.0, 118.8, 65.2, 98.0, 51.3, 93.3);
    bezierVertex(51.3, 93.3, 63.1, 120.0, 47.4, 138.7);
     bezierVertex(48.0, 136.3, 50.1, 119.1, 42.1, 125.4);
     bezierVertex(41.2, 120.0, 39.9, 112.6, 36.1, 114.7);
     bezierVertex(36.1, 114.7, 37.3, 91.2, 34.0, 93.0);
      bezierVertex(34.0, 93.0, 27.2, 123.3, 17.4, 127.4);
      bezierVertex(16.5, 122.4, 22.8, 116.2, 19.9, 103.4);
      bezierVertex(27.5, 95.7, 29.6, 87.7, 21.3, 90.6);
      bezierVertex(10.0, 109.3, 5.8, 109.0, 3.8, 115.0);
      bezierVertex(2.0, 97.2, 13.8, 83.5, 39.7, 75.5);
      bezierVertex(40.9, 71.3, 35.9, 68.6, 29.6, 64.4);
      bezierVertex(21.9, 59.2, 17.4, 50.6, 11.5, 43.7);
      bezierVertex(11.2, 50.1, 9.5, 49.6, 7.9, 50.2);
      bezierVertex(7.1, 50.6, 6.8, 55.3, 5.8, 55.6);
      bezierVertex(3.3, 56.3, 1.9, 57.1, 1.1, 60.6);
      bezierVertex(-2.2, 63.3, 2.3, 39.8, 10.3, 34.2);
      bezierVertex(8.5, 24.4, 7.3, 1.8, 11.5, 0.7);
      bezierVertex(13.6, -3.1, 35.8, 10.5, 40.9, 20.5);
     endShape();
     popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(0, 0)
}
