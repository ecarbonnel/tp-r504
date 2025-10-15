import java.io.*;
import java.net.*;
public class ServeurTCP2
{
	public static void main( String[] args ) throws Exception
	{
		//ServeurTCP1.java
		ServerSocket socketserver = new ServerSocket( 2016 );
		while(true)
		{
			System.out.println( "serveur en atente" );
			Socket socket = socketserver.accept();
			System.out.println( "Connection d'un client" );
			DataInputStream dIn = new DataInputStream( socket.getInputStream());
			System.out.println( "Message: " + dIn.readUTF());
		}
	}
}
