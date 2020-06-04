pragma solidity >=0.4.17 <0.7.0;

contract TodoList{
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out dappuniversity.com");
    }

    function createTask(string memory _content) public{
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}