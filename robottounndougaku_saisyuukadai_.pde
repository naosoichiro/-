float baseH = 60;
float armL1 = 40;
float armL2 = 50;
float armL3 = 20;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(0);
  
  if(keyPressed){
    if(key == 'i'){
      angle0 = angle0 + dif;
    }
    if(key == 'g'){
      angle1 = angle1 + dif;
    }
    if(key == 'a'){
      angle2 = angle2 + dif;
    }
    if(key == 't'){
      angle3 = angle3 + dif;
    }
  }
  
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(145);
  box(20,20,baseH);
  
  translate(0,0,baseH/2+armW1/2);
  rotateX(radians(angle1));
  translate(0,armL1/2-armW1/2,0);
  fill(181);
  box(armW1,armL1,armW1);
  
  translate(0,armL1-armW2-armW2/2,0);
  rotateY(radians(angle2));
  translate(0,0,-armL2/2+armW2/2);
  fill(48);
  box(armW2,armW2,armL2);
  
  translate(0,0,-armL2+2*armW3);
  rotateZ(radians(angle3));
  translate(armL3/2-armW2/2,0,0);
  fill(230);
  box(armL3,armW3,armW3);
}
