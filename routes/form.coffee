assert = require 'assert'

###
describe "Testing GPA functions", ->
  it "Should return 4.00", ->
    assert.equal(convertGrade("A"), 4.00)
  it "Should return 2.4", ->
    assert.equal(convertGrade("C-"), 1.70)

  it "Should return 3.1", ->
    assert.equal(computeGPA(["C","A","B+","F"], [2,5,4,1]), 3.1)

  it "Should return 10", ->
    assert.equal(sumCredits([1,5,2,2]),10)
###
headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>GPA Calculator</title>\n
    <script src = /routes/form.js></script>\n
</head>\n
<body>\n
<h2><u>GPA CALCULATOR</u></h2><br />'

sumCredits = (creds) ->
  c = 0
  for i in creds
    c += i
  c

sumGrades = (grades, creds) ->
  g = 0
  for i in [0...grades.length]
    g += (convertGrade grades[i]) * creds[i]
  g

convertGrade = (letGr) ->
  points = 0.00
  if letGr is "A"
    points = 4.00
  else if letGr is "A-"
    points = 3.70
  else if letGr is "B+"
      points = 3.30
  else if letGr is "B"
      points = 3.00
  else if letGr is "B-"
      points = 2.70
  else if letGr is "C+"
      points = 2.30
  else if letGr is "C"
      points = 2.00
  else if letGr is "C-"
      points = 1.70
  else if letGr is "D+"
      points = 1.30
  else if letGr is "D"
      points = 1.00
  else if letGr is "D-"
      points = 0.70
  else
    points = 0.00
  points

computeGPA = (grades, credits) -> (sumGrades grades, credits) / sumCredits credits

exports.formResponse = (req, res) ->
  res.render 'form'

exports.postResponse = (req, res) ->
  res.send '<p>WIN!</p>'