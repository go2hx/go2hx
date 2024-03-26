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


- [`function addInt32(addr:stdgo.Pointer<Int>, delta:Int):Int`](<#function-addint32>)

- [`function addInt64(addr:stdgo.Pointer<haxe.Int64>, delta:haxe.Int64):haxe.Int64`](<#function-addint64>)

- [`function addUint32(addr:stdgo.Pointer<UInt>, delta:UInt):UInt`](<#function-adduint32>)

- [`function addUint64(addr:stdgo.Pointer<haxe.UInt64>, delta:haxe.UInt64):haxe.UInt64`](<#function-adduint64>)

- [`function addUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, delta:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-adduintptr>)

- [`function compareAndSwapInt32(addr:stdgo.Pointer<Int>, old:Int, _new:Int):Bool`](<#function-compareandswapint32>)

- [`function compareAndSwapInt64(addr:stdgo.Pointer<haxe.Int64>, old:haxe.Int64, _new:haxe.Int64):Bool`](<#function-compareandswapint64>)

- [`function compareAndSwapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Bool`](<#function-compareandswappointer>)

- [`function compareAndSwapUint32(addr:stdgo.Pointer<UInt>, old:UInt, _new:UInt):Bool`](<#function-compareandswapuint32>)

- [`function compareAndSwapUint64(addr:stdgo.Pointer<haxe.UInt64>, old:haxe.UInt64, _new:haxe.UInt64):Bool`](<#function-compareandswapuint64>)

- [`function compareAndSwapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool`](<#function-compareandswapuintptr>)

- [`function loadInt32(addr:stdgo.Pointer<Int>):Int`](<#function-loadint32>)

- [`function loadInt64(addr:stdgo.Pointer<haxe.Int64>):haxe.Int64`](<#function-loadint64>)

- [`function loadPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):stdgo._internal.unsafe.UnsafePointer`](<#function-loadpointer>)

- [`function loadUint32(addr:stdgo.Pointer<UInt>):UInt`](<#function-loaduint32>)

- [`function loadUint64(addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64`](<#function-loaduint64>)

- [`function loadUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr`](<#function-loaduintptr>)

- [`function storeInt32(addr:stdgo.Pointer<Int>, val:Int):Void`](<#function-storeint32>)

- [`function storeInt64(addr:stdgo.Pointer<haxe.Int64>, val:haxe.Int64):Void`](<#function-storeint64>)

- [`function storePointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, val:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-storepointer>)

- [`function storeUint32(addr:stdgo.Pointer<UInt>, val:UInt):Void`](<#function-storeuint32>)

- [`function storeUint64(addr:stdgo.Pointer<haxe.UInt64>, val:haxe.UInt64):Void`](<#function-storeuint64>)

- [`function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void`](<#function-storeuintptr>)

- [`function swapInt32(addr:stdgo.Pointer<Int>, _new:Int):Int`](<#function-swapint32>)

- [`function swapInt64(addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64`](<#function-swapint64>)

- [`function swapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer`](<#function-swappointer>)

- [`function swapUint32(addr:stdgo.Pointer<UInt>, _new:UInt):UInt`](<#function-swapuint32>)

- [`function swapUint64(addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64`](<#function-swapuint64>)

- [`function swapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-swapuintptr>)

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

# Functions


```haxe
import stdgo.sync.atomic_.Atomic_
```


## function addInt32


```haxe
function addInt32(addr:stdgo.Pointer<Int>, delta:Int):Int
```



AddInt32 atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Int32.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L126>)


## function addInt64


```haxe
function addInt64(addr:stdgo.Pointer<haxe.Int64>, delta:haxe.Int64):haxe.Int64
```



AddInt64 atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Int64.Add\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L139>)


## function addUint32


```haxe
function addUint32(addr:stdgo.Pointer<UInt>, delta:UInt):UInt
```



AddUint32 atomically adds delta to \*addr and returns the new value.
To subtract a signed positive constant value c from x, do AddUint32\(&x, ^uint32\(c\-1\)\).
In particular, to decrement x, do AddUint32\(&x, ^uint32\(0\)\).
Consider using the more ergonomic and less error\-prone \[Uint32.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L133>)


## function addUint64


```haxe
function addUint64(addr:stdgo.Pointer<haxe.UInt64>, delta:haxe.UInt64):haxe.UInt64
```



AddUint64 atomically adds delta to \*addr and returns the new value.
To subtract a signed positive constant value c from x, do AddUint64\(&x, ^uint64\(c\-1\)\).
In particular, to decrement x, do AddUint64\(&x, ^uint64\(0\)\).
Consider using the more ergonomic and less error\-prone \[Uint64.Add\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L147>)


## function addUintptr


```haxe
function addUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, delta:stdgo.GoUIntptr):stdgo.GoUIntptr
```



AddUintptr atomically adds delta to \*addr and returns the new value.
Consider using the more ergonomic and less error\-prone \[Uintptr.Add\] instead.  

[\(view code\)](<./Atomic_.hx#L152>)


## function compareAndSwapInt32


```haxe
function compareAndSwapInt32(addr:stdgo.Pointer<Int>, old:Int, _new:Int):Bool
```



CompareAndSwapInt32 executes the compare\-and\-swap operation for an int32 value.
Consider using the more ergonomic and less error\-prone \[Int32.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L94>)


## function compareAndSwapInt64


```haxe
function compareAndSwapInt64(addr:stdgo.Pointer<haxe.Int64>, old:haxe.Int64, _new:haxe.Int64):Bool
```



CompareAndSwapInt64 executes the compare\-and\-swap operation for an int64 value.
Consider using the more ergonomic and less error\-prone \[Int64.CompareAndSwap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L100>)


## function compareAndSwapPointer


```haxe
function compareAndSwapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, old:stdgo._internal.unsafe.UnsafePointer, _new:stdgo._internal.unsafe.UnsafePointer):Bool
```



CompareAndSwapPointer executes the compare\-and\-swap operation for a unsafe.Pointer value.
Consider using the more ergonomic and less error\-prone \[Pointer.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L121>)


## function compareAndSwapUint32


```haxe
function compareAndSwapUint32(addr:stdgo.Pointer<UInt>, old:UInt, _new:UInt):Bool
```



CompareAndSwapUint32 executes the compare\-and\-swap operation for a uint32 value.
Consider using the more ergonomic and less error\-prone \[Uint32.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L105>)


## function compareAndSwapUint64


```haxe
function compareAndSwapUint64(addr:stdgo.Pointer<haxe.UInt64>, old:haxe.UInt64, _new:haxe.UInt64):Bool
```



CompareAndSwapUint64 executes the compare\-and\-swap operation for a uint64 value.
Consider using the more ergonomic and less error\-prone \[Uint64.CompareAndSwap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L111>)


## function compareAndSwapUintptr


```haxe
function compareAndSwapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool
```



CompareAndSwapUintptr executes the compare\-and\-swap operation for a uintptr value.
Consider using the more ergonomic and less error\-prone \[Uintptr.CompareAndSwap\] instead.  

[\(view code\)](<./Atomic_.hx#L116>)


## function loadInt32


```haxe
function loadInt32(addr:stdgo.Pointer<Int>):Int
```



LoadInt32 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Int32.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L157>)


## function loadInt64


```haxe
function loadInt64(addr:stdgo.Pointer<haxe.Int64>):haxe.Int64
```



LoadInt64 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Int64.Load\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L163>)


## function loadPointer


```haxe
function loadPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>):stdgo._internal.unsafe.UnsafePointer
```



LoadPointer atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Pointer.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L184>)


## function loadUint32


```haxe
function loadUint32(addr:stdgo.Pointer<UInt>):UInt
```



LoadUint32 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uint32.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L168>)


## function loadUint64


```haxe
function loadUint64(addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64
```



LoadUint64 atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uint64.Load\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L174>)


## function loadUintptr


```haxe
function loadUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr
```



LoadUintptr atomically loads \*addr.
Consider using the more ergonomic and less error\-prone \[Uintptr.Load\] instead.  

[\(view code\)](<./Atomic_.hx#L179>)


## function storeInt32


```haxe
function storeInt32(addr:stdgo.Pointer<Int>, val:Int):Void
```



StoreInt32 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Int32.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L189>)


## function storeInt64


```haxe
function storeInt64(addr:stdgo.Pointer<haxe.Int64>, val:haxe.Int64):Void
```



StoreInt64 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Int64.Store\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L195>)


## function storePointer


```haxe
function storePointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, val:stdgo._internal.unsafe.UnsafePointer):Void
```



StorePointer atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Pointer.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L216>)


## function storeUint32


```haxe
function storeUint32(addr:stdgo.Pointer<UInt>, val:UInt):Void
```



StoreUint32 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uint32.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L200>)


## function storeUint64


```haxe
function storeUint64(addr:stdgo.Pointer<haxe.UInt64>, val:haxe.UInt64):Void
```



StoreUint64 atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uint64.Store\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L206>)


## function storeUintptr


```haxe
function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void
```



StoreUintptr atomically stores val into \*addr.
Consider using the more ergonomic and less error\-prone \[Uintptr.Store\] instead.  

[\(view code\)](<./Atomic_.hx#L211>)


## function swapInt32


```haxe
function swapInt32(addr:stdgo.Pointer<Int>, _new:Int):Int
```



SwapInt32 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Int32.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L62>)


## function swapInt64


```haxe
function swapInt64(addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64
```



SwapInt64 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Int64.Swap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L68>)


## function swapPointer


```haxe
function swapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer
```



SwapPointer atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Pointer.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L89>)


## function swapUint32


```haxe
function swapUint32(addr:stdgo.Pointer<UInt>, _new:UInt):UInt
```



SwapUint32 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uint32.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L73>)


## function swapUint64


```haxe
function swapUint64(addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64
```



SwapUint64 atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uint64.Swap\] instead
\(particularly if you target 32\-bit platforms; see the bugs section\).  

[\(view code\)](<./Atomic_.hx#L79>)


## function swapUintptr


```haxe
function swapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr
```



SwapUintptr atomically stores new into \*addr and returns the previous \*addr value.
Consider using the more ergonomic and less error\-prone \[Uintptr.Swap\] instead.  

[\(view code\)](<./Atomic_.hx#L84>)


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


