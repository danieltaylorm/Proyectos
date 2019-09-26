int potPosition;
int Led1 = 8;       

void setup()
{
  Serial.begin(9600);       

  pinMode(8, OUTPUT);      
}

void loop()
{

  potPosition = analogRead(A0);    
  Serial.println(potPosition);     
 
  digitalWrite(8, HIGH);          
  delay(potPosition);        
  

  digitalWrite(8, LOW);            
  delay(potPosition);      
}
