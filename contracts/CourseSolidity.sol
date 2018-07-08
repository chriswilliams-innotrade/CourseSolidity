pragma solidity ^0.4.21;

contract CourseSolidity {
    
    string fName;
    uint age;
    address owner;
    
    constructor(CourseSolidity) public {
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    event Instructor (
        string name,
        uint age
    );
    
   function setInstructor(string _fName, uint _age) onlyOwner public {
       fName = _fName;
       age = _age;
       emit Instructor(_fName, _age);
   }
   
   function getInstructor() public constant returns (string, uint){
       return (fName, age); 
   }
}
    
    
