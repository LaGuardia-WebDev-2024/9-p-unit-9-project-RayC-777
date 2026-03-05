setup = function() {
    size(1100, 550);
};

//Background Images
var lostSceneImage = loadImage("Lost 2026-03-03 100902.png"); //r key

var movielotImage = loadImage("https://static.wikia.nocookie.net/animaniacs/images/b/b1/Scratchy%27s_Office_Reboot_Yakko_Amakko.jpg"); //m key

var officeImage = loadImage("https://images.squarespace-cdn.com/content/v1/5431e565e4b0a3aafb4528f0/0ec004a9-0563-4d56-8b1e-cea782576421/AcmeLabsNight.jpg"); //o key

var helloNurseImage = loadImage ("https://choicefineart.com/cdn/shop/products/animaniacs-original-production-cel-hello-nurse-289702.jpg?v=1688077633"); //h key

var lotGateImage = loadImage ("https://static.wikia.nocookie.net/animaniacs/images/c/c0/Warner_Lot_Suspended_Animation.jpeg/revision/latest/scale-to-width-down/1000?cb=20220801153805"); //g key

var RalphImage = loadImage ("https://static.wikia.nocookie.net/cartoons/images/3/39/Ralph_The_Gaurd.jpg/revision/latest?cb=20070611220000"); //a key

var ESCAPEImage = loadImage ("Escape 2026-03-04 at 12.04.24 AM.png"); //e key

var WhewImage = loadImage ("https://cdnph.upi.com/ph/st/th/9781676409878/2023/i/16764102568168/v1.5/Animaniacs-actors-dont-believe-Season-3-is-the-end.jpg?lg=5&=1"); //t key

var DonutsImage = loadImage ("Donuts 2026-03-04 at 12.31.14 AM.png"); //s key

//Variable Declarations
var sceneImage = lostSceneImage;
var sceneText = "Help! Wakko's missing his Donuts! Can you help him search for it? [Press m for the movie lot and g for the gate]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'm'){
       sceneImage = movielotImage;   
       sceneText = "Hmmm....lets check the movie lot offices!  [Press o to offices]";
     } 
     
     if(key == 'o'){
      sceneImage = officeImage;
      sceneText = "No sign of delicious donuts here. [Press h to hello]";
     }
     
     if(key == 'h'){
      sceneImage = helloNurseImage;
      sceneText = "HELLOOOOO NURSE-aaand she has no clue. She's kinda busy. She wishes you good luck, tho! [Press r to restart]";
     }
 
     if(key == 'r'){
      sceneImage = lostSceneImage;
      sceneText = "Help! Wakko's missing his Donuts! Can you help him search for it? [Press m for the movie lot and g for the gate]";
    } 

      if(key == 'g'){
        sceneImage = lotGateImage;
        sceneText = "Lets ask Ralph the Security Guard if he's seen them! [Press a to ask Ralph]";
      }

      if(key == 'a'){
        sceneImage = RalphImage;
        sceneText = "This Bafoon doesn't know, either-WAIT A MINUTE! [Quick, press e to ESCAPE!!]";
      }
    
      if(key == 'e'){
        sceneImage = ESCAPEImage;
        sceneText = "Quick, head to the water tower before he snatches us up! [Press t for tower]";
      }

      if(key == 't'){
        sceneImage = WhewImage;
        sceneText = "Whew, that was close. Back at the tower, the Warners see something inside... [Press s for surprise]";
      }

      if(key == 's'){
        sceneImage = DonutsImage;
        sceneText = "The Donuts were here all along! Wakko can finally enjoy! Tks for helping the hungry lil guy! [Press r to restart]";
      }
      

   }

if(mousePressed && sceneImage == DonutsImage){
  textSize(30)
  text("🍩", random(0,600), random(0,400));

}


};

var drawScene = function(){
    image(sceneImage, 0, 0, 1100,550);
    
    fill(0,0,0);
    rect(0, 450, 1100, 100); // text box
      
    fill(255, 255, 255);
    textSize(19);
    textFont( createFont("Luckiest Guy") );
    text(sceneText, 10, 485);
};



