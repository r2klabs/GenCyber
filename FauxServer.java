// A Java program for a Server
import java.net.*;
import java.io.*;
 
public class FauxServer
{
    //initialize socket and input stream
    private Socket          socket   = null;
    private ServerSocket    server   = null;
    private DataInputStream in       =  null;
  
 
    // constructor with port
    public FauxServer(int port)
    {
          // starts server and waits for a connection
        try
        {
            server = new ServerSocket(port);
            System.out.println("Server started");
 
            System.out.println("Waiting for a client on port: "+port);
 
            socket = server.accept();
            System.out.println("Client accepted");
 
        
            // takes input from the client socket
            in = new DataInputStream(
                new BufferedInputStream(socket.getInputStream()));
 
            String line = "";
 
            // reads message from client until "Over" is sent
            while (!line.equals("Over"))
            {
                try
                {
                    line = in.readUTF();
                    System.out.println(line);
 
                }
                catch(IOException i)
                {
                    //System.out.println(i);
                }
            }
            
            System.out.println("Closing connection");
 
            // close connection
            socket.close();
            in.close();
        }
        catch(IOException ex)
        {
            //System.out.println(ex);
        }
    }
 
    public static void main(String args[])
    {
        int portNumber = Integer.parseInt(args[0]);
        
        FauxServer server = new FauxServer(portNumber);
        
    }
}
