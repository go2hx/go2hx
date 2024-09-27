# Module: `stdgo.container.heap`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Heap](<#class-heap>)

  - [`function fix(_h:stdgo.container.heap.Interface, _i:Int):Void`](<#heap-function-fix>)

  - [`function init(_h:stdgo.container.heap.Interface):Void`](<#heap-function-init>)

  - [`function pop(_h:stdgo.container.heap.Interface):stdgo.AnyInterface`](<#heap-function-pop>)

  - [`function push(_h:stdgo.container.heap.Interface, _x:stdgo.AnyInterface):Void`](<#heap-function-push>)

  - [`function remove(_h:stdgo.container.heap.Interface, _i:Int):stdgo.AnyInterface`](<#heap-function-remove>)

- [typedef Interface](<#typedef-interface>)

# Classes


```haxe
import
```


## class Heap


```
Package heap provides heap operations for any type that implements
    heap.Interface. A heap is a tree with the property that each node is the
    minimum-valued node in its subtree.
```

The minimum element in the tree is the root, at index 0.  


A heap is a common way to implement a priority queue. To build a priority
queue, implement the Heap interface with the \(negative\) priority as the
ordering for the Less method, so Push adds items while Pop removes the
highest\-priority item from the queue. The Examples include such an
implementation; the file example\_pq\_test.go has the complete source.  

### Heap function fix


```haxe
function fix(_h:stdgo.container.heap.Interface, _i:Int):Void
```


```
Fix re-establishes the heap ordering after the element at index i has changed its value.
        Changing the value of the element at index i and then calling Fix is equivalent to,
        but less expensive than, calling Remove(h, i) followed by a Push of the new value.
        The complexity is O(log n) where n = h.Len().
```
[\(view code\)](<./Heap.hx#L62>)


### Heap function init


```haxe
function init(_h:stdgo.container.heap.Interface):Void
```


```
Init establishes the heap invariants required by the other routines in this package.
        Init is idempotent with respect to the heap invariants
        and may be called whenever the heap invariants may have been invalidated.
        The complexity is O(n) where n = h.Len().
```
[\(view code\)](<./Heap.hx#L31>)


### Heap function pop


```haxe
function pop(_h:stdgo.container.heap.Interface):stdgo.AnyInterface
```


```
Pop removes and returns the minimum element (according to Less) from the heap.
        The complexity is O(log n) where n = h.Len().
        Pop is equivalent to Remove(h, 0).
```
[\(view code\)](<./Heap.hx#L46>)


### Heap function push


```haxe
function push(_h:stdgo.container.heap.Interface, _x:stdgo.AnyInterface):Void
```


```
Push pushes the element x onto the heap.
        The complexity is O(log n) where n = h.Len().
```
[\(view code\)](<./Heap.hx#L38>)


### Heap function remove


```haxe
function remove(_h:stdgo.container.heap.Interface, _i:Int):stdgo.AnyInterface
```


```
Remove removes and returns the element at index i from the heap.
        The complexity is O(log n) where n = h.Len().
```
[\(view code\)](<./Heap.hx#L53>)


# Typedefs


```haxe
import
```


## typedef Interface


```haxe
typedef Interface = stdgo._internal.container.heap.Interface;
```


