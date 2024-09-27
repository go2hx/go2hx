# Module: `stdgo.runtime.cgo`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Cgo](<#class-cgo>)

  - [`function newHandle(_v:stdgo.AnyInterface):stdgo.runtime.cgo.Handle`](<#cgo-function-newhandle>)

- [typedef Handle](<#typedef-handle>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Classes


```haxe
import
```


## class Cgo


### Cgo function newHandle


```haxe
function newHandle(_v:stdgo.AnyInterface):stdgo.runtime.cgo.Handle
```



NewHandle returns a handle for a given value.  


The handle is valid until the program calls Delete on it. The handle
uses resources, and this package assumes that C code may hold on to
the handle, so a program must explicitly call Delete when the handle
is no longer needed.  


The intended use is to pass the returned handle to C code, which
passes it back to Go, which calls Value.  

[\(view code\)](<./Cgo.hx#L27>)


# Typedefs


```haxe
import
```


## typedef Handle


```haxe
typedef Handle = stdgo._internal.runtime.cgo.Handle;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.runtime.cgo.T__struct_0;
```


