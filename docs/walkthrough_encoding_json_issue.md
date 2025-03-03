# Walkthrough: encoding/json compiled Haxe code won't compile

*notice:* This guide requires haxe, hashlink, nodejs, and hxnodejs to be installed along with the compiler.

The compiler is complex and can be intense to try and figure out.

Instead of the conventional way of explaining everything for 30mins and hoping 20% sticks, I would like to walk you through a real issue, and see what the steps are to find the issue and write a test for it.


### What is encoding/json?

It's a stdlib pkg (short for package) in golang, all stdlibs for the language can be found [here](https://pkg.go.dev/std).

The name is self explanatory, however keep in mind the layout, unlike in Haxe where json will be thrown into the ``haxe`` package, all of Go's stdlib is categorized, this can help ease navigation and many issues effecting one ``encoding`` package will likely effect the others because of shared imports.

## The problem

encoding/json does not compile.


To have the compiler build this package:

```sh
haxe --run Make std encoding/json 
```


To run the encoding/json tests:
```sh
haxe --run Make test encoding/json --interp
```

- ``haxe --run Make`` runs the ``Make.hx`` file.
- ``test`` is the argument to tell what to have ``Make`` do.
- ``encoding/json`` is the package to test.
- ``--interp`` is how to run the test, this could also be ``--hl test.hl`` but note that you are responsible for running ``hl test.hl`` after.

The output is:

```sh
./stdgo/_internal/mime/multipart/Multipart_fileheader_static_extension.hx:22: characters 9-120

 22 |         return stdgo._internal.os.Os_open.open((@:checkr _fh ?? throw "null pointer dereference")._tmpfile?.__copy__());
    |         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    | error: stdgo.Ref<stdgo._internal.os.File> should be stdgo._internal.mime.multipart.File
    | have: { _0: stdgo.Ref<...> }
    | want: { _0: stdgo._internal.mime.multipart.File }
```

First thing I see is the top line:
```sh
./stdgo/_internal/mime/multipart/Multipart_fileheader_static_extension.hx:22: characters 9-120
```

