Snake snake = new Snake();
Food food = new Food();
int scale = 20;

void setup(){
   size(900, 700); 
}

void draw(){
   frameRate(10);
   background(51);
   snake.update();
   food.update();
   boundaryCheck();
   
}

// Boundary check............................................
void boundaryCheck(){
    if(snake.xCord>width-scale || snake.xCord<0 || snake.yCord> height-scale || snake.yCord<0){
        snake.Reset();
    }
    
}
