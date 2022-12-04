// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract UZH_Project {
    
    /* Declaring the State Variable */
    int public stateIntVariable;
    

    /* Declaring the Structures For Battery to check the originality */
    struct Battery_Database{
        uint Battery_ID;
        string Owner;
        string Manufacturer;
        uint Year;
        uint Battery_Health;
    }

    /* Declaring the Structures For Battery at the charging stations */
    struct Changing_Station_Database{
        uint CS_Battery_ID;
        uint Battery_ID;
        uint Charging_Status;

    }

    

    /* 
    Add a Battery Deyails in the Battery Database
    Create a Struct object and change the Variable name here according to object
    */
    function Add_Battery_Info_To_Database(uint _Battery_ID, string memory _Owner, string memory _Manufactrer, uint _Year, uint _Battery_Health) public
    {
        Battery3 = Battery_Database(_Battery_ID, _Owner, _Manufactrer, _Year, _Battery_Health);
    }


    
    /* 
    Geting Details of a Battery from Battery Databases 
    To Check the Data about the diffrent battery we have to change the object name 
    */
    function get_details() public view returns(uint, string memory, string memory, uint, uint) 
    {
        return(Battery3.Battery_ID, Battery3.Owner, Battery3.Manufacturer, Battery3.Year, Battery3.Battery_Health);  
    }




    /* Get Battery Details 1 */
    function get_Battery_Details1() public view returns(uint, string memory, string memory, uint, uint) 
    {
        return(Battery1.Battery_ID, Battery1.Owner, Battery1.Manufacturer, Battery1.Year, Battery1.Battery_Health);  
    }




    /* Get Battery Deatils 2 */
    function get_Battery_Details2() public view returns(uint, string memory, string memory, uint, uint) 
    {
        return(Battery2.Battery_ID, Battery2.Owner, Battery2.Manufacturer, Battery2.Year, Battery2.Battery_Health);  
    }



    /* 
    Geting Details of a Battery from Battery Databases 
    To Check the Data about the diffrent battery we have to change the object name 
    */
    function Test() public view returns(uint, string memory, string memory, uint, uint)
    {
        (uint a, string memory b, string memory c, uint d, uint e) = get_details();
        return(a, b, c, d, e);
    }




    //*============== Functions For Charging Station  ===============*//

    /* Function to add battery at the chanrging station */
    function Add_Battery_At_Charging_Station(uint _CS_Battery_ID, uint _Battery_ID, uint _Charging_Status) public
    {
        CSBattery3 = Changing_Station_Database(_CS_Battery_ID, _Battery_ID, _Charging_Status);
        //return(CSBattery3.CS_Battery_ID, CSBattery3.Battery_ID, CSBattery3.Charging_Status);
    }




    /* Function to print the battery info at the charging station */
    function Get_Battery_Status_At_Charging_Station() public view returns(uint, uint, uint)
    {
        return(CSBattery3.CS_Battery_ID, CSBattery3.Battery_ID, CSBattery3.Charging_Status);  
    }




    /* Function to update the live charging pecentage of the batteries at the charging station */
    function Update_Charging_Status_At_Charging_Station(uint _CS_Battery_ID, uint _Charging_Status) public returns(uint, uint, uint)
    {
        (uint a, uint b, uint c) = Get_Battery_Status_At_Charging_Station();
        a = _CS_Battery_ID;
        c = _Charging_Status;
        Add_Battery_At_Charging_Station(a, b, c);

        return(CSBattery3.CS_Battery_ID, CSBattery3.Battery_ID, CSBattery3.Charging_Status);  
    }




    
    function NoSet(int128 x) public pure returns(int128){
        return(x);
    }
     
    function RateNoSet(int128 y) public pure returns(int128){
        return(y);
    }


    
    function Amonut_To_Pay(int128 Old_Battery_Charge, int128 New_Battery_Charge) public pure returns (int128) {
        int128 A1 = NoSet(Old_Battery_Charge);
        int128 A2 = NoSet(New_Battery_Charge);
        int128 rate = 2;
        int128 answer = (A2 - A1) * rate + 5 ; 
        return answer;
    }
    


    function show() public returns(int)
    {
        stateIntVariable = Amonut_To_Pay(12, 15);
        return(stateIntVariable);
    } 


    /*
    Swaps The Battery
    
    function Swap_Battery() public returns(uint)
    {
    //fetching The Details about Batteries and Storing them in variables
    //Old_Details = get_Battery_Details1();
    //New_Details = get_Battery_Details2();

    (uint a, string memory b, string memory c, uint d, uint e) = get_Battery_Details1();
    (uint m, string memory n, string memory o, uint p, uint q) = get_Battery_Details2();


    //Calulating the Cost of Exchange
    int128 Cost = Amonut_To_Pay(10, 90);
    

    //string Temp_Old_Owner = b;
    //string Temp_New_Owner = n;

   // New_Details = (a, )
   //Old_Details = Temp_New_Owner;

    }

    */

   

    
    /* Main Functions Starts from Here */
    Battery_Database Battery1 = Battery_Database(12341, 'Ino', 'Pappu', 2002, 90);
    Battery_Database Battery2 = Battery_Database(12342, 'John', 'Anuja', 2010, 98);
    Battery_Database Battery3;



    Changing_Station_Database CSBattery1 = Changing_Station_Database(1, 12345, 60);
    Changing_Station_Database CSBattery2 = Changing_Station_Database(2, 12346, 78);
    Changing_Station_Database CSBattery3;




}