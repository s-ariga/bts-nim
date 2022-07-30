# Seiichi Ariga <seiichi.ariga@gmail.com>

type
  Node*[T] = ref object
    value*: T
    left*: Node[T]
    right*: Node[T]
  Tree*[T] = ref object
    root*: Node[T]
    size: int

func newTree*[T](): Tree[T] =
  return Tree[T]()

func newNode*[T](value: T): Node[T] =
  return Node[T](value: value)

func compare*[T](value1: T, value2: T): int =
  # 同じなら0、第1引数が小さいなら1, 第2引数が小さいなら-1
  if value1 < value2:
    return 1
  if value1 > value2:
    return -1
  return 0

func insert*[T](tree: Tree[T], value: T): Tree[T] =
  # 木にノードが一つもない時は、新しいノードを作ってルートにする
  if tree.root == nil:
    tree.root = newNode(value)
    tree.size += 1
    return tree

  # 木にノードがあるときは、ルートから探索を開始していく
  var curr = tree.root
  while true:
    # 現在地の値よりも小さい場合は左に入れる
    if curr.value.compare(value) == -1:
      if curr.left == nil:
        curr.left = newNode(value)
        tree.size += 1
        return tree
      else:
        curr = curr.left
    # 現在地の値よりも大きい場合は右に入れる
    else:
      if curr.right == nil:
        curr.right = newNode(value)
        tree.size += 1
        return tree
      else:
        curr = curr.right

func search*[T](tree: Tree[T], value: T): Node[T] =
  # 木にノードが一つもない時は、nilを返す
  if tree.root == nil:
    return nil

  # 木にノードがあるときは、ルートから順番に探していく
  var curr = tree.root
  while true:
    case curr.value.compare(value):
      of 0:
        return curr
      of -1:
        if curr.left == nil:
          return nil
        else:
          curr = curr.left
      of 1:
        if curr.right == nil:
          return nil
        else:
          curr = curr.right
      else:
        return nil

proc writeNode*[T](node: Node[T]) =
  if node == nil:
    return
  echo node.value
  if node.left != nil:
    writeNode(node.left)
  if node.right != nil:
    writeNode(node.right)

proc writeTree*[T](tree: Tree[T]) =
  if tree.root == nil:
    return
  writeNode(tree.root)


