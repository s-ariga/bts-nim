# Binary Search Tree programming challenge

<https://medium.com/@jamis/weekly-programming-challenge-1-55b63b9d2a1>

## Normal Mode

Implement a binary search tree in the language of your choice. It should:

1. Be configurable to support any kind of ordered data, though you may expect the data to be homogenous. (That is to say, you don’t have to compare strings and integers in the same tree, but your tree should support comparing both strings and integers, and any other ordered kind of data.)
2. Support “insert” operations (adding values to the tree, in appropriate order.)
3. Support “search” operations (finding a node with a specific value).
Optionally support “delete” operations (removing a node from the tree). This is trickier than it sounds — but if you want a bit more challenge without going full-on hard mode, feel free to give this a try!

## Hard Mode

The problem is that binary search trees can degenerate into simple linked lists, especially if given data that is already sorted. The root node points to just one child, which points to just one child, which points to just one child, all the way down to the one leaf of the tree. Searching this is not optimal — to find the value at the leaf, you wind up looking at every node of the tree! How do you get around that? Self-balancing binary search trees. There are several data structures that fall into this category, including AA trees, AVL trees, and Red-Black trees. For hard mode, implement one of these, with all the same requirements as normal mode, PLUS support for delete operations.
