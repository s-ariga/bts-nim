# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import BSTpkg/submodule
import BSTpkg/BSTlib

test "correct welcome":
  check getWelcomeMessage() == "Hello, World!"

# 文字列もチェック
test "compare two values":
  check compare(1, 2) == 1
  check compare(2, 1) == -1
  check compare(2, 2) == 0
  check compare("a", "a") == 0

# 3つ入れてチェック
test "insert value":
  var tree = newTree[int]()
  tree.root = newNode(50)
  tree = insert(tree, 25)
  tree = insert(tree, 75)

  check tree.root.left.value == 25
  check tree.root.right.value == 75

# "insert value"と同じツリーから25を調べる
test "search value":
  var tree = newTree[int]()
  tree.root = newNode(50)
  tree = insert(tree, 25)
  tree = insert(tree, 75)

  # writeTree(tree)

  var node = search(tree, 25)
  if node == nil:
    check false
  else:
    check node.value == 25
