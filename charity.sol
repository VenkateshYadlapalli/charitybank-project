pragma solidity >=0.4.22 < 0.7.0;
contract charity{
    
    
    address public Myaddr;
    uint256 public totbal;
    constructor() public {
        Myaddr= msg.sender;
    }
    function receiveEThers() public payable {
        totbal+=msg.value;
        
    }
    function withdrawThers() public{
        address payable to = msg.sender;
        to.transfer(address(this).balance);
        
    }
    function withdrawEtherstothisEOA(address payable _EOAaddr) public {
        _EOAaddr.transfer(address(this).balance);
        
    }
    function currentEtherincontract() public view returns(uint256){
        return(Myaddr.balance);
    }
}
