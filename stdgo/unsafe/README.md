# Module: `stdgo.unsafe`

[(view library index)](../stdgo.md)


# Overview





# Index


- [`function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-alignof_>)

- [`function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-offsetof_>)

- [`function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-sizeof>)

- [`function sliceData(s:stdgo.Slice<sliceData.T>):stdgo.Slice<sliceData.T>`](<#function-slicedata>)

- [`function string(s:stdgo.GoString, len:stdgo.GoInt):stdgo.GoString`](<#function-string>)

- [`function stringData(s:stdgo.GoString):stdgo.GoString`](<#function-stringdata>)

- [typedef Pointer\_](<#typedef-pointer_>)

# Functions


```haxe
import stdgo.unsafe.Unsafe
```


## function alignof\_


```haxe
function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```





[\(view code\)](<./Unsafe.hx#L67>)


## function offsetof\_


```haxe
function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr
```





[\(view code\)](<./Unsafe.hx#L63>)


## function sizeof


```haxe
function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr
```





[\(view code\)](<./Unsafe.hx#L59>)


## function sliceData


```haxe
function sliceData(s:stdgo.Slice<sliceData.T>):stdgo.Slice<sliceData.T>
```





[\(view code\)](<./Unsafe.hx#L75>)


## function string


```haxe
function string(s:stdgo.GoString, len:stdgo.GoInt):stdgo.GoString
```





[\(view code\)](<./Unsafe.hx#L78>)


## function stringData


```haxe
function stringData(s:stdgo.GoString):stdgo.GoString
```





[\(view code\)](<./Unsafe.hx#L72>)


# Typedefs


```haxe
import stdgo.unsafe.*
```


## typedef Pointer\_


```haxe
typedef Pointer_ = var x:{<>}
```





