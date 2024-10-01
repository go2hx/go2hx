# Module: `stdgo._internal.container.list`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function new_():stdgo.Ref<stdgo._internal.container.list.List>`](<#function-new_>)

- [class Element](<#class-element>)

  - [`function new(?_next:stdgo.Ref<stdgo._internal.container.list.Element>, ?_prev:stdgo.Ref<stdgo._internal.container.list.Element>, ?_list:stdgo.Ref<stdgo._internal.container.list.List>, ?value:stdgo.AnyInterface):Void`](<#element-function-new>)

- [class List](<#class-list>)

  - [`function new(?_root:stdgo._internal.container.list.Element, ?_len:stdgo.GoInt):Void`](<#list-function-new>)

# Functions


```haxe
import stdgo._internal.container.list.List_new_
```


## function new\_


```haxe
function new_():stdgo.Ref<stdgo._internal.container.list.List>
```


[\(view code\)](<./List_new_.hx#L2>)


# Classes


```haxe
import stdgo._internal.container.list.*
```


## class Element


```haxe
var _list:stdgo.Ref<stdgo._internal.container.list.List>
```


```haxe
var _next:stdgo.Ref<stdgo._internal.container.list.Element>
```


```haxe
var _prev:stdgo.Ref<stdgo._internal.container.list.Element>
```


```haxe
var value:stdgo.AnyInterface
```


### Element function new


```haxe
function new(?_next:stdgo.Ref<stdgo._internal.container.list.Element>, ?_prev:stdgo.Ref<stdgo._internal.container.list.Element>, ?_list:stdgo.Ref<stdgo._internal.container.list.List>, ?value:stdgo.AnyInterface):Void
```


[\(view code\)](<./List_Element.hx#L7>)


## class List


```haxe
var _len:stdgo.GoInt
```


```haxe
var _root:stdgo._internal.container.list.Element
```


### List function new


```haxe
function new(?_root:stdgo._internal.container.list.Element, ?_len:stdgo.GoInt):Void
```


[\(view code\)](<./List_List.hx#L5>)


