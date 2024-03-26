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

  - [`function new(?__2:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#bool_-function-new>)

  - [`function compareAndSwap( _old:Bool, _new:Bool):Bool`](<#bool_-function-compareandswap>)

  - [`function load():Bool`](<#bool_-function-load>)

  - [`function store( _val:Bool):Void`](<#bool_-function-store>)

  - [`function swap( _new:Bool):Bool`](<#bool_-function-swap>)

- [class Int32](<#class-int32>)

  - [`function new(?__8:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void`](<#int32-function-new>)

  - [`function add( _delta:stdgo.GoInt32):stdgo.GoInt32`](<#int32-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool`](<#int32-function-compareandswap>)

  - [`function load():stdgo.GoInt32`](<#int32-function-load>)

  - [`function store( _val:stdgo.GoInt32):Void`](<#int32-function-store>)

  - [`function swap( _new:stdgo.GoInt32):stdgo.GoInt32`](<#int32-function-swap>)

- [class Int64\_](<#class-int64_>)

  - [`function new(?__11:stdgo._internal.sync.atomic_.T_noCopy, ?__12:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void`](<#int64_-function-new>)

  - [`function add( _delta:stdgo.GoInt64):stdgo.GoInt64`](<#int64_-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool`](<#int64_-function-compareandswap>)

  - [`function load():stdgo.GoInt64`](<#int64_-function-load>)

  - [`function store( _val:stdgo.GoInt64):Void`](<#int64_-function-store>)

  - [`function swap( _new:stdgo.GoInt64):stdgo.GoInt64`](<#int64_-function-swap>)

- [class Pointer\_](<#class-pointer_>)

  - [`function new(?__5:stdgo.GoArray<stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_.T_>>, ?__6:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.UnsafePointer):Void`](<#pointer_-function-new>)

  - [`function compareAndSwap( __generic__0:compareAndSwap.T_, _old:stdgo.Ref<compareAndSwap.T_>, _new:stdgo.Ref<compareAndSwap.T_>):Bool`](<#pointer_-function-compareandswap>)

  - [`function load( __generic__0:load.T_):stdgo.Ref<load.T_>`](<#pointer_-function-load>)

  - [`function store( __generic__0:store.T_, _val:stdgo.Ref<store.T_>):Void`](<#pointer_-function-store>)

  - [`function swap( __generic__0:swap.T_, _new:stdgo.Ref<swap.T_>):stdgo.Ref<swap.T_>`](<#pointer_-function-swap>)

- [class Uint32](<#class-uint32>)

  - [`function new(?__13:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#uint32-function-new>)

  - [`function add( _delta:stdgo.GoUInt32):stdgo.GoUInt32`](<#uint32-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool`](<#uint32-function-compareandswap>)

  - [`function load():stdgo.GoUInt32`](<#uint32-function-load>)

  - [`function store( _val:stdgo.GoUInt32):Void`](<#uint32-function-store>)

  - [`function swap( _new:stdgo.GoUInt32):stdgo.GoUInt32`](<#uint32-function-swap>)

- [class Uint64](<#class-uint64>)

  - [`function new(?__16:stdgo._internal.sync.atomic_.T_noCopy, ?__17:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void`](<#uint64-function-new>)

  - [`function add( _delta:stdgo.GoUInt64):stdgo.GoUInt64`](<#uint64-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool`](<#uint64-function-compareandswap>)

  - [`function load():stdgo.GoUInt64`](<#uint64-function-load>)

  - [`function store( _val:stdgo.GoUInt64):Void`](<#uint64-function-store>)

  - [`function swap( _new:stdgo.GoUInt64):stdgo.GoUInt64`](<#uint64-function-swap>)

- [class Uintptr](<#class-uintptr>)

  - [`function new(?__19:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void`](<#uintptr-function-new>)

  - [`function add( _delta:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#uintptr-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool`](<#uintptr-function-compareandswap>)

  - [`function load():stdgo.GoUIntptr`](<#uintptr-function-load>)

  - [`function store( _val:stdgo.GoUIntptr):Void`](<#uintptr-function-store>)

  - [`function swap( _new:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#uintptr-function-swap>)

- [class Value](<#class-value>)

  - [`function new(?_v:stdgo.AnyInterface):Void`](<#value-function-new>)

  - [`function compareAndSwap( _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool`](<#value-function-compareandswap>)

  - [`function load():stdgo.AnyInterface`](<#value-function-load>)

  - [`function store( _val:stdgo.AnyInterface):Void`](<#value-function-store>)

  - [`function swap( _new:stdgo.AnyInterface):stdgo.AnyInterface`](<#value-function-swap>)

# Variables


```haxe
import stdgo._internal.sync.atomic_.Atomic_
```


```haxe
var __24:stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_<stdgo.GoInt>>
```


```haxe
var _firstStoreInProgress:stdgo.GoByte
```


# Functions


```haxe
import stdgo._internal.sync.atomic_.Atomic_
```


## function \_b32


```haxe
function _b32(_b:Bool):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L174>)


## function \_runtime\_procPin


```haxe
function _runtime_procPin():stdgo.GoInt
```


[\(view code\)](<./Atomic_.hx#L175>)


## function \_runtime\_procUnpin


```haxe
function _runtime_procUnpin():Void
```


[\(view code\)](<./Atomic_.hx#L176>)


## function addInt32


```haxe
function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L153>)


## function addInt64


```haxe
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L155>)


## function addUint32


```haxe
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L154>)


## function addUint64


```haxe
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L156>)


## function addUintptr


```haxe
function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L157>)


## function compareAndSwapInt32


```haxe
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool
```


[\(view code\)](<./Atomic_.hx#L147>)


## function compareAndSwapInt64


```haxe
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool
```


[\(view code\)](<./Atomic_.hx#L148>)


## function compareAndSwapPointer


```haxe
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Bool
```


[\(view code\)](<./Atomic_.hx#L152>)


## function compareAndSwapUint32


```haxe
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool
```


[\(view code\)](<./Atomic_.hx#L149>)


## function compareAndSwapUint64


```haxe
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Atomic_.hx#L150>)


## function compareAndSwapUintptr


```haxe
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Atomic_.hx#L151>)


## function loadInt32


```haxe
function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L158>)


## function loadInt64


```haxe
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L159>)


## function loadPointer


```haxe
function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Atomic_.hx#L163>)


## function loadUint32


```haxe
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L160>)


## function loadUint64


```haxe
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L161>)


## function loadUintptr


```haxe
function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L162>)


## function storeInt32


```haxe
function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L164>)


## function storeInt64


```haxe
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L165>)


## function storePointer


```haxe
function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L173>)


## function storeUint32


```haxe
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L166>)


## function storeUint64


```haxe
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L169>)


## function storeUintptr


```haxe
function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L172>)


## function swapInt32


```haxe
function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L141>)


## function swapInt64


```haxe
function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L142>)


## function swapPointer


```haxe
function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Atomic_.hx#L146>)


## function swapUint32


```haxe
function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L143>)


## function swapUint64


```haxe
function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L144>)


## function swapUintptr


```haxe
function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L145>)


# Classes


```haxe
import stdgo._internal.sync.atomic_.*
```


## class Bool\_


```haxe
var __2:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Bool\_ function new


```haxe
function new(?__2:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L9>)


### Bool\_ function compareAndSwap


```haxe
function compareAndSwap( _old:Bool, _new:Bool):Bool
```


[\(view code\)](<./Atomic_.hx#L196>)


### Bool\_ function load


```haxe
function load():Bool
```


[\(view code\)](<./Atomic_.hx#L202>)


### Bool\_ function store


```haxe
function store( _val:Bool):Void
```


[\(view code\)](<./Atomic_.hx#L200>)


### Bool\_ function swap


```haxe
function swap( _new:Bool):Bool
```


[\(view code\)](<./Atomic_.hx#L198>)


## class Int32


```haxe
var __8:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoInt32
```


### Int32 function new


```haxe
function new(?__8:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L38>)


### Int32 function add


```haxe
function add( _delta:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L252>)


### Int32 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool
```


[\(view code\)](<./Atomic_.hx#L254>)


### Int32 function load


```haxe
function load():stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L263>)


### Int32 function store


```haxe
function store( _val:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L258>)


### Int32 function swap


```haxe
function swap( _new:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Atomic_.hx#L256>)


## class Int64\_


```haxe
var __11:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var __12:stdgo._internal.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoInt64
```


### Int64\_ function new


```haxe
function new(?__11:stdgo._internal.sync.atomic_.T_noCopy, ?__12:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L53>)


### Int64\_ function add


```haxe
function add( _delta:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L289>)


### Int64\_ function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool
```


[\(view code\)](<./Atomic_.hx#L291>)


### Int64\_ function load


```haxe
function load():stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L297>)


### Int64\_ function store


```haxe
function store( _val:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L295>)


### Int64\_ function swap


```haxe
function swap( _new:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Atomic_.hx#L293>)


## class Pointer\_


```haxe
var __5:stdgo.GoArray<stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_.T_>>
```


```haxe
var __6:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo._internal.unsafe.UnsafePointer
```


### Pointer\_ function new


```haxe
function new(?__5:stdgo.GoArray<stdgo.Ref<stdgo._internal.sync.atomic_.Pointer_.T_>>, ?__6:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L24>)


### Pointer\_ function compareAndSwap


```haxe
function compareAndSwap( __generic__0:compareAndSwap.T_, _old:stdgo.Ref<compareAndSwap.T_>, _new:stdgo.Ref<compareAndSwap.T_>):Bool
```


### Pointer\_ function load


```haxe
function load( __generic__0:load.T_):stdgo.Ref<load.T_>
```


### Pointer\_ function store


```haxe
function store( __generic__0:store.T_, _val:stdgo.Ref<store.T_>):Void
```


### Pointer\_ function swap


```haxe
function swap( __generic__0:swap.T_, _new:stdgo.Ref<swap.T_>):stdgo.Ref<swap.T_>
```


## class Uint32


```haxe
var __13:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Uint32 function new


```haxe
function new(?__13:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L67>)


### Uint32 function add


```haxe
function add( _delta:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L320>)


### Uint32 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool
```


[\(view code\)](<./Atomic_.hx#L322>)


### Uint32 function load


```haxe
function load():stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L328>)


### Uint32 function store


```haxe
function store( _val:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L326>)


### Uint32 function swap


```haxe
function swap( _new:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Atomic_.hx#L324>)


## class Uint64


```haxe
var __16:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var __17:stdgo._internal.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoUInt64
```


### Uint64 function new


```haxe
function new(?__16:stdgo._internal.sync.atomic_.T_noCopy, ?__17:stdgo._internal.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L82>)


### Uint64 function add


```haxe
function add( _delta:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L351>)


### Uint64 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Atomic_.hx#L353>)


### Uint64 function load


```haxe
function load():stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L359>)


### Uint64 function store


```haxe
function store( _val:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L357>)


### Uint64 function swap


```haxe
function swap( _new:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Atomic_.hx#L355>)


## class Uintptr


```haxe
var __19:stdgo._internal.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUIntptr
```


### Uintptr function new


```haxe
function new(?__19:stdgo._internal.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L96>)


### Uintptr function add


```haxe
function add( _delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L382>)


### Uintptr function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Atomic_.hx#L384>)


### Uintptr function load


```haxe
function load():stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L390>)


### Uintptr function store


```haxe
function store( _val:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L388>)


### Uintptr function swap


```haxe
function swap( _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Atomic_.hx#L386>)


## class Value


```haxe
var _v:stdgo.AnyInterface
```


### Value function new


```haxe
function new(?_v:stdgo.AnyInterface):Void
```


[\(view code\)](<./Atomic_.hx#L121>)


### Value function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool
```


[\(view code\)](<./Atomic_.hx#L430>)


### Value function load


```haxe
function load():stdgo.AnyInterface
```


[\(view code\)](<./Atomic_.hx#L436>)


### Value function store


```haxe
function store( _val:stdgo.AnyInterface):Void
```


[\(view code\)](<./Atomic_.hx#L434>)


### Value function swap


```haxe
function swap( _new:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Atomic_.hx#L432>)


