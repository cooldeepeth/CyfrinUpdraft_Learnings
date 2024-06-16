// SPDX-License-Identifier: MIT
// This line is a license identifier for the code that follows. It indicates that this code is licensed under the MIT License.

pragma solidity 0.8.26;
// This line sets the Solidity compiler version to 0.8.19. It ensures that the code is compiled with this specific version of the Solidity compiler.

contract SimpleStorage {
    // This line declares a new contract named SimpleStorage.

    uint256 myFavoriteNumber;
    // This line declares a state variable named myFavoriteNumber of type uint256. It is not initialized and can be modified by the contract's functions.

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // This line declares a struct named Person with two members: favoriteNumber of type uint256 and name of type string.

    Person[] public listOfPeople;
    // This line declares a state variable named listOfPeople of type Person array. It is public, which means that it can be accessed from outside the contract.

    mapping(string => uint256) public nameToFavoriteNumber;
    // This line declares a public mapping named nameToFavoriteNumber from strings to uint256. It can be used to map names to favorite numbers.

    function store(uint256 _favoriteNumber) public {
        // This line declares a public function named store that takes a uint256 argument named _favoriteNumber.

        myFavoriteNumber = _favoriteNumber;
        // This line assigns the value of _favoriteNumber to the state variable myFavoriteNumber.
    }

    function retrieve() public view returns (uint256) {
        // This line declares a public view function named retrieve that returns a uint256.

        return myFavoriteNumber;
        // This line returns the value of the state variable myFavoriteNumber.
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // This line declares a public function named addPerson that takes a string memory argument named _name and a uint256 argument named _favoriteNumber.

        listOfPeople.push(Person(_favoriteNumber, _name));
        // This line appends a new Person instance with _favoriteNumber and _name to the listOfPeople array.

        nameToFavoriteNumber[_name] = _favoriteNumber;
        // This line maps the name to the favorite number in the nameToFavoriteNumber mapping.
    }
}
