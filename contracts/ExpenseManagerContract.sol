// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract ExpenseManagerContract {
    address public owner;

    struct Transaction {
        address user;
        uint amount;
        string description;
        uint timestamp;
    }

    Transaction[] public transactions;

    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner can Excute this");
        _;
    }

    mapping(address => uint) public balances;

    event Deposit(
        address indexed _from,
        uint _amount,
        string _reason,
        uint _timeStamp
    );
    event Withdraw(
        address indexed _to,
        uint _amount,
        string _reason,
        uint _timeStamp
    );

    function diposit(uint _amount, string memory _desc) public payable {
        require(_amount > 0, "Deposit amount should be grater than 0");
        balances[msg.sender] += _amount;
        transactions.push(
            Transaction(msg.sender, _amount, _desc, block.timestamp)
        );
        emit Deposit(msg.sender, _amount, _desc, block.timestamp);
    }

    function withdraw(uint _amount, string memory _reason) public {
        require(balances[msg.sender] >= _amount, "Insufficient Balance");
        balances[msg.sender] -= _amount;
        transactions.push(
            Transaction(msg.sender, _amount, _reason, block.timestamp)
        );
        payable(msg.sender).transfer(_amount);
        emit Withdraw(msg.sender, _amount, _reason, block.timestamp);
    }
    function getBalance(address _acount) public view returns (uint) {
        return balances[_acount];
    }
    function getTransaction() public view returns (uint) {
        return transactions.length;
    }
    function gerTransactionCount(
        uint _index
    ) public view returns (address, uint, string memory, uint) {
        require(_index < transactions.length, "Index out of range");
        Transaction memory transaction = transactions[_index];
        return (
            transaction.user,
            transaction.amount,
            transaction.description,
            transaction.timestamp
        );
    }
    function getAllTransactoion()
        public
        view
        returns (
            address[] memory,
            uint[] memory,
            string[] memory,
            uint[] memory
        )
    {
        address[] memory user = new address[](transactions.length);
        uint[] memory amount = new uint[](transactions.length);
        string[] memory description = new string[](transactions.length);
        uint[] memory timeStamp = new uint[](transactions.length);

        for (uint i = 0; i <= transactions.length; i++) {
            user[i] = transactions[i].user;
            amount[i] = transactions[i].amount;
            description[i] = transactions[i].description;
            timeStamp[i] = transactions[i].timestamp;
        }
        return (user, amount, description, timeStamp);
    }
    function ChangeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
}
