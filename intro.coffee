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

getRange = (arr, start, stop) -> return arr[start.. stop]

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

