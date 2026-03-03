setup = function() {
    size(1100, 500);
};

//Background Images
var lostSceneImage = loadImage("https://lh3.googleusercontent.com/drive-storage/AJQWtBMFGtlmlBkLmfcZ0vQTw9lH7vLTkEa7_ItM2b8C6KrbEwV6fmu5zEk5OfjU_nwRKSBjA7zxldQCz_okebVuyHLWvKBsEJn-A_1Npcnt_jvwCtYp2Q=w1905-h953?auditContext=forDisplay");

var movielotImage = loadImage("https://static.wikia.nocookie.net/animaniacs/images/b/b1/Scratchy%27s_Office_Reboot_Yakko_Amakko.jpg/revision/latest/scale-to-width-down/1000?cb=20220809225953");



//Variable Declarations
var sceneImage = lostSceneImage;
var sceneText = "Help! Wakko's missing his Donuts! Can you help him search for it? [Press m for the movie lot and s for the streets]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'm'){
       sceneImage = movielotImage;   
       sceneText = "Hmmm....lets check the movie lot offices!  [Press r to restart]";
     } 
     if(key == 'r'){
      sceneImage = lostSceneImage;
      sceneText = "Help! Wakko's missing his Donuts! Can you help him search for it? [Press m for the movie lot and s for the streets]";
    } 
    
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 1100,500);
    
    fill(0,0,0);
    rect(0, 400, 1100, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 435);
};



