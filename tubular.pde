float scayle = 5;
PFont stationFont;
PFont lineFont;

void setup(){
  size(800,300);
  //int d = displayDensity();
  pixelDensity(2);
  smooth(8);
  background(255);

  strokeWeight(scayle*1.7);
  strokeCap(SQUARE);
  stationFont = createFont("Arial", scayle*2, true);
  lineFont = createFont("London-Tube", scayle*4, true);

  
  tubeLine tl = new tubeLine();
  tl.display();
  
  //print 20 unique names to the console
  ArrayList names = new ArrayList();
  Name namer = new Name(); 
  for(int i=0; i < 20; i++){
    String newName = namer.getName();
    if(!names.contains(newName)){
      names.add(newName);
      println(newName);
    }
  }
  
}


void draw(){
 //dont need 
}