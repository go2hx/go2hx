# Module: `stdgo.reflect`

[(view library index)](../stdgo.md)


# Overview



Package reflect implements run\-time reflection, allowing a program to
manipulate objects with arbitrary types. The typical use is to take a value
with static type interface\{\} and extract its dynamic type information by
calling TypeOf, which returns a Type.  


A call to ValueOf returns a Value representing the run\-time data.
Zero takes a Type and returns a Value representing a zero value
for that type.  


See "The Laws of Reflection" for an introduction to reflection in Go:
https://golang.org/doc/articles/laws_of_reflection.html  

# Index


- [Constants](<#constants>)

- [`function append(s:stdgo.reflect.Value, x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-append>)

- [`function appendSlice(s:stdgo.reflect.Value, t:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-appendslice>)

- [`function arrayOf(_length:Int, elem:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-arrayof>)

- [`function chanOf(dir:stdgo.reflect.ChanDir, t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-chanof>)

- [`function copy(dst:stdgo.reflect.Value, src:stdgo.reflect.Value):Int`](<#function-copy>)

- [`function deepEqual(x:stdgo.AnyInterface, y:stdgo.AnyInterface):Bool`](<#function-deepequal>)

- [`function funcOf(_in:Array<stdgo.reflect.Type_>, out:Array<stdgo.reflect.Type_>, variadic:Bool):stdgo.reflect.Type_`](<#function-funcof>)

- [`function indirect(v:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-indirect>)

- [`function makeChan(typ:stdgo.reflect.Type_, buffer:Int):stdgo.reflect.Value`](<#function-makechan>)

- [`function makeFunc(typ:stdgo.reflect.Type_, fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-makefunc>)

- [`function makeMap(typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-makemap>)

- [`function makeMapWithSize(typ:stdgo.reflect.Type_, n:Int):stdgo.reflect.Value`](<#function-makemapwithsize>)

- [`function makeSlice(typ:stdgo.reflect.Type_, len:Int, cap:Int):stdgo.reflect.Value`](<#function-makeslice>)

- [`function mapOf(key:stdgo.reflect.Type_, elem:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-mapof>)

- [`function newAt(typ:stdgo.reflect.Type_, p:stdgo._internal.unsafe.UnsafePointer):stdgo.reflect.Value`](<#function-newat>)

- [`function new_(typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-new_>)

- [`function pointerTo(t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-pointerto>)

- [`function ptrTo(t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-ptrto>)

- [`function select(cases:Array<stdgo.reflect.SelectCase>):stdgo.Tuple3<Int, stdgo.reflect.Value, Bool>`](<#function-select>)

- [`function sliceOf(t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-sliceof>)

- [`function structOf(fields:Array<stdgo.reflect.StructField>):stdgo.reflect.Type_`](<#function-structof>)

- [`function swapper(slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#function-swapper>)

- [`function typeOf(i:stdgo.AnyInterface):stdgo.reflect.Type_`](<#function-typeof>)

- [`function valueOf(i:stdgo.AnyInterface):stdgo.reflect.Value`](<#function-valueof>)

- [`function visibleFields(t:stdgo.reflect.Type_):Array<stdgo.reflect.StructField>`](<#function-visiblefields>)

- [`function zero(typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-zero>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef ChanDir\_asInterface](<#typedef-chandir_asinterface>)

- [typedef ChanDir\_static\_extension](<#typedef-chandir_static_extension>)

- [typedef Kind](<#typedef-kind>)

- [typedef Kind\_asInterface](<#typedef-kind_asinterface>)

- [typedef Kind\_static\_extension](<#typedef-kind_static_extension>)

- [typedef MapIter](<#typedef-mapiter>)

- [typedef MapIter\_asInterface](<#typedef-mapiter_asinterface>)

- [typedef MapIter\_static\_extension](<#typedef-mapiter_static_extension>)

- [typedef Method](<#typedef-method>)

- [typedef Method\_asInterface](<#typedef-method_asinterface>)

- [typedef Method\_static\_extension](<#typedef-method_static_extension>)

- [typedef SelectCase](<#typedef-selectcase>)

- [typedef SelectDir](<#typedef-selectdir>)

- [typedef SliceHeader](<#typedef-sliceheader>)

- [typedef StringHeader](<#typedef-stringheader>)

- [typedef StructField](<#typedef-structfield>)

- [typedef StructField\_asInterface](<#typedef-structfield_asinterface>)

- [typedef StructField\_static\_extension](<#typedef-structfield_static_extension>)

- [typedef StructTag](<#typedef-structtag>)

- [typedef StructTag\_asInterface](<#typedef-structtag_asinterface>)

- [typedef StructTag\_static\_extension](<#typedef-structtag_static_extension>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Type\_\_static\_extension](<#typedef-type__static_extension>)

- [typedef Value](<#typedef-value>)

- [typedef ValueError](<#typedef-valueerror>)

- [typedef ValueError\_asInterface](<#typedef-valueerror_asinterface>)

- [typedef ValueError\_static\_extension](<#typedef-valueerror_static_extension>)

- [typedef Value\_asInterface](<#typedef-value_asinterface>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Constants


```haxe
import stdgo.reflect.Reflect
```


```haxe
final array:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.array
```


```haxe
final bool_:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.bool_
```


```haxe
final bothDir:stdgo._internal.reflect.ChanDir = stdgo._internal.reflect.Reflect.bothDir
```


```haxe
final chan:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.chan
```


```haxe
final complex128:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.complex128
```


```haxe
final complex64:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.complex64
```


```haxe
final float32:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.float32
```


```haxe
final float64:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.float64
```


```haxe
final func:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.func
```


```haxe
final int16:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.int16
```


```haxe
final int32:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.int32
```


```haxe
final int64:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.int64
```


```haxe
final int8:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.int8
```


```haxe
final int_:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.int_
```


```haxe
final interface_:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.interface_
```


```haxe
final invalid:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.invalid
```


```haxe
final map_:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.map_
```


```haxe
final pointer:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.pointer
```


```haxe
final ptr:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.ptr
```


```haxe
final recvDir:stdgo._internal.reflect.ChanDir = stdgo._internal.reflect.Reflect.recvDir
```


```haxe
final selectDefault:Null<Any> = stdgo._internal.reflect.Reflect.selectDefault
```


```haxe
final selectRecv:Null<Any> = stdgo._internal.reflect.Reflect.selectRecv
```


```haxe
final selectSend:Null<Any> = stdgo._internal.reflect.Reflect.selectSend
```


```haxe
final sendDir:stdgo._internal.reflect.ChanDir = stdgo._internal.reflect.Reflect.sendDir
```


```haxe
final slice:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.slice
```


```haxe
final string:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.string
```


```haxe
final struct_:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.struct_
```


```haxe
final uint:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uint
```


```haxe
final uint16:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uint16
```


```haxe
final uint32:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uint32
```


```haxe
final uint64:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uint64
```


```haxe
final uint8:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uint8
```


```haxe
final uintptr:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.uintptr
```


```haxe
final unsafePointer:stdgo._internal.reflect.Kind = stdgo._internal.reflect.Reflect.unsafePointer
```


# Functions


```haxe
import stdgo.reflect.Reflect
```


## function append


```haxe
function append(s:stdgo.reflect.Value, x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value
```



Append appends the values x to a slice s and returns the resulting slice.
As in Go, each x's value must be assignable to the slice's element type.  

[\(view code\)](<./Reflect.hx#L221>)


## function appendSlice


```haxe
function appendSlice(s:stdgo.reflect.Value, t:stdgo.reflect.Value):stdgo.reflect.Value
```



AppendSlice appends a slice t to a slice s and returns the resulting slice.
The slices s and t must have the same element type.  

[\(view code\)](<./Reflect.hx#L226>)


## function arrayOf


```haxe
function arrayOf(_length:Int, elem:stdgo.reflect.Type_):stdgo.reflect.Type_
```



ArrayOf returns the array type with the given length and element type.
For example, if t represents int, ArrayOf\(5, t\) represents \[5\]int.  


If the resulting type would be larger than the available address space,
ArrayOf panics.  

[\(view code\)](<./Reflect.hx#L216>)


## function chanOf


```haxe
function chanOf(dir:stdgo.reflect.ChanDir, t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



ChanOf returns the channel type with the given direction and element type.
For example, if t represents int, ChanOf\(RecvDir, t\) represents \<\-chan int.  


The gc runtime imposes a limit of 64 kB on channel element types.
If t's size is equal to or exceeds this limit, ChanOf panics.  

[\(view code\)](<./Reflect.hx#L174>)


## function copy


```haxe
function copy(dst:stdgo.reflect.Value, src:stdgo.reflect.Value):Int
```



Copy copies the contents of src into dst until either
dst has been filled or src has been exhausted.
It returns the number of elements copied.
Dst and src each must have kind Slice or Array, and
dst and src must have the same element type.  


As a special case, src can have kind String if the element type of dst is kind Uint8.  

[\(view code\)](<./Reflect.hx#L236>)


## function deepEqual


```haxe
function deepEqual(x:stdgo.AnyInterface, y:stdgo.AnyInterface):Bool
```



DeepEqual reports whether x and y are “deeply equal,” defined as follows.
Two values of identical type are deeply equal if one of the following cases applies.
Values of distinct types are never deeply equal.  


Array values are deeply equal when their corresponding elements are deeply equal.  


Struct values are deeply equal if their corresponding fields,
both exported and unexported, are deeply equal.  


Func values are deeply equal if both are nil; otherwise they are not deeply equal.  


Interface values are deeply equal if they hold deeply equal concrete values.  


Map values are deeply equal when all of the following are true:
they are both nil or both non\-nil, they have the same length,
and either they are the same map object or their corresponding keys
\(matched using Go equality\) map to deeply equal values.  


Pointer values are deeply equal if they are equal using Go's == operator
or if they point to deeply equal values.  


Slice values are deeply equal when all of the following are true:
they are both nil or both non\-nil, they have the same length,
and either they point to the same initial entry of the same underlying array
\(that is, &x\[0\] == &y\[0\]\) or their corresponding elements \(up to length\) are deeply equal.
Note that a non\-nil empty slice and a nil slice \(for example, \[\]byte\{\} and \[\]byte\(nil\)\)
are not deeply equal.  


Other values \- numbers, bools, strings, and channels \- are deeply equal
if they are equal using Go's == operator.  


In general DeepEqual is a recursive relaxation of Go's == operator.
However, this idea is impossible to implement without some inconsistency.
Specifically, it is possible for a value to be unequal to itself,
either because it is of func type \(uncomparable in general\)
or because it is a floating\-point NaN value \(not equal to itself in floating\-point comparison\),
or because it is an array, struct, or interface containing
such a value.
On the other hand, pointer values are always equal to themselves,
even if they point at or contain such problematic values,
because they compare equal using Go's == operator, and that
is a sufficient condition to be deeply equal, regardless of content.
DeepEqual has been defined so that the same short\-cut applies
to slices and maps: if x and y are the same slice or the same map,
they are deeply equal regardless of content.  


As DeepEqual traverses the data values it may find a cycle. The
second and subsequent times that DeepEqual compares two pointer
values that have been compared before, it treats the values as
equal rather than examining the values to which they point.
This ensures that DeepEqual terminates.  

[\(view code\)](<./Reflect.hx#L117>)


## function funcOf


```haxe
function funcOf(_in:Array<stdgo.reflect.Type_>, out:Array<stdgo.reflect.Type_>, variadic:Bool):stdgo.reflect.Type_
```



FuncOf returns the function type with the given argument and result types.
For example if k represents int and e represents string,
FuncOf\(\[\]Type\{k\}, \[\]Type\{e\}, false\) represents func\(int\) string.  


The variadic argument controls whether the function is variadic. FuncOf
panics if the in\[len\(in\)\-1\] does not represent a slice and variadic is
true.  

[\(view code\)](<./Reflect.hx#L193>)


## function indirect


```haxe
function indirect(v:stdgo.reflect.Value):stdgo.reflect.Value
```



Indirect returns the value that v points to.
If v is a nil pointer, Indirect returns a zero Value.
If v is not a pointer, Indirect returns v.  

[\(view code\)](<./Reflect.hx#L271>)


## function makeChan


```haxe
function makeChan(typ:stdgo.reflect.Type_, buffer:Int):stdgo.reflect.Value
```



MakeChan creates a new channel with the specified type and buffer size.  

[\(view code\)](<./Reflect.hx#L256>)


## function makeFunc


```haxe
function makeFunc(typ:stdgo.reflect.Type_, fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value
```



MakeFunc returns a new function of the given Type
that wraps the function fn. When called, that new function
does the following:  

```
   - converts its arguments to a slice of Values.
   - runs results := fn(args).
   - returns the results as a slice of Values, one per formal result.
```

The implementation fn can assume that the argument Value slice
has the number and type of arguments given by typ.
If typ describes a variadic function, the final Value is itself
a slice representing the variadic arguments, as in the
body of a variadic function. The result Value slice returned by fn
must have the number and type of results given by typ.  


The Value.Call method allows the caller to invoke a typed function
in terms of Values; in contrast, MakeFunc allows the caller to implement
a typed function in terms of Values.  


The Examples section of the documentation includes an illustration
of how to use MakeFunc to build a swap function for different types.  

[\(view code\)](<./Reflect.hx#L141>)


## function makeMap


```haxe
function makeMap(typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



MakeMap creates a new map with the specified type.  

[\(view code\)](<./Reflect.hx#L260>)


## function makeMapWithSize


```haxe
function makeMapWithSize(typ:stdgo.reflect.Type_, n:Int):stdgo.reflect.Value
```



MakeMapWithSize creates a new map with the specified type
and initial space for approximately n elements.  

[\(view code\)](<./Reflect.hx#L265>)


## function makeSlice


```haxe
function makeSlice(typ:stdgo.reflect.Type_, len:Int, cap:Int):stdgo.reflect.Value
```



MakeSlice creates a new zero\-initialized slice value
for the specified slice type, length, and capacity.  

[\(view code\)](<./Reflect.hx#L252>)


## function mapOf


```haxe
function mapOf(key:stdgo.reflect.Type_, elem:stdgo.reflect.Type_):stdgo.reflect.Type_
```



MapOf returns the map type with the given key and element types.
For example, if k represents int and e represents string,
MapOf\(k, e\) represents map\[int\]string.  


If the key type is not a valid map key type \(that is, if it does
not implement Go's == operator\), MapOf panics.  

[\(view code\)](<./Reflect.hx#L183>)


## function newAt


```haxe
function newAt(typ:stdgo.reflect.Type_, p:stdgo._internal.unsafe.UnsafePointer):stdgo.reflect.Value
```



NewAt returns a Value representing a pointer to a value of the
specified type, using p as that pointer.  

[\(view code\)](<./Reflect.hx#L294>)


## function new\_


```haxe
function new_(typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



New returns a Value representing a pointer to a new zero value
for the specified type. That is, the returned Value's Type is PointerTo\(typ\).  

[\(view code\)](<./Reflect.hx#L289>)


## function pointerTo


```haxe
function pointerTo(t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



PointerTo returns the pointer type with element t.
For example, if t represents type Foo, PointerTo\(t\) represents \*Foo.  

[\(view code\)](<./Reflect.hx#L166>)


## function ptrTo


```haxe
function ptrTo(t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



PtrTo returns the pointer type with element t.
For example, if t represents type Foo, PtrTo\(t\) represents \*Foo.  


PtrTo is the old spelling of PointerTo.
The two functions behave identically.  

[\(view code\)](<./Reflect.hx#L161>)


## function select


```haxe
function select(cases:Array<stdgo.reflect.SelectCase>):stdgo.Tuple3<Int, stdgo.reflect.Value, Bool>
```



Select executes a select operation described by the list of cases.
Like the Go select statement, it blocks until at least one of the cases
can proceed, makes a uniform pseudo\-random choice,
and then executes that case. It returns the index of the chosen case
and, if that case was a receive operation, the value received and a
boolean indicating whether the value corresponds to a send on the channel
\(as opposed to a zero value received because the channel is closed\).
Select supports a maximum of 65536 cases.  

[\(view code\)](<./Reflect.hx#L247>)


## function sliceOf


```haxe
function sliceOf(t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



SliceOf returns the slice type with element type t.
For example, if t represents int, SliceOf\(t\) represents \[\]int.  

[\(view code\)](<./Reflect.hx#L198>)


## function structOf


```haxe
function structOf(fields:Array<stdgo.reflect.StructField>):stdgo.reflect.Type_
```



StructOf returns the struct type containing fields.
The Offset and Index fields are ignored and computed as they would be
by the compiler.  


StructOf currently does not generate wrapper methods for embedded
fields and panics if passed unexported StructFields.
These limitations may be lifted in a future version.  

[\(view code\)](<./Reflect.hx#L208>)


## function swapper


```haxe
function swapper(slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```



Swapper returns a function that swaps the elements in the provided
slice.  


Swapper panics if the provided interface is not a slice.  

[\(view code\)](<./Reflect.hx#L148>)


## function typeOf


```haxe
function typeOf(i:stdgo.AnyInterface):stdgo.reflect.Type_
```



TypeOf returns the reflection Type that represents the dynamic type of i.
If i is a nil interface value, TypeOf returns nil.  

[\(view code\)](<./Reflect.hx#L153>)


## function valueOf


```haxe
function valueOf(i:stdgo.AnyInterface):stdgo.reflect.Value
```



ValueOf returns a new Value initialized to the concrete value
stored in the interface i. ValueOf\(nil\) returns the zero Value.  

[\(view code\)](<./Reflect.hx#L276>)


## function visibleFields


```haxe
function visibleFields(t:stdgo.reflect.Type_):Array<stdgo.reflect.StructField>
```



VisibleFields returns all the visible fields in t, which must be a
struct type. A field is defined as visible if it's accessible
directly with a FieldByName call. The returned fields include fields
inside anonymous struct members and unexported fields. They follow
the same order found in the struct, with anonymous fields followed
immediately by their promoted fields.  


For each element e of the returned slice, the corresponding field
can be retrieved from a value v of type t by calling v.FieldByIndex\(e.Index\).  

[\(view code\)](<./Reflect.hx#L306>)


## function zero


```haxe
function zero(typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



Zero returns a Value representing the zero value for the specified type.
The result is different from the zero value of the Value struct,
which represents no value at all.
For example, Zero\(TypeOf\(42\)\) returns a Value with Kind Int and value 0.
The returned value is neither addressable nor settable.  

[\(view code\)](<./Reflect.hx#L284>)


# Typedefs


```haxe
import stdgo.reflect.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo._internal.reflect.ChanDir;
```


## typedef ChanDir\_asInterface


```haxe
typedef ChanDir_asInterface = Dynamic;
```


## typedef ChanDir\_static\_extension


```haxe
typedef ChanDir_static_extension = Dynamic;
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.reflect.Kind;
```


## typedef Kind\_asInterface


```haxe
typedef Kind_asInterface = Dynamic;
```


## typedef Kind\_static\_extension


```haxe
typedef Kind_static_extension = Dynamic;
```


## typedef MapIter


```haxe
typedef MapIter = Dynamic;
```


## typedef MapIter\_asInterface


```haxe
typedef MapIter_asInterface = Dynamic;
```


## typedef MapIter\_static\_extension


```haxe
typedef MapIter_static_extension = Dynamic;
```


## typedef Method


```haxe
typedef Method = Dynamic;
```


## typedef Method\_asInterface


```haxe
typedef Method_asInterface = Dynamic;
```


## typedef Method\_static\_extension


```haxe
typedef Method_static_extension = Dynamic;
```


## typedef SelectCase


```haxe
typedef SelectCase = Dynamic;
```


## typedef SelectDir


```haxe
typedef SelectDir = stdgo._internal.reflect.SelectDir;
```


## typedef SliceHeader


```haxe
typedef SliceHeader = Dynamic;
```


## typedef StringHeader


```haxe
typedef StringHeader = Dynamic;
```


## typedef StructField


```haxe
typedef StructField = Dynamic;
```


## typedef StructField\_asInterface


```haxe
typedef StructField_asInterface = Dynamic;
```


## typedef StructField\_static\_extension


```haxe
typedef StructField_static_extension = Dynamic;
```


## typedef StructTag


```haxe
typedef StructTag = stdgo._internal.reflect.StructTag;
```


## typedef StructTag\_asInterface


```haxe
typedef StructTag_asInterface = Dynamic;
```


## typedef StructTag\_static\_extension


```haxe
typedef StructTag_static_extension = Dynamic;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.reflect.Type_;
```


## typedef Type\_\_static\_extension


```haxe
typedef Type__static_extension = Dynamic;
```


## typedef Value


```haxe
typedef Value = Dynamic;
```


## typedef ValueError


```haxe
typedef ValueError = Dynamic;
```


## typedef ValueError\_asInterface


```haxe
typedef ValueError_asInterface = Dynamic;
```


## typedef ValueError\_static\_extension


```haxe
typedef ValueError_static_extension = Dynamic;
```


## typedef Value\_asInterface


```haxe
typedef Value_asInterface = Dynamic;
```


## typedef Value\_static\_extension


```haxe
typedef Value_static_extension = Dynamic;
```


