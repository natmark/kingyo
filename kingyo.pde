void setup() {
  size(800, 600);
}
boolean tail_dir = false;
float radian = 0;
float delta = 0.5;

void draw(){
   background(255);
  radian += delta;
  if(radian < -15){
    delta = 0.5;
  }
  if(radian > 15){
    delta = -0.5;
  }

  //tail
   pushMatrix(); //(0, 0)を原点とする座標軸をスタックに格納
  scale(2.0, 2.0); // 座標を 幅2.0倍, 高さ4.0倍に拡大
  noStroke();
  fill(200, 0, 0);
  translate(110,80); // 座標軸を 右に60px, 下に20px移動
  
  rotate(radians(radian));

  beginShape();
  vertex(0,0);
bezierVertex(0.2,1.1,39.9,23.4,15.3,52.2);
bezierVertex(15.3,52.2,21.5,31.4,7.5,26.7);
bezierVertex(7.5,26.7,19.4,53.4,3.7,72.1);
bezierVertex(4.3,69.7,6.3,52.5,-1.7,58.7);
bezierVertex(-2.6,53.4,-3.9,46,-7.6,48);
bezierVertex(-7.6,48,-6.4,24.6,-9.7,26.4);
bezierVertex(-9.7,26.4,-16.5,56.7,-26.3,60.8);
bezierVertex(-27.2,55.8,-21,49.5,-23.8,36.8);
bezierVertex(-16.2,29,-14.1,21,-22.5,24);
bezierVertex(-33.7,42.7,-37.9,42.4,-40,48.3);
bezierVertex(-41.8,30.5,-36,8.6,-10.2,0.5);
  endShape();
    popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(0, 0)

  //head
  pushMatrix(); //(0, 0)を原点とする座標軸をスタックに格納
  scale(2.0, 2.0); // 座標を 幅2.0倍, 高さ4.0倍に拡大
  noStroke();
  fill(200, 0, 0);
  translate(100 ,90);
    rotate(radians(-radian+20));

  beginShape();
  vertex(0,0);
bezierVertex(-2,-1.9,-3.4,-2,-12.6,-9);
bezierVertex(-20.3,-14.2,-24.8,-22.8,-30.7,-29.7);
bezierVertex(-31,-23.3,-32.7,-23.8,-34.3,-23.2);
bezierVertex(-35.1,-22.8,-35.4,-18.1,-36.4,-17.8);
bezierVertex(-38.9,-17.1,-40.3,-16.3,-41.1,-12.8);
bezierVertex(-44.4,-10.1,-39.9,-33.6,-31.9,-39.2);
bezierVertex(-33.7,-49,-34.9,-71.6,-30.7,-72.7);
bezierVertex(-28.6,-76.5,-6.4,-62.9,-1.3,-52.9);
bezierVertex(-1.3,-52.9,14.4,-56.1,25,-39.8);
bezierVertex(17.7,-42.6,15.6,-45.2,12,-44.4);
bezierVertex(11.3,-44.2,10.5,-44.3,9.8,-44.5);
bezierVertex(8.9,-44.8,7.3,-45.2,4.9,-44.8);
bezierVertex(8.8,-38.6,10.8,-11.3,6.7,-0.3);

  endShape();
  popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(0, 0)
}
