<?php
namespace MyApp;
use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

class Chat implements MessageComponentInterface {
    
    protected $clients;

    public function __construct() {
        // session_start();
        $this->clients = new \SplObjectStorage;
        echo "Server Started";
    }

    public function onOpen(ConnectionInterface $conn) {
        // Store the new connection to send messages to later
        $this->clients->attach($conn);      
        $querystring = $conn->httpRequest->getUri()->getQuery();
        parse_str($querystring,$queryarray);
       //Get UserID By Chat Token
       
        echo $queryarray['token'];
        echo $queryarray['token'];
        echo $queryarray['token'];
        echo $queryarray['token'];
        echo "New connection! ({$conn->resourceId})\n";
    }

    public function onMessage(ConnectionInterface $from, $msg) {
        
  
        $numRecv = count($this->clients) - 1;
        echo sprintf('Connection %d sending message "%s" to %d other connection%s' . "\n"
            , $from->resourceId ,$msg, $numRecv, $numRecv == 1 ? '' : 's');
            $data=json_decode($msg,true);
            //
            include("../db/db.php");

            // $data['date']=date("y-m-d h:i:s");
            $data['msg']=$data['msg'];
            
            $u_id=$data['userId'];
            $message=$data['msg'];
            // $date=$data['date'];
            $to_id=$data['to_user'];
            $date=$data['date']= date("Y-m-d h:i:sa"); 

            $sql=("INSERT INTO `messages`(`id`, `u_id`, `msg`, `date`, `to_id`, `att`) VALUES (NULL, '$u_id' , '$message','$date','$to_id',NULL)");
            // echo  $sql;   
            $sql = mysqli_query($conn, $sql);
                echo "success";
          
        foreach ($this->clients as $client) {
                        
            if ($from !== $client) {
            //    echo $client.'asd';
                // The sender is not the receiver, send to each client connected
                $client->send(json_encode($data));
            }

         

        }
    }

    public function onClose(ConnectionInterface $conn) {
        // The connection is closed, remove it, as we can no longer send it messages
        $this->clients->detach($conn);

        echo "Connection {$conn->resourceId} has disconnected\n";
    }

    public function onError(ConnectionInterface $conn, \Exception $e) {
        echo "An error has occurred: {$e->getMessage()}\n";

        $conn->close();
    }
}
