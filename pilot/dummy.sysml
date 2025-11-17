package SimpleLampSystem {

  // Define a part definition
  part def LightSource {
    attribute intensity : Real;
  }

  // Define the main system
  part def Lamp {
    part light : LightSource; 
    attribute isOn : Boolean;
    
    action def turnOn;
  }
}
