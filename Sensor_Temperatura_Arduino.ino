float temp;
int tempPin = 0;
void setup()
{
  Serial.begin(9600);
}
void loop()
{
  temp = analogRead(tempPin);
  temp = temp * 1;
  Serial.write(tempPin);
  Serial.println (temp);
  delay(1000);
}
