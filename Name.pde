class Name{

  String [] pre = {"East ", "North ", "West ", "South ", "Royal ", "White ", "New ", "Old "};
  String [] pref = {"Ox", "Hen", "Wod", "Wat", "Bal", "Tal", "Pal", "Shep", "Dep", "Fen", "Finch", "Crey", "Dal", "Cren", "Hap", "Kew", "Green", "Oak", "Edge", "Lan", "Wad", "Don", "Fin", "Tep", "Ash", "Kil", "Mary", "Lam", "Moor", "Chapel", "Bay", "Wim", "Stam"};
  //String [] mid = {};
  String [] fix = {"ley", "don", "ford", "sborough", "sbury", "lands", "ton", "sway", "ham", "wall", "well", "ing", "brook", "holt", "wood", "smith", "sbridge", "sditch", "swater"};
  String [] post = {" Grove", " Crescent", " Street", " Park", " Mews", " Downs", " Marsh", " Avenue", " Bridge", " Hill", " Central", " Rush", " Road", " Common", " Gate", " Junction", " Town", " Cross", " Lane", " Circus", " Square", " Green", " Central"};

 Name(){}

String getName(){
   String s = "";
   if(getRand(4) > 2) s+=pre[getRand(pre.length)];
   s += pref[getRand(pref.length)];
   s += fix[getRand(fix.length)];
   if(getRand(4) > 2) s+=post[getRand(post.length)];
   return(s);
}

int getRand(int m){
  return floor(random(m));
}
  
}