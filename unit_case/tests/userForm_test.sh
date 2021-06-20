#! /bin/sh

# update this variable to test 
input="Tom123"

# test script for alpha char validation
test_alpha_char() {
  output=$(../userForm.sh $input | head -1)
  assertEquals "Loading your Data, please hold on..." "$output"
}

# test script for numeric char validation
test_numeric_char() {
  output=$(../userForm.sh $input | head -1)
  assertEquals "Please enter Valid Name" "$output"
}

. /LEENA/shunit2-master/shunit2