Based on this information we know that type fileheader is using a [static extension](https://haxe.org/manual/lf-static-extension.html).

All go2hx generated static extensions will also use the ``@:using`` metadata documented [here](https://haxe.org/manual/lf-static-extension-metadata.html#default-static-extension)

This is important as when debugging the code it may be tricky to know where some methods are coming from, chances are it is because of this.

This paradigm is done to keep the code fast, by allowing Integer types to have methods like in Go, without needing to allocate an entire class for it.


```sh
have: { _0: stdgo.Ref<...> }
want: { _0: stdgo._internal.mime.multipart.File }
```

Given the above error information it's a little hard to draw any conclusion so let's go to the function in the code: ``./stdgo/_internal/mime/multipart/Multipart_fileheader_static_extension.hx:22``

We can see that the return type is an anonymous structure:
```haxe
{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Error; }
```

This is very useful to know because the return line creates no such anonymous structure, and instead is a single return value.

However if we check the method ``stdgo._internal.os.Os_open.open`` we found it, it is also has a multi return type, the types are similar but not identical. One is a ``multipart`` ``File`` and the other is an ``os`` ``File``.

The ``multipart.File``:
```haxe
@:interface typedef File = stdgo.StructType & {
    function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function readAt(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    function close():stdgo.Error;
};
```

You can see it is decorated with ``@:interface`` metadata, this denotes that the original Go type was an interface.


The ``os.File``:
```haxe
package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_file_static_extension.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file> = (null : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__close():() -> stdgo.Error return @:check32 this._file._close;
    public function __copy__() {
        return new File(_file, _input, _output);
    }
}
```

This is a class without ``@:interface`` instead it has a ``@:using``, the Go type is also a ``struct`` instead, and it's methods are only exposed with the static extension system.

This is very important because of how interfaces are represented in Haxe to have the same behavior as Go.

## Explanation of interfaces to understand why the above is a problem

Haxe interfaces are explicit, Go interfaces are implicit, this is why in Haxe the interfaces for Go must be represented via typedef to an anonymous structure.

[Structural unification](https://haxe.org/manual/type-system-structural-subtyping.html) in Haxe is the best representation of Go interfaces but it creates extra problems.

As mentioned above [static extension](https://haxe.org/manual/lf-static-extension.html) are used to give a named type integer methods without needing to wrap the Integer in a class. Static extension methods however are not real methods attached to the type and therefore [structural unification](https://haxe.org/manual/type-system-structural-subtyping.html) does not work.

The current solution is when a value is cast into an interface (empty interface is a special case to get into later) a structure must be created in order to fulfill the unification with the interface. This must be done explicitly, by calling wrapperExpr in ``Typer.hx``:

```haxe
private function wrapperExpr(t:GoType, y:Expr, info:Info):Expr {
	var self = y;
	var selfPointer = false;
	if (isPointer(t)) {
		selfPointer = true;
		t = getElem(t);
		self = macro $y.value;
	} else if (isRef(t)) {
		t = getElem(t);
	}
	switch t {
		case named(name, methods, type, alias, params):
			if (!alias && methods.length == 0 && !isStruct(type))
				return y;
			if (type == invalidType)
				return y;
			if (isInterface(type)) {
				return selfPointer ? self : y;
			}
			return macro stdgo.Go.asInterface($y);
		default:
	}
	return y;
}
```

This function if the criteria is met calls ``stdgo.Go.asInterface`` which is a macro function that looks at the type of ``y`` and tries to create the type of ``y`` with the suffix ``_asInterface``. This suffix denotes all classes that wrap go2hx compiled types that need to be able to be unified with interfaces.

Therefore the first return type ``multipart.File`` does not unify with ``os.File`` because ``wrapperExpr`` is not explicitly being called by the macro function being added to the code. The function if included would create a structure to unify with the return type, solving the issue.

## TLDR

To turn non interface types to an interface type most likely ``stdgo.Go.asInterface`` will need to be there to create the structure necessary for unification.

## Making a test!

**Note for devs that are not big test writers:**

You may think, that's great you understand the problem just fix it and go to the next issue, but half the battle is finding the issue and isolating it, so put a little bit more effort to create a test and prevent it from occurring again, and also to know that the problem is actually fixed.

This part requires knowing how to write Go code, it's a simple language but it has its quirks and being able to write it to isolate problems is very useful.


Quick testing of Go code is done in ``./rnd`` in there you can find a main file ``./rnd/main.go``

Rewrite the file to have it run the isolated problem. The problem is that when a return expr is a call expr with a multi return type of one type being ``struct`` returning for a type with ``interface`` for the first type, then a proper casting is missing.

Here is minimal code to test this problem:
```go
// all Main files need to use a main package, regardless of location
package main

// main entry point func
func main() {
	a()
}
// multi return type, taking an Interface and a Bool 
func a() (WriterInterface, bool) {
    // calls to b which is also a multi return type
	return b()
}

// multi return type, taking a Struct and a Bool
func b() (Writer, bool) {
	return Writer{}, false
}

type Writer struct{}
// A method that in Haxe will be represented using a static extension
// This is required to prevent the interface from being empty
// Empty interfaces have much different behavior and do not rely on structure unification as there is no method to unify with
func (Writer) Write() {}
// Interface that will unify with Writer because they both have the same methods
type WriterInterface interface {
	Write()
}
```

To run this code:
```sh
haxe --run Make rnd
```

Now after confirming it indeed errors as expected, you can add it to the unit tests by creating a named file such as ``multireturn0.go`` and copy-paste the contents from ``./rnd/main.go`` and that is it.


### Conclusion

Almost all compiler issues will come from places where Haxe does not have overlap with Go, a good understanding of Go and Haxe is required to be able to diagnose issues effectively.

The best technical ways to learn both languages:
- [Go spec](https://go.dev/ref/spec)
- [Haxe manual](https://haxe.org/manual/introduction.html)


## What should be covered next?

- Part 2 fixing the encoding/json compiler issue in the compiler source
- Detailed walkthrough of how Go code turns into Haxe code (the functions called and file locations along with detailed structure of the compiler)
- Explaining the interop system that links go2hx styled Haxe code to normal Haxe code.
- The differences between Go and Haxe and how go2hx tries to solve each case.