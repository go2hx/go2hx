# Module: `stdgo._internal.runtime.cgo`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _set_crosscall2():Void`](<#function-_set_crosscall2>)

- [`function __set_crosscall2():Void`](<#function-__set_crosscall2>)

- [`function __cgo_panic(_a:stdgo.Ref<stdgo._internal.runtime.cgo.T__struct_0>):Void`](<#function-__cgo_panic>)

- [`function __runtime_cgo_panic_internal(_p:stdgo.Pointer<stdgo.GoUInt8>):Void`](<#function-__runtime_cgo_panic_internal>)

- [`function newHandle(_v:stdgo.AnyInterface):stdgo._internal.runtime.cgo.Handle`](<#function-newhandle>)

- [typedef Handle](<#typedef-handle>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Variables


```haxe
import stdgo._internal.runtime.cgo.Cgo_newHandle
```


```haxe
var _x_cgo_init:stdgo.GoUInt8
```


```haxe
var __cgo_init:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_thread_start:stdgo.GoUInt8
```


```haxe
var __cgo_thread_start:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_sys_thread_create:stdgo.GoUInt8
```


```haxe
var __cgo_sys_thread_create:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_pthread_key_created:stdgo.GoUInt8
```


```haxe
var __cgo_pthread_key_created:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_crosscall2_ptr:stdgo.GoUInt8
```


```haxe
var __crosscall2_ptr:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_bindm:stdgo.GoUInt8
```


```haxe
var __cgo_bindm:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_notify_runtime_init_done:stdgo.GoUInt8
```


```haxe
var __cgo_notify_runtime_init_done:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_set_context_function:stdgo.GoUInt8
```


```haxe
var __cgo_set_context_function:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _x_cgo_getstackbound:stdgo.GoUInt8
```


```haxe
var __cgo_getstackbound:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var _handles:stdgo._internal.sync.Map_
```


```haxe
var __iscgo:Bool
```


```haxe
var __cgo_yield:stdgo._internal.unsafe.UnsafePointer
```


```haxe
var _handleIdx:stdgo._internal.sync.atomic_.Uintptr
```


# Functions


```haxe
import stdgo._internal.runtime.cgo.Cgo_newHandle
```


## function \_set\_crosscall2


```haxe
function _set_crosscall2():Void
```


[\(view code\)](<./Cgo_newHandle.hx#L3>)


## function \_\_set\_crosscall2


```haxe
function __set_crosscall2():Void
```


[\(view code\)](<./Cgo_newHandle.hx#L3>)


## function \_\_cgo\_panic


```haxe
function __cgo_panic(_a:stdgo.Ref<stdgo._internal.runtime.cgo.T__struct_0>):Void
```


[\(view code\)](<./Cgo_newHandle.hx#L3>)


## function \_\_runtime\_cgo\_panic\_internal


```haxe
function __runtime_cgo_panic_internal(_p:stdgo.Pointer<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Cgo_newHandle.hx#L3>)


## function newHandle


```haxe
function newHandle(_v:stdgo.AnyInterface):stdgo._internal.runtime.cgo.Handle
```


[\(view code\)](<./Cgo_newHandle.hx#L3>)


# Typedefs


```haxe
import stdgo._internal.runtime.cgo.*
```


## typedef Handle


```haxe
typedef Handle = stdgo.GoUIntptr;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_cstr:stdgo.Pointer<stdgo.GoUInt8>;
};
```


