# Module: `stdgo._internal.container.ring`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function new_(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring>`](<#function-new_>)

- [class Ring](<#class-ring>)

  - [`function new(?_next:stdgo.Ref<stdgo._internal.container.ring.Ring>, ?_prev:stdgo.Ref<stdgo._internal.container.ring.Ring>, ?value:stdgo.AnyInterface):Void`](<#ring-function-new>)

# Functions


```haxe
import stdgo._internal.container.ring.Ring_new_
```


## function new\_


```haxe
function new_(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring>
```


[\(view code\)](<./Ring_new_.hx#L2>)


# Classes


```haxe
import stdgo._internal.container.ring.*
```


## class Ring


```haxe
var _next:stdgo.Ref<stdgo._internal.container.ring.Ring>
```


```haxe
var _prev:stdgo.Ref<stdgo._internal.container.ring.Ring>
```


```haxe
var value:stdgo.AnyInterface
```


### Ring function new


```haxe
function new(?_next:stdgo.Ref<stdgo._internal.container.ring.Ring>, ?_prev:stdgo.Ref<stdgo._internal.container.ring.Ring>, ?value:stdgo.AnyInterface):Void
```


[\(view code\)](<./Ring_Ring.hx#L6>)


