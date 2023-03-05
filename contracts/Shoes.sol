pragma solidity ^0.8.13;

contract ShoesX {
    struct Shoe{
        bytes32 name;
        uint256 cost;
        uint256 stock;
        uint256 size;
    }

    mapping(bytes32 => Shoe) public shoes;
    address payable owner;

    constructor() public {
        owner = payable(msg.sender);
    }

    function addShoe(bytes32 name, uint256 cost, uint256 stock, uint256 size) public{
        require(msg.sender == owner, "Only employees can update prices");
        shoes[name] = Shoe(name, cost, stock, size);
    }

    function increaseShoeCost(bytes32 name, uint256 cost) public{
        require(msg.sender = owner, "Only empployes can update the prices");
        require(shoes[name].cost > 0, "Shoes do not exist");
        shoes[name].cost = cost;
    }

    function updateShoeStock(bytes32 name, uint256 stock) public{
        require(msg.sender = owner, "Only empployes can update the prices");
        require(shoes[name].cost > 0, "Shoes do not exist");
        shoes[name].stock = stock;
    }


}