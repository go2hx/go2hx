# Module: `stdgo.sync.atomic_`

[(view library index)](../../stdgo.md)


# Overview



Package atomic provides low\-level atomic memory primitives
useful for implementing synchronization algorithms.  


These functions require great care to be used correctly.
Except for special, low\-level applications, synchronization is better
done with channels or the facilities of the \[sync\] package.
Share memory by communicating;
don't communicate by sharing memory.  


The swap operation, implemented by the SwapT functions, is the atomic
equivalent of:  

```
	old = *addr
	*addr = new
	return old
```

The compare\-and\-swap operation, implemented by the CompareAndSwapT
functions, is the atomic equivalent of:  

```
	if *addr == old {
		*addr = new
		return true
	}
	return false
```

The add operation, implemented by the AddT functions, is the atomic
equivalent of:  

```
	*addr += delta
	return *addr
```

The load and store operations, implemented by the LoadT and StoreT
functions, are the atomic equivalents of "return \*addr" and
"\*addr = val".  


In the terminology of the Go memory model, if the effect of
an atomic operation A is observed by atomic operation B,
then A “synchronizes before” B.
Additionally, all the atomic operations executed in a program
behave as though executed in some sequentially consistent order.
This definition provides the same semantics as
C\+\+'s sequentially consistent atomics and Java's volatile variables.  

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

