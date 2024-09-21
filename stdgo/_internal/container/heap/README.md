# Module: `stdgo._internal.container.heap`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function _down(_h:stdgo._internal.container.heap.Interface, _i0:stdgo.GoInt, _n:stdgo.GoInt):Bool`](<#function-_down>)

- [`function _up(_h:stdgo._internal.container.heap.Interface, _j:stdgo.GoInt):Void`](<#function-_up>)

- [`function fix(_h:stdgo._internal.container.heap.Interface, _i:stdgo.GoInt):Void`](<#function-fix>)

- [`function init(_h:stdgo._internal.container.heap.Interface):Void`](<#function-init>)

- [`function pop(_h:stdgo._internal.container.heap.Interface):stdgo.AnyInterface`](<#function-pop>)

- [`function push(_h:stdgo._internal.container.heap.Interface, _x:stdgo.AnyInterface):Void`](<#function-push>)

- [`function remove(_h:stdgo._internal.container.heap.Interface, _i:stdgo.GoInt):stdgo.AnyInterface`](<#function-remove>)

- [typedef Interface](<#typedef-interface>)

# Functions


```haxe
import stdgo._internal.container.heap.Heap_remove
```


## function \_down


```haxe
function _down(_h:stdgo._internal.container.heap.Interface, _i0:stdgo.GoInt, _n:stdgo.GoInt):Bool
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function \_up


```haxe
function _up(_h:stdgo._internal.container.heap.Interface, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function fix


```haxe
function fix(_h:stdgo._internal.container.heap.Interface, _i:stdgo.GoInt):Void
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function init


```haxe
function init(_h:stdgo._internal.container.heap.Interface):Void
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function pop


```haxe
function pop(_h:stdgo._internal.container.heap.Interface):stdgo.AnyInterface
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function push


```haxe
function push(_h:stdgo._internal.container.heap.Interface, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Heap_remove.hx#L2>)


## function remove


```haxe
function remove(_h:stdgo._internal.container.heap.Interface, _i:stdgo.GoInt):stdgo.AnyInterface
```


[\(view code\)](<./Heap_remove.hx#L2>)


# Typedefs


```haxe
import stdgo._internal.container.heap.*
```


## typedef Interface


```haxe
typedef Interface = {
	public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;	// Swap swaps the elements with indexes i and j.
	public function push(_x:stdgo.AnyInterface):Void;	// add x as element Len()
	public function pop():stdgo.AnyInterface;	// remove and return element Len() - 1.
	public function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;	// Less reports whether the element with index i must sort before the element with index j. If both Less(i, j) and Less(j, i) are false, then the elements at index i and j are considered equal. Sort may place equal elements in any order in the final result, while Stable preserves the original input order of equal elements. Less must describe a transitive ordering: - if both Less(i, j) and Less(j, k) are true, then Less(i, k) must be true as well. - if both Less(i, j) and Less(j, k) are false, then Less(i, k) must be false as well. Note that floating-point comparison (the < operator on float32 or float64 values) is not a transitive ordering when not-a-number (NaN) values are involved. See Float64Slice.Less for a correct implementation for floating-point values.
	public function len():stdgo.GoInt;	// Len is the number of elements in the collection.
};
```


