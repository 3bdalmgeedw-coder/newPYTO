EXPECTED_BAKE_TIME = 40

def bake_time_remaining(elapsed_bake_time):
    """the expected bake time is const 40 min
    this function calculate the bake time remaining 
    expected bake time - elapsed ake time 

     parameter 
     elapsed_bake_time   int
     time the lasagna has been baking

     returns :
     the expected bake time - elapsed bake time  
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time 
    

def preparation_time_in_minutes(number_of_layers):
    """ this function calculate preparation time in minutes
    parameter :
    number_of_layers   int
    the number od layers in lasgna 

        return :
        number of layers * 2 
    
    """
    return number_of_layers *2
    

def elapsed_time_in_minutes(number_of_layers , elapsed_bake_time):
    """ calculate number of layers and elapsed bake time to get cooking time 
    parameters 
    number_of_layers  int 
    the number of layers in lasagna 
    elapse_bake_time  int 
    time the lasagna  has been baking

         returns
          the total time has been lasagna laking and preraring
    
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time 
   
    
