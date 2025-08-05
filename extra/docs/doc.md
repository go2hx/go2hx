## Table of content
- [Pointers](#pointers)
- [Errors as values](#errors-as-values)
- [Sub-specification](#sub-specification)
- [Multi returns](#multireturns)
- [Casting to/from go2hx types](#casting-tofrom-go2hx-types)
- [Coroutines and javascript support](#coroutines-and-javascript-support)
- [Interfaces](#interfaces)
- [Installing the entire Go stdlib](#installing-the-entire-go-stdlib)


## Pointers

go2hx pointers can be made by calling ``go.Go.pointer(x)`` where x is the variable you want to become a pointer.

To dereference a pointer (get the value) you do ``ptr.value`` 


## Errors as values

Go code handles errors as values, which means compared to Haxe code, you will often see a tuple of the value and the error, where as in Haxe it would only be the value and if you want to catch the error, you'd need to wrap it in a try catch block.
```haxe
// go2hx
final tuple = go.os.Os.open("somefile.txt");
final value = tuple._0;
final error = tuple._1;
// haxe
var error = null;
var value = null;
try {
    value = sys.io.File.read("somefile.txt");
}catch(e) {
    error = e;
}
```

## Sub-specification

All code in go2hx is expected to work except code that uses:
- Unsafe
- Cgo
- Go's runtime specific parts in reflect and runtime
- Syscall
- Only the specified Go version is supported mentioned on the [README](../../README.md)
- Only a limited number of Haxe targets are supported by go2hx with CI badges on the [README](../../README.md)


## Casting to/from go2hx types

| Haxe std type | go2hx type |
|---|---|
| String | go.GoString |
| Int | go.GoInt8/16/32,  go.GoByte, go.GoRune |
| UInt | go.GoUInt8/16/32 |
| N/A | go.Chan, go.GoUIntptr, go.GoComplex64, go.GoComplex128 |
| .value to get elem | go.Pointer, go.AnyInterface |
| .__underlying__().value to get elem | go2hx interfaces X_asInterface |
| implements Haxe IMap interface | go.GoMap<K,V> |
| Array\<T> | go.Slice\<T> |
| Array\<T> | go.GoArray\<T> |
| Bool | Bool |

## Coroutines and Javascript support

Goroutines are a core part of Go code, go2hx currently simulates them by using a one thread per goroutine approach. This causes an issue for Javascript which has no thread api, but with the inclusion of proper coroutines coming to Haxe 5, Javascript will be added back, once Haxe coroutines are integrated into go2hx.

## Interfaces

Interfaces are implicit in Go, unlike in Haxe where they are explicit. Go2hx implements Go style interfaces with [structual subtyping](https://haxe.org/manual/type-system-structural-subtyping.html) this is similar to the ``Iterator`` case in Haxe, where any type can be an ``Iterator`` as long as ``hasNext`` and ``next`` are defined with correct type information, more in depth explanation [here](https://haxe.org/manual/lf-iterators.html).

Go also has an ``interface{}`` ``any`` which allows any type to unify with it given it has no methods.
This is normally used to gain insight into a type at runtime, as interfaces hold underlying type information.

To cast into a an ``go.AnyInterface``:

```haxe
go.Go.toAnyInterface(x);
```

To cast from a named type to an interface:
```haxe
go.Go.asInterface(x);
```


## go2hx Named types

Go allows all named types to have receiver functions, also known as methods.
Go2hx implements this by using [static extensions](https://haxe.org/manual/lf-static-extension.html). This allows a named Int to have methods on it, without constructing a class for the Int.

All static extensions are named, ``TypeName_static_extension``

All named types also add a class with a similar pattern for creating interfaces ``TypeName_asInterface`` this constructs a proper class of the methods from static extensions in order to allow unification with other interfaces/structures.

To cast from a named type to an interface:
```haxe
go.Go.asInterface(x);
```

## Multi returns

Unlike Haxe, Go allows multiple return values. This is simulated in Haxe by creating an anon structure for example:
```haxe
function multiReturnFunction():{_0:go.GoString, _1:go.Error}
```

In order to handle this create a temporary variable and pull out the values as follows

```haxe
final obj = multiReturnFunction();
if (obj._1 != null)
    throw obj._1;
trace(obj._0);
```

## Installing the entire Go stdlib

This can be done in a single command:
```sh
haxelib run go2hx std
```