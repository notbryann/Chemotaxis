 //declare bacteria variables here   
 Bacteria [] bob;
 void setup()   
 {     
 	background(0);
 	size(600,600);
 	bob = new Bacteria[600];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].walk();
 		bob[i].show();
 	}
 	
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myColor;
 	int mx,my;
 	Bacteria(){
 		mx = (int)(Math.random()*499)+50;
 		my = (int)(Math.random()*499)+50;
 		myColor = color((int)(Math.random()*255)+1,(int)(Math.random()*499)+1,(int)(Math.random()*499)+1);
 	}
 	void walk(){
 		mx = mx + (int)(Math.random()*5)-2;
 		my = my + (int)(Math.random()*5)-2;
 	}
 	void show(){
 	fill(myColor);
 	ellipse(mx,my,4,4);
 	}
 }    
