class Food{
    int scale = 20;
    int fxCord;
    int fyCord;
    boolean isFoodGenerated; 
    
    // Generate Food........................................................
    void generateFood(){
      int col = width/scale;
      int row = height/scale;

      fxCord = (int) random(col);
      fyCord = (int) random(row);

      fxCord = fxCord*scale;
      fyCord = fyCord*scale;
      isFoodGenerated = true;
      
    }
   
    // display Foood......................................................
    void displayFood(){
       fill(255, 0, 0);
       rect(fxCord, fyCord, scale, scale);
      
    }
    
    // Update food.........................................................
    void update(){
       if (isFoodGenerated == false){
          this.generateFood(); 
          isFoodGenerated = true;
       }
       this.displayFood();   
    }
  
}
