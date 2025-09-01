// C++ code
//
int soil_sensor=0;
void setup()
{
  pinMode(A0, INPUT);
  Serial.begin(9600);
  pinMode(13,OUTPUT);
}

void loop()
{
  soil_sensor=analogRead(A0);
  Serial.println(soil_sensor);
  if(soil_sensor>=800){
    digitalWrite(13,HIGH);
  }
  else if(soil_sensor<=300){
    digitalWrite(13,LOW);
  }
  else{
    digitalWrite(13,LOW);
  }
  
 delay(10);
}