- [`function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _old:stdgo.unsafe.UnsafePointer, _new:stdgo.unsafe.UnsafePointer):Bool`](<#function-compareandswappointer>)

- [`function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool`](<#function-compareandswapuint32>)

- [`function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool`](<#function-compareandswapuint64>)

- [`function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool`](<#function-compareandswapuintptr>)

- [`function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32`](<#function-loadint32>)

- [`function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64`](<#function-loadint64>)

- [`function loadPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>):stdgo.unsafe.UnsafePointer`](<#function-loadpointer>)

- [`function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32`](<#function-loaduint32>)

- [`function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64`](<#function-loaduint64>)

- [`function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr`](<#function-loaduintptr>)

- [`function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void`](<#function-storeint32>)

- [`function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void`](<#function-storeint64>)

- [`function storePointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _val:stdgo.unsafe.UnsafePointer):Void`](<#function-storepointer>)

- [`function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void`](<#function-storeuint32>)

- [`function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void`](<#function-storeuint64>)

- [`function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void`](<#function-storeuintptr>)

- [`function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32`](<#function-swapint32>)

- [`function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64`](<#function-swapint64>)

- [`function swapPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _new:stdgo.unsafe.UnsafePointer):stdgo.unsafe.UnsafePointer`](<#function-swappointer>)

- [`function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-swapuint32>)

- [`function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-swapuint64>)

- [`function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-swapuintptr>)

- [class Bool\_](<#class-bool_>)

  - [`function new(?__2:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#bool_-function-new>)

  - [`function compareAndSwap( _old:Bool, _new:Bool):Bool`](<#bool_-function-compareandswap>)

  - [`function load():Bool`](<#bool_-function-load>)

  - [`function store( _val:Bool):Void`](<#bool_-function-store>)

  - [`function swap( _new:Bool):Bool`](<#bool_-function-swap>)

- [class Int32](<#class-int32>)

  - [`function new(?__8:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void`](<#int32-function-new>)

  - [`function add( _delta:stdgo.GoInt32):stdgo.GoInt32`](<#int32-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool`](<#int32-function-compareandswap>)

  - [`function load():stdgo.GoInt32`](<#int32-function-load>)

  - [`function store( _val:stdgo.GoInt32):Void`](<#int32-function-store>)

  - [`function swap( _new:stdgo.GoInt32):stdgo.GoInt32`](<#int32-function-swap>)

- [class Int64\_](<#class-int64_>)

  - [`function new(?__11:stdgo.sync.atomic_.T_noCopy, ?__12:stdgo.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void`](<#int64_-function-new>)

  - [`function add( _delta:stdgo.GoInt64):stdgo.GoInt64`](<#int64_-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool`](<#int64_-function-compareandswap>)

  - [`function load():stdgo.GoInt64`](<#int64_-function-load>)

  - [`function store( _val:stdgo.GoInt64):Void`](<#int64_-function-store>)

  - [`function swap( _new:stdgo.GoInt64):stdgo.GoInt64`](<#int64_-function-swap>)

- [class Pointer\_](<#class-pointer_>)

  - [`function new(?__5:stdgo.GoArray<stdgo.Ref<stdgo.sync.atomic_.Pointer_.T>>, ?__6:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.unsafe.UnsafePointer):Void`](<#pointer_-function-new>)

  - [`function compareAndSwap( __generic__0:compareAndSwap.T, _old:stdgo.Ref<compareAndSwap.T>, _new:stdgo.Ref<compareAndSwap.T>):Bool`](<#pointer_-function-compareandswap>)

  - [`function load( __generic__0:load.T):stdgo.Ref<load.T>`](<#pointer_-function-load>)

  - [`function store( __generic__0:store.T, _val:stdgo.Ref<store.T>):Void`](<#pointer_-function-store>)

  - [`function swap( __generic__0:swap.T, _new:stdgo.Ref<swap.T>):stdgo.Ref<swap.T>`](<#pointer_-function-swap>)

- [class Uint32](<#class-uint32>)

  - [`function new(?__13:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void`](<#uint32-function-new>)

  - [`function add( _delta:stdgo.GoUInt32):stdgo.GoUInt32`](<#uint32-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool`](<#uint32-function-compareandswap>)

  - [`function load():stdgo.GoUInt32`](<#uint32-function-load>)

  - [`function store( _val:stdgo.GoUInt32):Void`](<#uint32-function-store>)

  - [`function swap( _new:stdgo.GoUInt32):stdgo.GoUInt32`](<#uint32-function-swap>)

- [class Uint64](<#class-uint64>)

  - [`function new(?__16:stdgo.sync.atomic_.T_noCopy, ?__17:stdgo.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void`](<#uint64-function-new>)

  - [`function add( _delta:stdgo.GoUInt64):stdgo.GoUInt64`](<#uint64-function-add>)

  - [`function compareAndSwap( _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool`](<#uint64-function-compareandswap>)

  - [`function load():stdgo.GoUInt64`](<#uint64-function-load>)

  - [`function store( _val:stdgo.GoUInt64):Void`](<#uint64-function-store>)

  - [`function swap( _new:stdgo.GoUInt64):stdgo.GoUInt64`](<#uint64-function-swap>)

- [class Uintptr](<#class-uintptr>)

  - [`function new(?__19:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void`](<#uintptr-function-new>)

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
import stdgo.sync.atomic_.Atomic_
```


```haxe
var __24:stdgo.Ref<stdgo.sync.atomic_.Pointer_<stdgo.GoInt>>
```



For testing \*Pointer\[T\]'s methods can be inlined.
Keep in sync with cmd/compile/internal/test/inl\_test.go:TestIntendedInlining.  

```haxe
var _firstStoreInProgress:stdgo.GoUInt8
```


# Functions


```haxe
import stdgo.sync.atomic_.Atomic_
```


## function \_b32


```haxe
function _b32(_b:Bool):stdgo.GoUInt32
```



b32 returns a uint32 0 or 1 representing b.  

[\(view code\)](<./Atomic_.hx#L433>)


## function \_runtime\_procPin


```haxe
function _runtime_procPin():stdgo.GoInt
```



Disable/enable preemption, implemented in runtime.  

[\(view code\)](<./Atomic_.hx#L437>)


## function \_runtime\_procUnpin


```haxe
function _runtime_procUnpin():Void
```


[\(view code\)](<./Atomic_.hx#L438>)


## function addInt32


```haxe
function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32
```



AddInt32 atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Int32.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L337>)


## function addInt64


```haxe
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64
```



AddInt64 atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Int64.Add\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L350>)


## function addUint32


```haxe
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32
```



AddUint32 atomically adds delta to \*addr and returns the new value.
To subtract a signed positive constant value c from x, do AddUint32\(&x, ^uint32\(c\-1\)\).
In particular, to decrement x, do AddUint32\(&x, ^uint32\(0\)\).
Consider using the more ergonomic and less error\-prone \[Uint32.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L344>)


## function addUint64


```haxe
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64
```



AddUint64 atomically adds delta to \*addr and returns the new value.
To subtract a signed positive constant value c from x, do AddUint64\(&x, ^uint64\(c\-1\)\).
In particular, to decrement x, do AddUint64\(&x, ^uint64\(0\)\).
Consider using the more ergonomic and less error\-prone \[Uint64.Add\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L358>)


## function addUintptr


```haxe
function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```



AddUintptr atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Uintptr.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L363>)


## function compareAndSwapInt32


```haxe
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool
```



CompareAndSwapInt32 executes the compare\-and\-swap operation for an int32 value.
Consider using the more ergonomic and less error\-prone \[Int32.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L305>)


## function compareAndSwapInt64


```haxe
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool
```



CompareAndSwapInt64 executes the compare\-and\-swap operation for an int64 value.
Consider using the more ergonomic and less error\-prone \[Int64.CompareAndSwap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L311>)


## function compareAndSwapPointer


```haxe
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _old:stdgo.unsafe.UnsafePointer, _new:stdgo.unsafe.UnsafePointer):Bool
```



CompareAndSwapPointer executes the compare\-and\-swap operation for a unsafe.Pointer value.
Consider using the more ergonomic and less error\-prone \[Pointer.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L332>)


## function compareAndSwapUint32


```haxe
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool
```



CompareAndSwapUint32 executes the compare\-and\-swap operation for a uint32 value.
Consider using the more ergonomic and less error\-prone \[Uint32.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L316>)


## function compareAndSwapUint64


```haxe
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool
```



CompareAndSwapUint64 executes the compare\-and\-swap operation for a uint64 value.
Consider using the more ergonomic and less error\-prone \[Uint64.CompareAndSwap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L322>)


## function compareAndSwapUintptr


```haxe
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```



CompareAndSwapUintptr executes the compare\-and\-swap operation for a uintptr value.
Consider using the more ergonomic and less error\-prone \[Uintptr.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L327>)


## function loadInt32


```haxe
function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32
```



LoadInt32 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Int32.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L368>)


## function loadInt64


```haxe
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64
```



LoadInt64 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Int64.Load\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L374>)


## function loadPointer


```haxe
function loadPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>):stdgo.unsafe.UnsafePointer
```



LoadPointer atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Pointer.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L395>)


## function loadUint32


```haxe
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32
```



LoadUint32 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uint32.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L379>)


## function loadUint64


```haxe
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64
```



LoadUint64 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uint64.Load\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L385>)


## function loadUintptr


```haxe
function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr
```



LoadUintptr atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uintptr.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L390>)


## function storeInt32


```haxe
function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void
```



StoreInt32 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Int32.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L400>)


## function storeInt64


```haxe
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void
```



StoreInt64 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Int64.Store\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L406>)


## function storePointer


```haxe
function storePointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _val:stdgo.unsafe.UnsafePointer):Void
```



StorePointer atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Pointer.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L429>)


## function storeUint32


```haxe
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void
```



StoreUint32 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uint32.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L411>)


## function storeUint64


```haxe
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void
```



StoreUint64 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uint64.Store\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L419>)


## function storeUintptr


```haxe
function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void
```



StoreUintptr atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uintptr.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L424>)


## function swapInt32


```haxe
function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32
```



SwapInt32 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Int32.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L273>)


## function swapInt64


```haxe
function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64
```



SwapInt64 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Int64.Swap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L279>)


## function swapPointer


```haxe
function swapPointer(_addr:stdgo.Pointer<stdgo.unsafe.UnsafePointer>, _new:stdgo.unsafe.UnsafePointer):stdgo.unsafe.UnsafePointer
```



SwapPointer atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Pointer.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L300>)


## function swapUint32


```haxe
function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32
```



SwapUint32 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uint32.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L284>)


## function swapUint64


```haxe
function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64
```



SwapUint64 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uint64.Swap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L290>)


## function swapUintptr


```haxe
function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```



SwapUintptr atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uintptr.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L295>)


# Classes


```haxe
import stdgo.sync.atomic_.*
```


## class Bool\_



A Bool is an atomic boolean value.
The zero value is false.  

```haxe
var __2:stdgo.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Bool\_ function new


```haxe
function new(?__2:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L70>)


### Bool\_ function compareAndSwap


```haxe
function compareAndSwap( _old:Bool, _new:Bool):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for the boolean value x.  

[\(view code\)](<./Atomic_.hx#L473>)


### Bool\_ function load


```haxe
function load():Bool
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L488>)


### Bool\_ function store


```haxe
function store( _val:Bool):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L483>)


### Bool\_ function swap


```haxe
function swap( _new:Bool):Bool
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L478>)


## class Int32



An Int32 is an atomic int32. The zero value is zero.  

```haxe
var __8:stdgo.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoInt32
```


### Int32 function new


```haxe
function new(?__8:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoInt32):Void
```


[\(view code\)](<./Atomic_.hx#L114>)


### Int32 function add


```haxe
function add( _delta:stdgo.GoInt32):stdgo.GoInt32
```



Add atomically adds delta to x and returns the new value.  

[\(view code\)](<./Atomic_.hx#L580>)


### Int32 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

[\(view code\)](<./Atomic_.hx#L585>)


### Int32 function load


```haxe
function load():stdgo.GoInt32
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L603>)


### Int32 function store


```haxe
function store( _val:stdgo.GoInt32):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L595>)


### Int32 function swap


```haxe
function swap( _new:stdgo.GoInt32):stdgo.GoInt32
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L590>)


## class Int64\_



An Int64 is an atomic int64. The zero value is zero.  

```haxe
var __11:stdgo.sync.atomic_.T_noCopy
```


```haxe
var __12:stdgo.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoInt64
```


### Int64\_ function new


```haxe
function new(?__11:stdgo.sync.atomic_.T_noCopy, ?__12:stdgo.sync.atomic_.T_align64, ?_v:stdgo.GoInt64):Void
```


[\(view code\)](<./Atomic_.hx#L134>)


### Int64\_ function add


```haxe
function add( _delta:stdgo.GoInt64):stdgo.GoInt64
```



Add atomically adds delta to x and returns the new value.  

[\(view code\)](<./Atomic_.hx#L647>)


### Int64\_ function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

[\(view code\)](<./Atomic_.hx#L652>)


### Int64\_ function load


```haxe
function load():stdgo.GoInt64
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L667>)


### Int64\_ function store


```haxe
function store( _val:stdgo.GoInt64):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L662>)


### Int64\_ function swap


```haxe
function swap( _new:stdgo.GoInt64):stdgo.GoInt64
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L657>)


## class Pointer\_



A Pointer is an atomic pointer of type \*T. The zero value is a nil \*T.  

```haxe
var __5:stdgo.GoArray<stdgo.Ref<stdgo.sync.atomic_.Pointer_.T>>
```



Mention \*T in a field to disallow conversion between Pointer types.
See go.dev/issue/56603 for more details.
Use \*T, not T, to avoid spurious recursive type definition errors.  

```haxe
var __6:stdgo.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.unsafe.UnsafePointer
```


### Pointer\_ function new


```haxe
function new(?__5:stdgo.GoArray<stdgo.Ref<stdgo.sync.atomic_.Pointer_.T>>, ?__6:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Atomic_.hx#L95>)


### Pointer\_ function compareAndSwap


```haxe
function compareAndSwap( __generic__0:compareAndSwap.T, _old:stdgo.Ref<compareAndSwap.T>, _new:stdgo.Ref<compareAndSwap.T>):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

### Pointer\_ function load


```haxe
function load( __generic__0:load.T):stdgo.Ref<load.T>
```



Load atomically loads and returns the value stored in x.  

### Pointer\_ function store


```haxe
function store( __generic__0:store.T, _val:stdgo.Ref<store.T>):Void
```



Store atomically stores val into x.  

### Pointer\_ function swap


```haxe
function swap( __generic__0:swap.T, _new:stdgo.Ref<swap.T>):stdgo.Ref<swap.T>
```



Swap atomically stores new into x and returns the previous value.  

## class Uint32



A Uint32 is an atomic uint32. The zero value is zero.  

```haxe
var __13:stdgo.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUInt32
```


### Uint32 function new


```haxe
function new(?__13:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Atomic_.hx#L153>)


### Uint32 function add


```haxe
function add( _delta:stdgo.GoUInt32):stdgo.GoUInt32
```



Add atomically adds delta to x and returns the new value.  

[\(view code\)](<./Atomic_.hx#L708>)


### Uint32 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

[\(view code\)](<./Atomic_.hx#L713>)


### Uint32 function load


```haxe
function load():stdgo.GoUInt32
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L728>)


### Uint32 function store


```haxe
function store( _val:stdgo.GoUInt32):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L723>)


### Uint32 function swap


```haxe
function swap( _new:stdgo.GoUInt32):stdgo.GoUInt32
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L718>)


## class Uint64



A Uint64 is an atomic uint64. The zero value is zero.  

```haxe
var __16:stdgo.sync.atomic_.T_noCopy
```


```haxe
var __17:stdgo.sync.atomic_.T_align64
```


```haxe
var _v:stdgo.GoUInt64
```


### Uint64 function new


```haxe
function new(?__16:stdgo.sync.atomic_.T_noCopy, ?__17:stdgo.sync.atomic_.T_align64, ?_v:stdgo.GoUInt64):Void
```


[\(view code\)](<./Atomic_.hx#L173>)


### Uint64 function add


```haxe
function add( _delta:stdgo.GoUInt64):stdgo.GoUInt64
```



Add atomically adds delta to x and returns the new value.  

[\(view code\)](<./Atomic_.hx#L769>)


### Uint64 function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

[\(view code\)](<./Atomic_.hx#L774>)


### Uint64 function load


```haxe
function load():stdgo.GoUInt64
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L789>)


### Uint64 function store


```haxe
function store( _val:stdgo.GoUInt64):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L784>)


### Uint64 function swap


```haxe
function swap( _new:stdgo.GoUInt64):stdgo.GoUInt64
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L779>)


## class Uintptr



A Uintptr is an atomic uintptr. The zero value is zero.  

```haxe
var __19:stdgo.sync.atomic_.T_noCopy
```


```haxe
var _v:stdgo.GoUIntptr
```


### Uintptr function new


```haxe
function new(?__19:stdgo.sync.atomic_.T_noCopy, ?_v:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Atomic_.hx#L192>)


### Uintptr function add


```haxe
function add( _delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```



Add atomically adds delta to x and returns the new value.  

[\(view code\)](<./Atomic_.hx#L830>)


### Uintptr function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for x.  

[\(view code\)](<./Atomic_.hx#L835>)


### Uintptr function load


```haxe
function load():stdgo.GoUIntptr
```



Load atomically loads and returns the value stored in x.  

[\(view code\)](<./Atomic_.hx#L850>)


### Uintptr function store


```haxe
function store( _val:stdgo.GoUIntptr):Void
```



Store atomically stores val into x.  

[\(view code\)](<./Atomic_.hx#L845>)


### Uintptr function swap


```haxe
function swap( _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```



Swap atomically stores new into x and returns the previous value.  

[\(view code\)](<./Atomic_.hx#L840>)


## class Value



A Value provides an atomic load and store of a consistently typed value.
The zero value for a Value returns nil from Load.
Once Store has been called, a Value must not be copied.  


A Value must not be copied after first use.  

```haxe
var _v:stdgo.AnyInterface
```


### Value function new


```haxe
function new(?_v:stdgo.AnyInterface):Void
```


[\(view code\)](<./Atomic_.hx#L244>)


### Value function compareAndSwap


```haxe
function compareAndSwap( _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool
```



CompareAndSwap executes the compare\-and\-swap operation for the Value.  


All calls to CompareAndSwap for a given Value must use values of the same
concrete type. CompareAndSwap of an inconsistent type panics, as does
CompareAndSwap\(old, nil\).  

[\(view code\)](<./Atomic_.hx#L926>)


### Value function load


```haxe
function load():stdgo.AnyInterface
```



Load returns the value set by the most recent Store.
It returns nil if there has been no call to Store for this Value.  

[\(view code\)](<./Atomic_.hx#L948>)


### Value function store


```haxe
function store( _val:stdgo.AnyInterface):Void
```



Store sets the value of the Value v to val.
All calls to Store for a given Value must use values of the same concrete type.
Store of an inconsistent type panics, as does Store\(nil\).  

[\(view code\)](<./Atomic_.hx#L942>)


### Value function swap


```haxe
function swap( _new:stdgo.AnyInterface):stdgo.AnyInterface
```



Swap stores new into Value and returns the previous value. It returns nil if
the Value is empty.  


All calls to Swap for a given Value must use values of the same concrete
type. Swap of an inconsistent type panics, as does Swap\(nil\).  

[\(view code\)](<./Atomic_.hx#L935>)


