# Module: `stdgo.sync.atomic_`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _b32(_b:Bool):Void`](<#function-_b32>)

- [`function _runtime_procPin():Void`](<#function-_runtime_procpin>)

- [`function _runtime_procUnpin():Void`](<#function-_runtime_procunpin>)

- [`function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):Void`](<#function-addint32>)

- [`function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):Void`](<#function-addint64>)

- [`function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):Void`](<#function-adduint32>)

- [`function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):Void`](<#function-adduint64>)

- [`function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):Void`](<#function-adduintptr>)

- [`function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Void`](<#function-compareandswapint32>)

- [`function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Void`](<#function-compareandswapint64>)

- [`function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-compareandswappointer>)

- [`function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Void`](<#function-compareandswapuint32>)

- [`function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Void`](<#function-compareandswapuint64>)

- [`function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Void`](<#function-compareandswapuintptr>)

- [`function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):Void`](<#function-loadint32>)

- [`function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):Void`](<#function-loadint64>)

- [`function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):Void`](<#function-loadpointer>)

- [`function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-loaduint32>)

- [`function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):Void`](<#function-loaduint64>)

- [`function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):Void`](<#function-loaduintptr>)

- [`function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void`](<#function-storeint32>)

- [`function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void`](<#function-storeint64>)

- [`function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-storepointer>)

- [`function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void`](<#function-storeuint32>)

- [`function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void`](<#function-storeuint64>)

- [`function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void`](<#function-storeuintptr>)

- [`function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):Void`](<#function-swapint32>)

- [`function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):Void`](<#function-swapint64>)

- [`function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-swappointer>)

- [`function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):Void`](<#function-swapuint32>)

- [`function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):Void`](<#function-swapuint64>)

- [`function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):Void`](<#function-swapuintptr>)

- [typedef Bool\_](<#typedef-bool_>)

- [typedef Bool\_\_asInterface](<#typedef-bool__asinterface>)

- [typedef Bool\_\_static\_extension](<#typedef-bool__static_extension>)

- [typedef Int32](<#typedef-int32>)

- [typedef Int32\_asInterface](<#typedef-int32_asinterface>)

- [typedef Int32\_static\_extension](<#typedef-int32_static_extension>)

- [typedef Int64\_](<#typedef-int64_>)

- [typedef Int64\_\_asInterface](<#typedef-int64__asinterface>)

- [typedef Int64\_\_static\_extension](<#typedef-int64__static_extension>)

- [typedef Pointer\_](<#typedef-pointer_>)

- [typedef Pointer\_\_asInterface](<#typedef-pointer__asinterface>)

- [typedef Pointer\_\_static\_extension](<#typedef-pointer__static_extension>)

- [typedef T\_align64](<#typedef-t_align64>)

- [typedef T\_efaceWords](<#typedef-t_efacewords>)

- [typedef T\_noCopy](<#typedef-t_nocopy>)

- [typedef T\_noCopy\_asInterface](<#typedef-t_nocopy_asinterface>)

- [typedef T\_noCopy\_static\_extension](<#typedef-t_nocopy_static_extension>)

- [typedef Uint32](<#typedef-uint32>)

- [typedef Uint32\_asInterface](<#typedef-uint32_asinterface>)

- [typedef Uint32\_static\_extension](<#typedef-uint32_static_extension>)

- [typedef Uint64](<#typedef-uint64>)

- [typedef Uint64\_asInterface](<#typedef-uint64_asinterface>)

- [typedef Uint64\_static\_extension](<#typedef-uint64_static_extension>)

- [typedef Uintptr](<#typedef-uintptr>)

- [typedef Uintptr\_asInterface](<#typedef-uintptr_asinterface>)

- [typedef Uintptr\_static\_extension](<#typedef-uintptr_static_extension>)

- [typedef Value](<#typedef-value>)

- [typedef Value\_asInterface](<#typedef-value_asinterface>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Variables


```haxe
import stdgo.sync.atomic_.Atomic_
```


```haxe
var __24:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _firstStoreInProgress:Dynamic
```


# Functions


```haxe
import stdgo.sync.atomic_.Atomic_
```


## function \_b32


```haxe
function _b32(_b:Bool):Void
```


[\(view code\)](<./Atomic_.hx#L45>)


## function \_runtime\_procPin


```haxe
function _runtime_procPin():Void
```


[\(view code\)](<./Atomic_.hx#L46>)


## function \_runtime\_procUnpin


```haxe
function _runtime_procUnpin():Void
```


[\(view code\)](<./Atomic_.hx#L47>)


## function addInt32


```haxe
function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L28>)


## function addInt64


```haxe
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L30>)


## function addUint32


```haxe
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L29>)


## function addUint64


```haxe
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L31>)


## function addUintptr


```haxe
function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L32>)


## function compareAndSwapInt32


```haxe
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L22>)


## function compareAndSwapInt64


```haxe
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L23>)


## function compareAndSwapPointer


```haxe
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L27>)


## function compareAndSwapUint32


```haxe
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L24>)


## function compareAndSwapUint64


```haxe
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L25>)


## function compareAndSwapUintptr


```haxe
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L26>)


## function loadInt32


```haxe
function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):Void
```


[\(view code\)](<./Atomic_.hx#L33>)


## function loadInt64


```haxe
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):Void
```


[\(view code\)](<./Atomic_.hx#L34>)


## function loadPointer


```haxe
function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):Void
```


[\(view code\)](<./Atomic_.hx#L38>)


## function loadUint32


```haxe
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Atomic_.hx#L35>)


## function loadUint64


```haxe
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):Void
```


[\(view code\)](<./Atomic_.hx#L36>)


## function loadUintptr


```haxe
function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Atomic_.hx#L37>)


## function storeInt32


```haxe
function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L39>)


## function storeInt64


```haxe
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L40>)


## function storePointer


```haxe
function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L44>)


## function storeUint32


```haxe
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L41>)


## function storeUint64


```haxe
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L42>)


## function storeUintptr


```haxe
function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L43>)


## function swapInt32


```haxe
function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L16>)


## function swapInt64


```haxe
function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L17>)


## function swapPointer


```haxe
function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L21>)


## function swapUint32


```haxe
function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L18>)


## function swapUint64


```haxe
function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L19>)


## function swapUintptr


```haxe
function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L20>)


# Typedefs


```haxe
import stdgo.sync.atomic_.*
```


## typedef Bool\_


```haxe
typedef Bool_ = Dynamic;
```


## typedef Bool\_\_asInterface


```haxe
typedef Bool__asInterface = Dynamic;
```


## typedef Bool\_\_static\_extension


```haxe
typedef Bool__static_extension = Dynamic;
```


## typedef Int32


```haxe
typedef Int32 = Dynamic;
```


## typedef Int32\_asInterface


```haxe
typedef Int32_asInterface = Dynamic;
```


## typedef Int32\_static\_extension


```haxe
typedef Int32_static_extension = Dynamic;
```


## typedef Int64\_


```haxe
typedef Int64_ = Dynamic;
```


## typedef Int64\_\_asInterface


```haxe
typedef Int64__asInterface = Dynamic;
```


## typedef Int64\_\_static\_extension


```haxe
typedef Int64__static_extension = Dynamic;
```


## typedef Pointer\_


```haxe
typedef Pointer_ = Dynamic;
```


## typedef Pointer\_\_asInterface


```haxe
typedef Pointer__asInterface = Dynamic;
```


## typedef Pointer\_\_static\_extension


```haxe
typedef Pointer__static_extension = Dynamic;
```


## typedef T\_align64


```haxe
typedef T_align64 = Dynamic;
```


## typedef T\_efaceWords


```haxe
typedef T_efaceWords = Dynamic;
```


## typedef T\_noCopy


```haxe
typedef T_noCopy = Dynamic;
```


## typedef T\_noCopy\_asInterface


```haxe
typedef T_noCopy_asInterface = Dynamic;
```


## typedef T\_noCopy\_static\_extension


```haxe
typedef T_noCopy_static_extension = Dynamic;
```


## typedef Uint32


```haxe
typedef Uint32 = Dynamic;
```


## typedef Uint32\_asInterface


```haxe
typedef Uint32_asInterface = Dynamic;
```


## typedef Uint32\_static\_extension


```haxe
typedef Uint32_static_extension = Dynamic;
```


## typedef Uint64


```haxe
typedef Uint64 = Dynamic;
```


## typedef Uint64\_asInterface


```haxe
typedef Uint64_asInterface = Dynamic;
```


## typedef Uint64\_static\_extension


```haxe
typedef Uint64_static_extension = Dynamic;
```


## typedef Uintptr


```haxe
typedef Uintptr = Dynamic;
```


## typedef Uintptr\_asInterface


```haxe
typedef Uintptr_asInterface = Dynamic;
```


## typedef Uintptr\_static\_extension


```haxe
typedef Uintptr_static_extension = Dynamic;
```


## typedef Value


```haxe
typedef Value = Dynamic;
```


## typedef Value\_asInterface


```haxe
typedef Value_asInterface = Dynamic;
```


## typedef Value\_static\_extension


```haxe
typedef Value_static_extension = Dynamic;
```


