class tubeLine{
 
 int numStations;
 int numTransfers;
 Station[] stations;
 float start,end;
 color c = color(random(255),random(255),random(255));
 
 tubeLine(){
  numStations = floor(width/(random(80,140))); //should be a function of width
  //numStations = floor(width/(random(40,60))); //should be a function of width

  //transfers make up 20-40% of total stations
  numTransfers = floor(numStations*random(0.2,0.4));
  //numTransfers = floor(numStations*random(0.6,0.8));
  println(numStations);
  println(numTransfers);
  start = 50;
  end = width - start;
  float lineLength = end - start;
  float xpos = start; //should be a function of width
  float spacing = lineLength/(numStations-1); 
  stations = new Station[numStations];
  int transfersToCreate = numTransfers;
  
  for(int i=0;i<numStations;i++){
   boolean terminus = (i==0 || i==numStations-1);
   boolean transfer = false;
   int stationsToCreate = numStations-1-i;
   
   //can't create transfer as last stop
   if(transfersToCreate == stationsToCreate && transfersToCreate > 0){
     transfer = true;
     transfersToCreate--;
   } else {
    if(transfersToCreate > 0 && random(1) < 0.2){
     transfer = true;
     transfersToCreate--;
    } 
   }
   println(stationsToCreate + " stations remain");
   println(transfersToCreate + " transfers remain");
   stations[i] = new Station(xpos, height/2, transfer, terminus, this);
   xpos += spacing; 
  }
  
 }
 
 void display(){
  //display line name
  int r = floor(random(0,numStations));
  String lineName = stations[r].name + " Line";
  textFont(lineFont);
  noStroke(); 
  fill(c);
  float nameBoxX = start-scayle/2;
  float nameBoxY = scayle*4;
  float nameBoxW = textWidth(lineName)+scayle*4;
  float nameBoxH = textAscent() + textDescent()*scayle;
  pushMatrix();
  translate(nameBoxX, nameBoxY);
  rect(0, 0, nameBoxW, nameBoxH);
  fill(255);
  textAlign(CENTER, CENTER);
  text(lineName, nameBoxW/2, nameBoxH/2-1);
  popMatrix();
   
  //display line and stations
  stroke(c);
  line(start-scayle/2,height/2,end+scayle/2,height/2);
  for(int i=0;i<numStations;i++){
     stations[i].display(); 
  }
 }
  
}