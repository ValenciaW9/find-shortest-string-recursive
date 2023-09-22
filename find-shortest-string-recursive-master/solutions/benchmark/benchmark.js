function findShortestStringRecursive(arr) {
  if (arr.length === 1) {
    return arr[0];
  }

  const result = findShortestStringRecursive(arr.slice(1));

  return arr[0].length <= result.length ? arr[0] : result;
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'a'");
  console.log(findShortestStringRecursive(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log(findShortestStringRecursive(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log(findShortestStringRecursive(['flower', 'juniper', 'lily', 'dandelion']));

  console.log("");

  console.log("Expecting: 'ardvark'");
  console.log(findShortestStringRecursive(['ardvark']));
}

function findShortestStringRecursive(arr) {
  let shortest = '';
  if (arr.length > 0) {
    for (let i = 0; i < arr.length; i++) {
      if (typeof arr[i] === 'string') {
        shortest = findShortestStringRecursive(arr.slice(1));
        if (arr[i].length <= shortest.length) {
          shortest = arr[i];
        }
      }
    }
  }
  return shortest;
}

console.log("Expecting: 'lily'");
console.log(findShortestStringRecursive(['flower', 'juniper', 'lily', 'dandelion']));

// Please add your pseudocode to this file
/**
 * The `findShortestStringRecursive` function recursively finds the shortest string in an array.
 * @param arr - ['flower', 'juniper', 'lily', 'dandelion']
 * @returns The function `findShortestStringRecursive` is being called with the array `['flower',
 * 'juniper', 'lily', 'dandelion']`. The expected output is `'lily'`, which is the shortest string in
 * the array.
 */

//*************************************************************************************************

/***************************************************************************************************/

// And a written explanation of your solution
/*************************************************************************************************
* We can start coding this solution with the base case: if there is only one element in the array
* return it. After that, we need to compare every element in the array to find the shortest. We
* do this by recursively calling the method with a smaller and smaller array. Since we're removing
* the first element from the array each time we recurse, this means we can compare the return value
* of our recursive call to the first element in the array in that frame. The shortest one gets
* returned up the stack. For example, if we had an array of two elements ['cat', 'dogs'], the
* initial call would occur, and then a recursive call would occur with the argument ['dogs']. 'dogs'
* would then be returned up the stack, since the base case would be triggered, so 'dogs' would now
* be stored in result. On the last line 'cat' is compared to 'dogs', and the shorter one is returned.
***************************************************************************************************/
