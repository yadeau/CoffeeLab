assert = require 'assert'

##Tests and Functions for Loops and Comprehention##

describe "testing mult3", ->
  arr = [1,2,3,4,5]
  correctArr = [3,6,9,12,15]
  it "should return an array of 3,6,9,12,15", ->
    assert.deepEqual(mult3(arr), correctArr)

describe "testing makeButts", ->
  buttstin = "buttsbuttsbuttsbuttsbuttsbutts"
  it "should return six butts", ->
    assert.equal(makeButts("Justin"), buttstin)

describe "testing count", ->
  it "should return an array counting up to and including 5", ->
    assert.deepEqual(count(5), [1,2,3,4,5])

mult3 = (arr) -> (num*3 for num in arr)

ret = ""
makeButts = (str) ->
  ret += "butts" for ch in str
  ret

count = (num) -> n for n in [1..num]

##Tests and Functions for slicing and splicing##

describe "Testing slices", ->
  strArr = ["A","B","C","D","F"]
  it "Should return an array", ->
    assert.deepEqual(slices(0, 2, strArr), ["A","B","C"])

describe "Test spliceMeow", ->
  it "Should return an array of numbers with meow spliced into it at a given section", ->
    assert.deepEqual(spliceMeow(6, 4, 6), [1,2,3,4,"Meow","Meow"])
  it "Should return an array of numers with meow spliced into a given section", ->
    assert.deepEqual(spliceMeow(7, 0, 4), ["Meow","Meow","Meow","Meow",6,7])


describe "Testing stringSplice", ->
  str = "Isaac"
  it "Should replace part of this string with something new charicters", ->
    assert.equal(stringSplice(str, 0, 3, "butt"), "buttac")

describe "Testing getRange",->

  it "Should return a section of an array", ->
    arr = [1,2,3,4,5,6,7]
    assert.deepEqual(getRange( arr, 4, 7), [5, 6, 7])

slices = (start, stop, arr) -> arr[start..stop]

spliceMeow = (size, start, stop) ->
  arr =
    "Meow" for meow in [0..stop - start - 1]
  ret = count(size)
  ret[start..stop] = arr
  ret

stringSplice = (str, start, stop, newStr) -> str[start..stop] = newStr + str[stop.. str.length]

getRange = (arr, start, stop) -> arr[start.. stop]

##Tests and functions for operators##

describe "Testing operators", ->
  it "Should retrun true if two strings are the same person", ->
    assert.equal(whoISWho("Isaac","Justin"), false)
  it "should return true if a number is in at least one array", ->
    assert.equal(checkArr([0,6,7,1],[5,8,2,4], 4), true)
  it "should return true", ->
    assert.equal(truth(),true)

whoISWho = (person1, person2) -> person1 is person2

checkArr = (arr1, arr2, num) ->  num in arr1 or num in arr2

truth = () -> yes or no

banana = null
describe "Testing extistentials", ->
  it "Should return true if the variable does not exist", ->
    assert.equal(notExists("computers"), false)
    assert.equal(notExists(banana), true)
  it "Should return 7 if the variable does not exist", ->
    assert.equal(makeSeven(null),7)

notExists = (thing) -> not thing?

makeSeven = (steve) -> 7 if not steve?

##Tests and functions for Destrutoring##

describe "switchedArr", ->
  it "Should return the array with 1 2 and 3 as the only values", ->
    assert.deepEqual(switchedArr(["a","b","c","d"]),[1,2,3])
    assert.deepEqual(switchedArr([1,3,5,7,3,77,5]), [1,2,3])
    assert.deepEqual(switchedArr(["d"]), [1,2,3])


switchedArr = (arr) ->
  changeArr = [1,2,3]
  arr = changeArr
  arr

describe "Testing splats", ->
  it "Should return 10", ->
    assert.equal(sumNums(1,2,5,2,6,-6),10)
  it "Should return 4", ->
    assert.equal(sumNums(2,2),4)
  it "Should return 0", ->
    assert.equal(sumNums(0),0)

sumNums = (num, others...) ->
  num += number for number in others
  num

