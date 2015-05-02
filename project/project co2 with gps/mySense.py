from grovepi import *
import serial

dht_sensor_port = 5		# Connect the DHt sensor to port 7

time.sleep(0.1)
ser = serial.Serial('/dev/ttyACM0', 115200)
file = open('file.txt','w')
file.truncate()
print "temp(C) humid(%) voltage co2 long lat date time"
file.write( "temp(C) humid(%) voltage co2 long lat date time\n")
while True:
	try:
		[ temp,hum ] = dht(dht_sensor_port,1)		#Get the temperature and Humidity from the DHT sensor
		p = temp, hum ,ser.readline() 	
		print p
		file.write(str(p)+"\n")
		#t = str(temp)
		#h = str(hum)
		
	except (IOError,TypeError) as e:
		print "Error"
