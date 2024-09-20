# Module: `stdgo._internal.sync.atomic_`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _b32(_b:Bool):stdgo.GoUInt32`](<#function-_b32>)

- [`function _runtime_procPin():stdgo.GoInt`](<#function-_runtime_procpin>)

- [`function _runtime_procUnpin():Void`](<#function-_runtime_procunpin>)

- [`function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32`](<#function-addint32>)

- [`function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64`](<#function-addint64>)

- [`function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-adduint32>)

- [`function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-adduint64>)

- [`function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-adduintptr>)

- [`function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool`](<#function-compareandswapint32>)

- [`function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool`](<#function-compareandswapint64>)

- [`function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Bool`](<#function-compareandswappointer>)

- [`function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool`](<#function-compareandswapuint32>)

- [`function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool`](<#function-compareandswapuint64>)

- [`function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool`](<#function-compareandswapuintptr>)

- [`function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32`](<#function-loadint32>)

- [`function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64`](<#function-loadint64>)

- [`function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):stdgo._internal.unsafe.UnsafePointer`](<#function-loadpointer>)

- [`function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32`](<#function-loaduint32>)

- [`function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64`](<#function-loaduint64>)

- [`function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr`](<#function-loaduintptr>)

- [`function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void`](<#function-storeint32>)

- [`function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void`](<#function-storeint64>)

- [`function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-storepointer>)

- [`function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void`](<#function-storeuint32>)

- [`function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void`](<#function-storeuint64>)

- [`function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void`](<#function-storeuintptr>)

- [`function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32`](<#function-swapint32>)

- [`function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64`](<#function-swapint64>)

- [`function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer`](<#function-swappointer>)

- [`function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-swapuint32>)

- [`function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-swapuint64>)

- [`function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-swapuintptr>)

- [class Bool\_](<#class-bool_>)

  - [`function new(?__1:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#bool_-function-new>)

- [class Int32](<#class-int32>)

  - [`function new(?__7:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void`](<#int32-function-new>)

- [class Int64\_](<#class-int64_>)

  - [`function new(?__10:stdgo._internal.sync.atomic_.T_noCopy, ?__11:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void`](<#int64_-function-new>)

- [class Pointer\_](<#class-pointer_>)

  - [`function new(?__4:stdgo.GoArray<stdgo.Ref<Dynamic>>, ?__5:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.UnsafePointer):Void`](<#pointer_-function-new>)

- [class T\_align64](<#class-t_align64>)

  - [`function new():Void`](<#t_align64-function-new>)

- [class T\_efaceWords](<#class-t_efacewords>)

  - [`function new(?_typ:stdgo._internal.unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.UnsafePointer):Void`](<#t_efacewords-function-new>)

- [class T\_noCopy](<#class-t_nocopy>)

  - [`function new():Void`](<#t_nocopy-function-new>)

- [class Uint32](<#class-uint32>)

  - [`function new(?__12:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#uint32-function-new>)

- [class Uint64](<#class-uint64>)

  - [`function new(?__15:stdgo._internal.sync.atomic_.T_noCopy, ?__16:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void`](<#uint64-function-new>)

- [class Uintptr](<#class-uintptr>)

  - [`function new(?__18:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void`](<#uintptr-function-new>)

- [class Value](<#class-value>)

  - [`function new(?_v:stdgo.AnyInterface):Void`](<#value-function-new>)

# Variables


```haxe
import stdgo._internal.sync.atomic_.Atomic__swapUintptr
```


```haxe
var __23:stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_<stdgo.GoInt>>
```


```haxe
var __24:stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_<stdgo.GoInt>>
```


```haxe
var _firstStoreInProgress:stdgo.GoUInt8
```


# Functions


```haxe
import stdgo._internal.sync.atomic_.Atomic__swapUintptr
```


## function \_b32


```haxe
function _b32(_b:Bool):stdgo.GoUInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function \_runtime\_procPin


```haxe
function _runtime_procPin():stdgo.GoInt
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function \_runtime\_procUnpin


```haxe
function _runtime_procUnpin():Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function addInt32


```haxe
function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function addInt64


```haxe
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function addUint32


```haxe
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function addUint64


```haxe
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function addUintptr


```haxe
function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapInt32


```haxe
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapInt64


```haxe
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapPointer


```haxe
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapUint32


```haxe
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapUint64


```haxe
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function compareAndSwapUintptr


```haxe
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadInt32


```haxe
function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadInt64


```haxe
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadPointer


```haxe
function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadUint32


```haxe
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadUint64


```haxe
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function loadUintptr


```haxe
function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storeInt32


```haxe
function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storeInt64


```haxe
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storePointer


```haxe
function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storeUint32


```haxe
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storeUint64


```haxe
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function storeUintptr


```haxe
function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapInt32


```haxe
function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapInt64


```haxe
function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapPointer


```haxe
function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapUint32


```haxe
function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapUint64


```haxe
function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


## function swapUintptr


```haxe
function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic__swapUintptr.hx#L2>)


# Classes


```haxe
import stdgo._internal.sync.atomic_.*
```


## class Bool\_


```haxe
var __1:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Bool\_ function new


```haxe
function new(?__1:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic__Bool_.hx#L6>)


## class Int32


```haxe
var __7:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoInt32
```


### Int32 function new


```haxe
function new(?__7:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic__Int32.hx#L6>)


## class Int64\_


```haxe
var __10:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var __11:stdgo._internal.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoInt64
```


### Int64\_ function new


```haxe
function new(?__10:stdgo._internal.sync.atomic_.T_noCopy, ?__11:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic__Int64_.hx#L8>)


## class Pointer\_


```haxe
var __4:stdgo.GoArray<stdgo.Ref<Dynamic>>
```


```haxe
var __5:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo._internal.unsafe.UnsafePointer
```


### Pointer\_ function new


```haxe
function new(?__4:stdgo.GoArray<stdgo.Ref<Dynamic>>, ?__5:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic__Pointer_.hx#L8>)


## class T\_align64


### T\_align64 function new


```haxe
function new():Void
```


[\(view code\)](<./Atomic__T_align64.hx#L3>)


## class T\_efaceWords


```haxe
var _data:stdgo._internal.unsafe.UnsafePointer
```


```haxe
var _typ:stdgo._internal.unsafe.UnsafePointer
```


### T\_efaceWords function new


```haxe
function new(?_typ:stdgo._internal.unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic__T_efaceWords.hx#L5>)


## class T\_noCopy


### T\_noCopy function new


```haxe
function new():Void
```


[\(view code\)](<./Atomic__T_noCopy.hx#L3>)


## class Uint32


```haxe
var __12:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Uint32 function new


```haxe
function new(?__12:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic__Uint32.hx#L6>)


## class Uint64


```haxe
var __15:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var __16:stdgo._internal.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoUInt64
```


### Uint64 function new


```haxe
function new(?__15:stdgo._internal.sync.atomic_.T_noCopy, ?__16:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic__Uint64.hx#L8>)


## class Uintptr


```haxe
var __18:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUIntptr
```


### Uintptr function new


```haxe
function new(?__18:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic__Uintptr.hx#L6>)


## class Value


```haxe
var _v:stdgo.AnyInterface
```


### Value function new


```haxe
function new(?_v:stdgo.AnyInterface):Void
```


[\(view code\)](<./Atomic__Value.hx#L4>)


