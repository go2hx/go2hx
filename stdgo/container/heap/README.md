# Module: stdgo.container.heap


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [function \_down\(\_h:stdgo.container.heap.Interface, \_i0:stdgo.GoInt, \_n:stdgo.GoInt\):Bool](<#function-_down>)

- [function \_up\(\_h:stdgo.container.heap.Interface, \_j:stdgo.GoInt\):Void](<#function-_up>)

- [function fix\(\_h:stdgo.container.heap.Interface, \_i:stdgo.GoInt\):Void](<#function-fix>)

- [function init\(\_h:stdgo.container.heap.Interface\):Void](<#function-init>)

- [function pop\(\_h:stdgo.container.heap.Interface\):stdgo.AnyInterface](<#function-pop>)

- [function push\(\_h:stdgo.container.heap.Interface, \_x:stdgo.AnyInterface\):Void](<#function-push>)

- [function remove\(\_h:stdgo.container.heap.Interface, \_i:stdgo.GoInt\):stdgo.AnyInterface](<#function-remove>)

- [typedef Interface](<#typedef-interface>)

# Functions


```haxe
import stdgo.container.heap.Heap
```


## function \`\_down\`


```haxe
function _down(_h:stdgo.container.heap.Interface, _i0:stdgo.GoInt, _n:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Heap.hx#L85>)


## function \`\_up\`


```haxe
function _up(_h:stdgo.container.heap.Interface, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Heap.hx#L75>)


## function \`fix\`


```haxe
function fix(_h:stdgo.container.heap.Interface, _i:stdgo.GoInt):Void
```


Fix re\-establishes the heap ordering after the element at index i has changed its value. Changing the value of the element at index i and then calling Fix is equivalent to, but less expensive than, calling Remove\(h, i\) followed by a Push of the new value. The complexity is O\(log n\) where n = h.Len\(\). 


[\(view code\)](<./Heap.hx#L70>)


## function \`init\`


```haxe
function init(_h:stdgo.container.heap.Interface):Void
```


Init establishes the heap invariants required by the other routines in this package. Init is idempotent with respect to the heap invariants and may be called whenever the heap invariants may have been invalidated. The complexity is O\(n\) where n = h.Len\(\). 


[\(view code\)](<./Heap.hx#L22>)


## function \`pop\`


```haxe
function pop(_h:stdgo.container.heap.Interface):stdgo.AnyInterface
```


Pop removes and returns the minimum element \(according to Less\) from the heap. The complexity is O\(log n\) where n = h.Len\(\). Pop is equivalent to Remove\(h, 0\). 


[\(view code\)](<./Heap.hx#L44>)


## function \`push\`


```haxe
function push(_h:stdgo.container.heap.Interface, _x:stdgo.AnyInterface):Void
```


Push pushes the element x onto the heap. The complexity is O\(log n\) where n = h.Len\(\). 


[\(view code\)](<./Heap.hx#L35>)


## function \`remove\`


```haxe
function remove(_h:stdgo.container.heap.Interface, _i:stdgo.GoInt):stdgo.AnyInterface
```


Remove removes and returns the element at index i from the heap. The complexity is O\(log n\) where n = h.Len\(\). 


[\(view code\)](<./Heap.hx#L54>)


# Typedefs


```haxe
import stdgo.container.heap.*
```


## typedef Interface


```haxe
typedef Interface = var a:{<__underlying__> | (_i:stdgo.GoInt, _j:stdgo.GoInt):Void | {<haxe_doc>} | (_x:stdgo.AnyInterface):Void | ():stdgo.AnyInterface | (_i:stdgo.GoInt, _j:stdgo.GoInt):Bool | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.AnyInterface}
```


 


