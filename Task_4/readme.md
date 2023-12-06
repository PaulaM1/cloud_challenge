1) In **Task number 4**, the goal was to create Compute Engine instance and learn a bit about networking.
    * Firstly I go to Compute Engine in Google Console and chose to CREATE INSTANCE.
    * Then I added paramterers of my creted VM, like:
        * name of VM
        * region
        * machine type - e2-small
        * access scope - default
        * firewall - marked both HTTPs and HTTP traffic
        * In the **Advanced options -> Networking**, I added a network tag dareit-public (tag match firewall rules to the instances to which the rules should apply).
        * Then I chose Network and Subnetwork. As well decided to got a public IP address (External IPv4 address) -> globally unique over the public Internet.
        * When the Instance was ready I connected to the Virtual Machine Instance. Clicked on the **SSH** button in the Connect column.
2) In the next step I configured web server which is used to host websites:
    * I packaged information from all configured sources using command:
    ```
    sudo apt update
    ``` 
    * and install the Apache Web server using command:
    ```
    sudo apt -y install apache2
    ```
    * Then checked the status of the Apache server
    ```
    sudo systemctl status apache2
    ```
3) In the next step I removed the preconfigured index.html file (automatically created) and added my own index.html file.
4) I copied the External IP of my Virtual Machine Instance into the browser.
5) I copied thet public IP address of my instance and paste it into form (No Github)!