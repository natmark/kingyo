public class RippleManager{
   ArrayList<PVector> locations = new ArrayList<PVector>();
   ArrayList<PVector> scales = new ArrayList<PVector>();
   void addRipple(PVector loc){
    locations.add(loc);
    scales.add(new PVector(0,0));
  }
  void update(){
   ArrayList<Integer> removes = new ArrayList<Integer>();
    
    for(int i = 0; i < scales.size();i++){
      PVector scale = scales.get(i);
      scale.add(new PVector(5,5));
      println("x:" + scale.x + "y:" + scale.y);
      if(scale.x > width & scale.y > height ){
        removes.add(i);
      }
    }    
    for(Integer i : removes){
      locations.remove(locations.get(i));
      scales.remove(scales.get(i));
    }
  }
  void display(){
    for(int i = 0;i < locations.size();i++){
      noFill();
      stroke(140,215,245,(255 - max(scales.get(i).x / 3,0)) );
      ellipse(locations.get(i).x,locations.get(i).y,scales.get(i).x,scales.get(i).y);
    }
  }
}
class Kingyo {
  //const
  final float MAX_ACCELERATION = 0.5;

  //tail
  private boolean tail_dir = false;
  private float radian = 0;
  private float delta = 0.5;

  //property
  PVector location = new PVector();
  PVector scale = new PVector();
  PVector destination = new PVector();
  PVector acceleration = new PVector();
  PVector velocity = new PVector();
  color c =  color(200,0,0);
  
  Kingyo() {
    location = new PVector(0, 0);
    scale = new PVector(1, 1);
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    int x = int(random(width -50 * scale.x) + 50 * scale.x);
    int y = int(random(height -50 * scale.y) + 50 * scale.y);
    destination = new PVector(x, y);
  }
  Kingyo(PVector location, PVector scale) {
    this();
    this.location =location;
    this.scale = scale;
  }

  void update() {
    if (location.dist(destination) < 5) {
      int x = int(random(width -50 * scale.x) + 50 * scale.x);
      int y = int(random(height -50 * scale.y) + 50 * scale.y);
      destination = new PVector(x, y);
    }

    //tail animation
    radian += delta;
    if (radian < -5) {
      delta = 0.2;
    }
    if (radian > 5) {
      delta = -0.2;
    }

    if((int)random(1000) == 0){
            rippleManager.addRipple(this.location);
    }

    PVector dir = PVector.sub(destination, location);
    dir.normalize();
    acceleration = PVector.mult(dir, MAX_ACCELERATION);
    velocity.add(acceleration); 
    location.add(velocity);
    velocity.mult(0);
  }
  void display() {
    pushMatrix(); //(0, 0)を原点とする座標軸をスタックに格納
    translate(location.x, location.y);
    Float theta = atan2(location.y - destination.y, location.x - destination.x);
    rotate(theta - PI / 2);
    //tail
    pushMatrix(); //(200, 200)を原点とする座標軸をスタックに格納
    scale(scale.x, scale.y); // 座標を 幅2.0倍, 高さ4.0倍に拡大
    noStroke();
    fill(c);
    translate(10, -10); // 座標軸を 右に60px, 下に20px移動

    rotate(radians(radian));

    beginShape();
    vertex(0, 0);
    bezierVertex(0.2, 1.1, 39.9, 23.4, 15.3, 52.2);
    bezierVertex(15.3, 52.2, 21.5, 31.4, 7.5, 26.7);
    bezierVertex(7.5, 26.7, 19.4, 53.4, 3.7, 72.1);
    bezierVertex(4.3, 69.7, 6.3, 52.5, -1.7, 58.7);
    bezierVertex(-2.6, 53.4, -3.9, 46, -7.6, 48);
    bezierVertex(-7.6, 48, -6.4, 24.6, -9.7, 26.4);
    bezierVertex(-9.7, 26.4, -16.5, 56.7, -26.3, 60.8);
    bezierVertex(-27.2, 55.8, -21, 49.5, -23.8, 36.8);
    bezierVertex(-16.2, 29, -14.1, 21, -22.5, 24);
    bezierVertex(-33.7, 42.7, -37.9, 42.4, -40, 48.3);
    bezierVertex(-41.8, 30.5, -36, 8.6, -10.2, 0.5);
    endShape();
    popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(200,200)

    //head
    pushMatrix(); //(200, 200)を原点とする座標軸をスタックに格納
    scale(scale.x, scale.y); // 座標を 幅2.0倍, 高さ4.0倍に拡大
    noStroke();
    fill(c);
    rotate(radians(-radian+10));

    beginShape();
    vertex(0, 0);
    bezierVertex(-2, -1.9, -3.4, -2, -12.6, -9);
    bezierVertex(-20.3, -14.2, -24.8, -22.8, -30.7, -29.7);
    bezierVertex(-31, -23.3, -32.7, -23.8, -34.3, -23.2);
    bezierVertex(-35.1, -22.8, -35.4, -18.1, -36.4, -17.8);
    bezierVertex(-38.9, -17.1, -40.3, -16.3, -41.1, -12.8);
    bezierVertex(-44.4, -10.1, -39.9, -33.6, -31.9, -39.2);
    bezierVertex(-33.7, -49, -34.9, -71.6, -30.7, -72.7);
    bezierVertex(-28.6, -76.5, -6.4, -62.9, -1.3, -52.9);
    bezierVertex(-1.3, -52.9, 14.4, -56.1, 25, -39.8);
    bezierVertex(17.7, -42.6, 15.6, -45.2, 12, -44.4);
    bezierVertex(11.3, -44.2, 10.5, -44.3, 9.8, -44.5);
    bezierVertex(8.9, -44.8, 7.3, -45.2, 4.9, -44.8);
    bezierVertex(8.8, -38.6, 10.8, -11.3, 6.7, -0.3);

    endShape();
    popMatrix(); 
    popMatrix(); //座標軸の位置をスタックから取り出すし設定する ... この場合(0, 0)
  }
}

Kingyo[] kingyos = new Kingyo[10];
RippleManager rippleManager;

void setup() {
  size(800, 600);
  
  rippleManager = new RippleManager();
  
  for(int i = 0;i < kingyos.length;i++){
    float size = random(0.2,1);
    int x = int(random(width -50 * size) + 50 * size);
    int y = int(random(height -50 * size) + 50 * size);
    kingyos[i] =  new Kingyo(new PVector(x,y), new PVector(size, size));
    if(i % 2 == 0){
      kingyos[i].c = color(200,0,0);
    }else{
      kingyos[i].c = color(0);
    }
  }
}

void draw() {
  background(255);
  rippleManager.update();
  rippleManager.display();

   for (Kingyo kingyo : kingyos) {
    kingyo.update();
    kingyo.display();
  }
}

