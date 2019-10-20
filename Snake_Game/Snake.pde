class Snake extends Food{
   
    int previousSnakeCords[] = new int[200];
    int snakeLength = 1;
    int scale = 20;
    int xCord = 100;
    int yCord = 100;
    int xSpeed = 1;
    int ySpeed;
    
    // Display Snake.........................................
    void displaySnake(){
       this.displayHead();
       this.displayTail();
      
    }
    
    // Display head...........................................
    void displayHead(){
       fill(255);
       rect(xCord, yCord, scale, scale); 
    }
    
    // Display Tail.................................................
    void displayTail(){
       fill(255);
       
       for (int i=2; i<snakeLength*2; i=i+2){
         rect(previousSnakeCords[i+1], previousSnakeCords[i], scale, scale);
         
       }
      
    }
    
    // update Tail......................................................
    void updateTail(){
     for (int i=((snakeLength*2)-1); i>=2; i=i-2){
        previousSnakeCords[i] = previousSnakeCords[i-2];
        previousSnakeCords[i-1] = previousSnakeCords[(i-1)-2];
     }
      
    }
    
    // Update snake..........................................
    void update(){
       this.direction();
       this.displaySnake();
       this.updateTail();
       this.Eat();
       this.checkDead();
    }
    
    // Snake eats the food........................................
    void Eat(){
       if(xCord == food.fxCord && yCord == food.fyCord){
            this.snakeLength++;
            food.generateFood();
      }  
      
    }
    
    //Check_Dead.........................................................
    void checkDead(){   
        for (int i=(snakeLength*2)-1; i>=4; i=i-2){
        if(previousSnakeCords[1] == previousSnakeCords[i] && previousSnakeCords[0] == previousSnakeCords[i-1]){
           this.Reset(); 
          
        } 
      }
      
    }
    
    // Reset Snake....................................................
    void Reset(){
        snakeLength = 1;
        xCord = 100;
        yCord = 100;
        food.generateFood(); 
      
      
    }
   
    // Update Direction......................................
    void direction(){
       if (keyCode == UP){
            if (ySpeed == 1){
                //Dont move up, MOVE DOWN................

                this.xSpeed = 0;
                this.ySpeed = 1;
 
                this.yCord = yCord + ySpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;

            }
            else{
                this.xSpeed = 0;
                this.ySpeed = -1;


                this.yCord = yCord + ySpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
        }
        else if(keyCode == DOWN){
            if (ySpeed == -1){
                //Dont move down, MOVE UP................

                this.xSpeed = 0;
                this.ySpeed = -1;

                this.yCord = yCord + ySpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
            else{ 
                this.xSpeed = 0;
                this.ySpeed = 1;
    
                this.yCord = yCord + ySpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
        }
        else if(keyCode == LEFT){
            if(xSpeed == 1){
                //dont Move left, MOVE right..............

                this.xSpeed = 1;
                this.ySpeed = 0;
    
                this.xCord = xCord + xSpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
            else{
                this.xSpeed = -1;
                this.ySpeed = 0;
    
                this.xCord = xCord + xSpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
        }
        else {
            if(xSpeed == -1){
                //dont Move right, MOVE left..............

                this.xSpeed = -1;
                this.ySpeed = 0;
    
                this.xCord = xCord + xSpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
            else{
                this.xSpeed = 1;
                this.ySpeed = 0;

                this.xCord = xCord + xSpeed*scale;
                previousSnakeCords[0] = yCord;
                previousSnakeCords[1] = xCord;
            }
        } 
      
    }
    
  
}
