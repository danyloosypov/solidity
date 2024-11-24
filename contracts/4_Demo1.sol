pragma solidity ^0.8.0;

contract Demo {
    string public myStr = "test"; 
    mapping (address => uint) public payments;
		
    function transferTo(address payable targetAddr, uint amount) public {
        targetAddr.transfer(amount);
    }

    function getBalance(address targetAddr) public view returns(uint) {
        return targetAddr.balance;
    }
				
    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }
}