class Station {

  boolean transfer = false; 
  boolean terminus = false;
  tubeLine tl;
  String name;
  float x, y;

  Station(float x, float y, boolean transfer, boolean terminus, tubeLine tl) {
    this.x = x;
    this.y = y;
    this.terminus = terminus;
    this.transfer = transfer;
    this.tl = tl;

    //stop = true;
    Name namer = new Name();
    name = namer.getName();
  }

  void display() {
    if (transfer) {
      stroke(0);
      strokeWeight(scayle*1.2);
      ellipse(x, y, scayle*4, scayle*4);
    } else {
      stroke(tl.c);
      strokeWeight(scayle*1.7);
      line(x, y, x, height/2-scayle*3);
      if (terminus == true) { //add downstroke to terminii
         line(x, y, x, height/2+scayle*3);
      }
    }
   textFont(stationFont);
   textAlign(CENTER);
   fill(0);
   text(name,x,y-scayle*5);
   fill(255);
    
  }

}