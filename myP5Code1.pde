setup = function() {
    size(900, 500);
};

//Background Images
var caveSceneImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Wakko's missing his cupcake. Can you help him search for it? [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Help! Wakko's missing his cupcake! Can you help him search for it? [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 900,500);
    
    fill(0,0,0);
    rect(0, 400, 900, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 435);
};



<div class="tenor-gif-embed" data-postid="13345443030693759847" data-share-method="host" data-aspect-ratio="1.77857" data-width="100%"><a href="https://tenor.com/view/animaniacs-wakko-warner-somebody-are-my-donuts-donuts-doughnuts-gif-13345443030693759847">Animaniacs Wakko Warner GIF</a>from <a href="https://tenor.com/search/animaniacs-gifs">Animaniacs GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>