# Module: `stdgo._internal.unsafe`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [`function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-alignof_>)

- [`function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-offsetof_>)

- [`function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-sizeof>)

- [`function slice(_ptr:stdgo.Pointer<Dynamic>, _len:stdgo.GoInt):Array<Dynamic>`](<#function-slice>)

- [`function sliceData(s:stdgo.Slice<sliceData.T>):Dynamic`](<#function-slicedata>)

- [`function string(s:stdgo.Pointer<stdgo.GoByte>, len:stdgo.GoInt):stdgo.GoString`](<#function-string>)

- [`function stringData(s:stdgo.GoString):Dynamic`](<#function-stringdata>)

- [`function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-alignof_>)

- [`function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-offsetof_>)

- [`function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-sizeof>)

- [`function slice(_ptr:stdgo.Pointer<Dynamic>, _len:stdgo.GoInt):Array<Dynamic>`](<#function-slice>)

- [`function sliceData(s:stdgo.Slice<sliceData.T>):Dynamic`](<#function-slicedata>)

- [`function string(s:stdgo.Pointer<stdgo.GoByte>, len:stdgo.GoInt):stdgo.GoString`](<#function-string>)

- [`function stringData(s:stdgo.GoString):Dynamic`](<#function-stringdata>)

- [typedef Pointer\_](<#typedef-pointer_>)

- [abstract UnsafePointer](<#abstract-unsafepointer>)

# Functions


```haxe
import stdgo._internal.unsafe.Unsafe_stringData
```


## function alignof\_


```haxe
function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L64>)


## function offsetof\_


```haxe
function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L60>)


## function sizeof


```haxe
function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L56>)


## function slice


```haxe
function slice(_ptr:stdgo.Pointer<Dynamic>, _len:stdgo.GoInt):Array<Dynamic>
```


[\(view code\)](<./Unsafe_stringData.hx#L78>)


## function sliceData


```haxe
function sliceData(s:stdgo.Slice<sliceData.T>):Dynamic
```


[\(view code\)](<./Unsafe_stringData.hx#L72>)


## function string


```haxe
function string(s:stdgo.Pointer<stdgo.GoByte>, len:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Unsafe_stringData.hx#L75>)


## function stringData


```haxe
function stringData(s:stdgo.GoString):Dynamic
```


[\(view code\)](<./Unsafe_stringData.hx#L69>)


## function alignof\_


```haxe
function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L3>)


## function offsetof\_


```haxe
function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L3>)


## function sizeof


```haxe
function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr
```


[\(view code\)](<./Unsafe_stringData.hx#L4>)


## function slice


```haxe
function slice(_ptr:stdgo.Pointer<Dynamic>, _len:stdgo.GoInt):Array<Dynamic>
```


[\(view code\)](<./Unsafe_stringData.hx#L4>)


## function sliceData


```haxe
function sliceData(s:stdgo.Slice<sliceData.T>):Dynamic
```


[\(view code\)](<./Unsafe_stringData.hx#L4>)


## function string


```haxe
function string(s:stdgo.Pointer<stdgo.GoByte>, len:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Unsafe_stringData.hx#L4>)


## function stringData


```haxe
function stringData(s:stdgo.GoString):Dynamic
```


[\(view code\)](<./Unsafe_stringData.hx#L4>)


# Typedefs


```haxe
import stdgo._internal.unsafe.*
```


## typedef Pointer\_


```haxe
typedef Pointer_ = stdgo._internal.unsafe.UnsafePointer;
```


# Abstracts


## abstract UnsafePointer


[\(view file containing code\)](<./Unsafe.hx>)


