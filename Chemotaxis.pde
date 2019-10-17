 //declare bacteria variables here   
 Bacteria [] bob;
 void setup()   
 {     
 	background(200);
 	size(500,500);
 	bob = new Bacteria[20];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(200);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].walk();
 		bob[i].show();
 	}
 	
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int mx,my;
 	Bacteria(){
 		mx = 250;
 		my = 250;
 	}
 	void walk(){
 		mx = mx + (int)(Math.random()*5)-2;
 		my = my + (int)(Math.random()*5)-2;
 	}
 	void show(){
 	fill(255);
 	circle(mx,my,35);
 	}
 }    
