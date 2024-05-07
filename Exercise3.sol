/*
    1. Copy contract 'Exercise2' and rename it to 'Exercise3'
    2. Declare event called 'BoxAdded' with parameters:
        a. 'width' as uint256
        b. 'length' as uint256
        c. 'heigth' as uint256
    3. Declare 3 errors called 'WidthTooSmall', 'LengthTooSmall', and 'HeightToSmall'
        Hint: declaring error in contract: error name(optional parameters)
    4. In 'addBox' function add 3 'if' statements checking if provided values are less than 10 and if condition is met then revert with error, so
        a. if 'width' < 10 then revert with 'WidthTooSmall'
        b. if 'length' < 10 then revert with 'LentghToSmall'
        c. if 'heigth' < 10 then revert with 'HeigthToSmall'
        Hint: reverting: revert Name(parameters)
    5. In 'addBox' function add emitting event with proper parameters. 
        Hint: emitting event: emit Name(parameters)
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract Exercise3 {
    error WidthTooSmall();
    error LengthTooSmall();
    error HeigthTooSmall();
    event BoxAdded(
        uint256 width,
        uint256 length,
        uint256 heigth
    );

    struct Box {
        uint256 width;
        uint256 length;
        uint256 height;
    }

    Box[] boxes;

    function addBox(uint256 width, uint256 length, uint256 height) public {
        boxes.push(Box(width,length,height));
        if (width < 10){
            revert WidthTooSmall();
        }
        if (length < 10){
            revert LengthTooSmall();
        }
        if (height < 10){
            revert HeigthTooSmall();
        }

        emit BoxAdded(width,length, height);
    }
}
