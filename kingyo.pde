void setup(){
  size(400,300);
  background(255);
  
pushMatrix(); //(0, 0)を原点とする座標軸をスタックに格納
scale(2.0, 2.0); // 座標を 幅2.0倍, 高さ4.0倍に拡大
noStroke();
fill(200,0,0);
translate(60, 20); // 座標軸を 右に60px, 下に20px移動
 
 //head
 beginShape();
vertex(42.2, 73.4);
bezierVertex(40.2, 71.5, 38.8, 71.4, 29.6, 64.4);
bezierVertex(21.9, 59.2, 17.4, 50.6, 11.5, 43.7);
bezierVertex(11.2, 50.1, 9.5, 49.6, 7.9, 50.2);
bezierVertex(7.1, 50.6, 6.8, 55.3, 5.8, 55.6);
bezierVertex(3.3, 56.3, 1.9, 57.1, 1.1, 60.6);
bezierVertex(-2.2, 63.3, 2.3, 39.8, 10.3, 34.2);
bezierVertex(8.5, 24.4, 7.3, 1.8, 11.5, 0.7);
bezierVertex(13.6, -3.1, 35.8, 10.5, 40.9, 20.5);
bezierVertex(40.9, 20.5, 56.6, 17.3, 67.2, 33.6);
bezierVertex(59.9, 30.8, 57.8, 28.2, 54.2, 29.0);
bezierVertex(53.5, 29.2, 52.7, 29.1, 52.0, 28.9);
bezierVertex(51.1, 28.6, 49.5, 28.2, 47.1, 28.6);
bezierVertex(51.0, 34.8, 53.0, 62.1, 48.9, 73.1);
endShape();

//tail
beginShape();
vertex(43.9, 60.9);
bezierVertex(44.1, 62.0, 83.8, 84.3, 59.2, 113.1);
bezierVertex(59.2, 113.1, 65.4, 92.3, 51.4, 87.6);
bezierVertex(51.4, 87.6, 63.3, 114.3, 47.6, 133.0);
bezierVertex(48.2, 130.6, 50.2, 113.4, 42.2, 119.6);
bezierVertex(41.3, 114.3, 40.0, 106.9, 36.3, 108.9);
bezierVertex(36.3, 108.9, 37.5, 85.5, 34.2, 87.3);
bezierVertex(34.2, 87.3, 27.4, 117.6, 17.6, 121.7);
bezierVertex(16.7, 116.7, 22.9, 110.4, 20.1, 97.7);
bezierVertex(27.7, 89.9, 29.8, 81.9, 21.4, 84.9);
bezierVertex(10.2, 103.6, 6.0, 103.3, 3.9, 109.2);
bezierVertex(2.1, 91.4, 7.9, 69.5, 33.7, 61.4);
endShape();
popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(0, 0)
}
