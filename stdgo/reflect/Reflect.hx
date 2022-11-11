package stdgo.reflect;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package reflect implements run-time reflection, allowing a program to
	// manipulate objects with arbitrary types. The typical use is to take a value
	// with static type interface{} and extract its dynamic type information by
	// calling TypeOf, which returns a Type.
	//
	// A call to ValueOf returns a Value representing the run-time data.
	// Zero takes a Type and returns a Value representing a zero value
	// for that type.
	//
	// See "The Laws of Reflection" for an introduction to reflection in Go:
	// https://golang.org/doc/articles/laws_of_reflection.html
**/
private var __go2hxdoc__package:Bool;

final invalid:Kind = ((0 : GoUInt) : Kind);
final bool_:Kind = ((0 : GoUInt) : Kind);
final int_:Kind = ((0 : GoUInt) : Kind);
final int8:Kind = ((0 : GoUInt) : Kind);
final int16:Kind = ((0 : GoUInt) : Kind);
final int32:Kind = ((0 : GoUInt) : Kind);
final int64:Kind = ((0 : GoUInt) : Kind);
final uint:Kind = ((0 : GoUInt) : Kind);
final uint8:Kind = ((0 : GoUInt) : Kind);
final uint16:Kind = ((0 : GoUInt) : Kind);
final uint32:Kind = ((0 : GoUInt) : Kind);
final uint64:Kind = ((0 : GoUInt) : Kind);
final uintptr:Kind = ((0 : GoUInt) : Kind);
final float32:Kind = ((0 : GoUInt) : Kind);
final float64:Kind = ((0 : GoUInt) : Kind);
final complex64:Kind = ((0 : GoUInt) : Kind);
final complex128:Kind = ((0 : GoUInt) : Kind);
final array:Kind = ((0 : GoUInt) : Kind);
final chan:Kind = ((0 : GoUInt) : Kind);
final func:Kind = ((0 : GoUInt) : Kind);
final interface_:Kind = ((0 : GoUInt) : Kind);
final map:Kind = ((0 : GoUInt) : Kind);
final pointer:Kind = ((0 : GoUInt) : Kind);
final slice:Kind = ((0 : GoUInt) : Kind);
final string:Kind = ((0 : GoUInt) : Kind);
final struct_:Kind = ((0 : GoUInt) : Kind);
final unsafePointer:Kind = ((0 : GoUInt) : Kind);

/**
	// Ptr is the old name for the Pointer kind.
**/
final ptr:Kind = ((0 : GoUInt) : Kind);

/**
	// <-chan
**/
final recvDir:ChanDir = ((0 : GoInt) : ChanDir);

/**
	// chan<-
**/
final sendDir:ChanDir = ((0 : GoInt) : ChanDir);

/**
	// chan
**/
final bothDir:ChanDir = ((0 : GoInt) : ChanDir);

/**
	// case Chan <- Send
**/
final selectSend:InvalidType = @:unknown_default_value null;

/**
	// case <-Chan:
**/
final selectRecv:InvalidType = @:unknown_default_value null;

/**
	// default
**/
final selectDefault:InvalidType = @:unknown_default_value null;

/**
	// Type is the representation of a Go type.
	//
	// Not all methods apply to all kinds of types. Restrictions,
	// if any, are noted in the documentation for each method.
	// Use the Kind method to find out the kind of type before
	// calling kind-specific methods. Calling a method
	// inappropriate to the kind of type causes a run-time panic.
	//
	// Type values are comparable, such as with the == operator,
	// so they can be used as map keys.
	// Two Type values are equal if they represent identical types.
**/
typedef Type = StructType & {
	/**
		// Align returns the alignment in bytes of a value of
		// this type when allocated in memory.
	**/
	public function align():GoInt;

	/**
		// FieldAlign returns the alignment in bytes of a value of
		// this type when used as a field in a struct.
	**/
	public function fieldAlign():GoInt;

	/**
		// Method returns the i'th method in the type's method set.
		// It panics if i is not in the range [0, NumMethod()).
		//
		// For a non-interface type T or *T, the returned Method's Type and Func
		// fields describe a function whose first argument is the receiver,
		// and only exported methods are accessible.
		//
		// For an interface type, the returned Method's Type field gives the
		// method signature, without a receiver, and the Func field is nil.
		//
		// Methods are sorted in lexicographic order.
	**/
	public function method(_0:GoInt):Method;

	/**
		// MethodByName returns the method with that name in the type's
		// method set and a boolean indicating if the method was found.
		//
		// For a non-interface type T or *T, the returned Method's Type and Func
		// fields describe a function whose first argument is the receiver.
		//
		// For an interface type, the returned Method's Type field gives the
		// method signature, without a receiver, and the Func field is nil.
	**/
	public function methodByName(_0:GoString):{var _0:Method; var _1:Bool;};

	/**
		// NumMethod returns the number of methods accessible using Method.
		//
		// For a non-interface type, it returns the number of exported methods.
		//
		// For an interface type, it returns the number of exported and unexported methods.
	**/
	public function numMethod():GoInt;

	/**
		// Name returns the type's name within its package for a defined type.
		// For other (non-defined) types it returns the empty string.
	**/
	public function name():GoString;

	/**
		// PkgPath returns a defined type's package path, that is, the import path
		// that uniquely identifies the package, such as "encoding/base64".
		// If the type was predeclared (string, error) or not defined (*T, struct{},
		// []int, or A where A is an alias for a non-defined type), the package path
		// will be the empty string.
	**/
	public function pkgPath():GoString;

	/**
		// Size returns the number of bytes needed to store
		// a value of the given type; it is analogous to unsafe.Sizeof.
	**/
	public function size():GoUIntptr;

	/**
		// String returns a string representation of the type.
		// The string representation may use shortened package names
		// (e.g., base64 instead of "encoding/base64") and is not
		// guaranteed to be unique among types. To test for type identity,
		// compare the Types directly.
	**/
	public function string():GoString;

	/**
		// Kind returns the specific kind of this type.
	**/
	public function kind():Kind;

	/**
		// Implements reports whether the type implements the interface type u.
	**/
	public function implements_(_u:Type):Bool;

	/**
		// AssignableTo reports whether a value of the type is assignable to type u.
	**/
	public function assignableTo(_u:Type):Bool;

	/**
		// ConvertibleTo reports whether a value of the type is convertible to type u.
		// Even if ConvertibleTo returns true, the conversion may still panic.
		// For example, a slice of type []T is convertible to *[N]T,
		// but the conversion will panic if its length is less than N.
	**/
	public function convertibleTo(_u:Type):Bool;

	/**
		// Comparable reports whether values of this type are comparable.
		// Even if Comparable returns true, the comparison may still panic.
		// For example, values of interface type are comparable,
		// but the comparison will panic if their dynamic type is not comparable.
	**/
	public function comparable():Bool;

	/**
		// Bits returns the size of the type in bits.
		// It panics if the type's Kind is not one of the
		// sized or unsized Int, Uint, Float, or Complex kinds.
	**/
	public function bits():GoInt;

	/**
		// ChanDir returns a channel type's direction.
		// It panics if the type's Kind is not Chan.
	**/
	public function chanDir():ChanDir;

	/**
		// IsVariadic reports whether a function type's final input parameter
		// is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's
		// implicit actual type []T.
		//
		// For concreteness, if t represents func(x int, y ... float64), then
		//
		//	t.NumIn() == 2
		//	t.In(0) is the reflect.Type for "int"
		//	t.In(1) is the reflect.Type for "[]float64"
		//	t.IsVariadic() == true
		//
		// IsVariadic panics if the type's Kind is not Func.
	**/
	public function isVariadic():Bool;

	/**
		// Elem returns a type's element type.
		// It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
	**/
	public function elem():Type;

	/**
		// Field returns a struct type's i'th field.
		// It panics if the type's Kind is not Struct.
		// It panics if i is not in the range [0, NumField()).
	**/
	public function field(_i:GoInt):StructField;

	/**
		// FieldByIndex returns the nested field corresponding
		// to the index sequence. It is equivalent to calling Field
		// successively for each index i.
		// It panics if the type's Kind is not Struct.
	**/
	public function fieldByIndex(_index:Slice<GoInt>):StructField;

	/**
		// FieldByName returns the struct field with the given name
		// and a boolean indicating if the field was found.
	**/
	public function fieldByName(_name:GoString):{var _0:StructField; var _1:Bool;};

	/**
		// FieldByNameFunc returns the struct field with a name
		// that satisfies the match function and a boolean indicating if
		// the field was found.
		//
		// FieldByNameFunc considers the fields in the struct itself
		// and then the fields in any embedded structs, in breadth first order,
		// stopping at the shallowest nesting depth containing one or more
		// fields satisfying the match function. If multiple fields at that depth
		// satisfy the match function, they cancel each other
		// and FieldByNameFunc returns no match.
		// This behavior mirrors Go's handling of name lookup in
		// structs containing embedded fields.
	**/
	public function fieldByNameFunc(_match:GoString->Bool):{var _0:StructField; var _1:Bool;};

	/**
		// In returns the type of a function type's i'th input parameter.
		// It panics if the type's Kind is not Func.
		// It panics if i is not in the range [0, NumIn()).
	**/
	public function in_(_i:GoInt):Type;

	/**
		// Key returns a map type's key type.
		// It panics if the type's Kind is not Map.
	**/
	public function key():Type;

	/**
		// Len returns an array type's length.
		// It panics if the type's Kind is not Array.
	**/
	public function len():GoInt;

	/**
		// NumField returns a struct type's field count.
		// It panics if the type's Kind is not Struct.
	**/
	public function numField():GoInt;

	/**
		// NumIn returns a function type's input parameter count.
		// It panics if the type's Kind is not Func.
	**/
	public function numIn():GoInt;

	/**
		// NumOut returns a function type's output parameter count.
		// It panics if the type's Kind is not Func.
	**/
	public function numOut():GoInt;

	/**
		// Out returns the type of a function type's i'th output parameter.
		// It panics if the type's Kind is not Func.
		// It panics if i is not in the range [0, NumOut()).
	**/
	public function out(_i:GoInt):Type;
};

/**
	// Method represents a single method.
**/
@:structInit @:using(stdgo.reflect.Reflect.Method_static_extension) class Method {
	/**
		// Name is the method name.
	**/
	public var name:GoString = "";

	/**
		// PkgPath is the package path that qualifies a lower case (unexported)
		// method name. It is empty for upper case (exported) method names.
		// The combination of PkgPath and Name uniquely identifies a method
		// in a method set.
		// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	**/
	public var pkgPath:GoString = "";

	/**
		// method type
	**/
	public var type:Type = (null : Type);

	/**
		// func with receiver as first argument
	**/
	public var func:Value = ({} : Value);

	/**
		// index for Type.Method
	**/
	public var index:GoInt = 0;

	public function new(?name:GoString, ?pkgPath:GoString, ?type:Type, ?func:Value, ?index:GoInt) {
		if (name != null)
			this.name = name;
		if (pkgPath != null)
			this.pkgPath = pkgPath;
		if (type != null)
			this.type = type;
		if (func != null)
			this.func = func;
		if (index != null)
			this.index = index;
	}

	public function __copy__() {
		return new Method(name, pkgPath, type, func, index);
	}
}

/**
	// A StructField describes a single field in a struct.
**/
@:structInit @:using(stdgo.reflect.Reflect.StructField_static_extension) class StructField {
	/**
		// Name is the field name.
	**/
	public var name:GoString = "";

	/**
		// PkgPath is the package path that qualifies a lower case (unexported)
		// field name. It is empty for upper case (exported) field names.
		// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	**/
	public var pkgPath:GoString = "";

	/**
		// field type
	**/
	public var type:Type = (null : Type);

	/**
		// field tag string
	**/
	public var tag:StructTag = (("" : GoString) : StructTag);

	/**
		// offset within struct, in bytes
	**/
	public var offset:GoUIntptr = 0;

	/**
		// index sequence for Type.FieldByIndex
	**/
	public var index:Slice<GoInt> = (null : Slice<GoInt>);

	/**
		// is an embedded field
	**/
	public var anonymous:Bool = false;

	public function new(?name:GoString, ?pkgPath:GoString, ?type:Type, ?tag:StructTag, ?offset:GoUIntptr, ?index:Slice<GoInt>, ?anonymous:Bool) {
		if (name != null)
			this.name = name;
		if (pkgPath != null)
			this.pkgPath = pkgPath;
		if (type != null)
			this.type = type;
		if (tag != null)
			this.tag = tag;
		if (offset != null)
			this.offset = offset;
		if (index != null)
			this.index = index;
		if (anonymous != null)
			this.anonymous = anonymous;
	}

	public function __copy__() {
		return new StructField(name, pkgPath, type, tag, offset, index, anonymous);
	}
}

/**
	// Value is the reflection interface to a Go value.
	//
	// Not all methods apply to all kinds of values. Restrictions,
	// if any, are noted in the documentation for each method.
	// Use the Kind method to find out the kind of value before
	// calling kind-specific methods. Calling a method
	// inappropriate to the kind of type causes a run time panic.
	//
	// The zero Value represents no value.
	// Its IsValid method returns false, its Kind method returns Invalid,
	// its String method returns "<invalid Value>", and all other methods panic.
	// Most functions and methods never return an invalid value.
	// If one does, its documentation states the conditions explicitly.
	//
	// A Value can be used concurrently by multiple goroutines provided that
	// the underlying Go value can be used concurrently for the equivalent
	// direct operations.
	//
	// To compare two Values, compare the results of the Interface method.
	// Using == on two Values does not compare the underlying values
	// they represent.
**/
@:structInit @:using(stdgo.reflect.Reflect.Value_static_extension) class Value {
	public function new() {}

	public function __copy__() {
		return new Value();
	}
}

/**
	// A ValueError occurs when a Value method is invoked on
	// a Value that does not support it. Such cases are documented
	// in the description of each method.
**/
@:structInit @:using(stdgo.reflect.Reflect.ValueError_static_extension) class ValueError {
	public var method:GoString = "";
	public var kind:Kind = ((0 : GoUInt) : Kind);

	public function new(?method:GoString, ?kind:Kind) {
		if (method != null)
			this.method = method;
		if (kind != null)
			this.kind = kind;
	}

	public function __copy__() {
		return new ValueError(method, kind);
	}
}

/**
	// A MapIter is an iterator for ranging over a map.
	// See Value.MapRange.
**/
@:structInit @:using(stdgo.reflect.Reflect.MapIter_static_extension) class MapIter {
	public function new() {}

	public function __copy__() {
		return new MapIter();
	}
}

/**
	// StringHeader is the runtime representation of a string.
	// It cannot be used safely or portably and its representation may
	// change in a later release.
	// Moreover, the Data field is not sufficient to guarantee the data
	// it references will not be garbage collected, so programs must keep
	// a separate, correctly typed pointer to the underlying data.
**/
@:structInit class StringHeader {
	public var data:GoUIntptr = 0;
	public var len:GoInt = 0;

	public function new(?data:GoUIntptr, ?len:GoInt) {
		if (data != null)
			this.data = data;
		if (len != null)
			this.len = len;
	}

	public function __copy__() {
		return new StringHeader(data, len);
	}
}

/**
	// SliceHeader is the runtime representation of a slice.
	// It cannot be used safely or portably and its representation may
	// change in a later release.
	// Moreover, the Data field is not sufficient to guarantee the data
	// it references will not be garbage collected, so programs must keep
	// a separate, correctly typed pointer to the underlying data.
**/
@:structInit class SliceHeader {
	public var data:GoUIntptr = 0;
	public var len:GoInt = 0;
	public var cap:GoInt = 0;

	public function new(?data:GoUIntptr, ?len:GoInt, ?cap:GoInt) {
		if (data != null)
			this.data = data;
		if (len != null)
			this.len = len;
		if (cap != null)
			this.cap = cap;
	}

	public function __copy__() {
		return new SliceHeader(data, len, cap);
	}
}

/**
	// A SelectCase describes a single case in a select operation.
	// The kind of case depends on Dir, the communication direction.
	//
	// If Dir is SelectDefault, the case represents a default case.
	// Chan and Send must be zero Values.
	//
	// If Dir is SelectSend, the case represents a send operation.
	// Normally Chan's underlying value must be a channel, and Send's underlying value must be
	// assignable to the channel's element type. As a special case, if Chan is a zero Value,
	// then the case is ignored, and the field Send will also be ignored and may be either zero
	// or non-zero.
	//
	// If Dir is SelectRecv, the case represents a receive operation.
	// Normally Chan's underlying value must be a channel and Send must be a zero Value.
	// If Chan is a zero Value, then the case is ignored, but Send must still be a zero Value.
	// When a receive operation is selected, the received Value is returned by Select.
**/
@:structInit class SelectCase {
	/**
		// direction of case
	**/
	public var dir:SelectDir = ((0 : GoInt) : SelectDir);

	/**
		// channel to use (for send or receive)
	**/
	public var chan:Value = ({} : Value);

	/**
		// value to send (for send)
	**/
	public var send:Value = ({} : Value);

	public function new(?dir:SelectDir, ?chan:Value, ?send:Value) {
		if (dir != null)
			this.dir = dir;
		if (chan != null)
			this.chan = chan;
		if (send != null)
			this.send = send;
	}

	public function __copy__() {
		return new SelectCase(dir, chan, send);
	}
}

/**
	// A Kind represents the specific kind of type that a Type represents.
	// The zero Kind is not a valid kind.
**/
@:named @:using(stdgo.reflect.Reflect.Kind_static_extension) typedef Kind = GoUInt;

/**
	// ChanDir represents a channel type's direction.
**/
@:named @:using(stdgo.reflect.Reflect.ChanDir_static_extension) typedef ChanDir = GoInt;

/**
	// A StructTag is the tag string in a struct field.
	//
	// By convention, tag strings are a concatenation of
	// optionally space-separated key:"value" pairs.
	// Each key is a non-empty string consisting of non-control
	// characters other than space (U+0020 ' '), quote (U+0022 '"'),
	// and colon (U+003A ':').  Each value is quoted using U+0022 '"'
	// characters and Go string literal syntax.
**/
@:named @:using(stdgo.reflect.Reflect.StructTag_static_extension) typedef StructTag = GoString;

/**
	// A SelectDir describes the communication direction of a select case.
**/
@:named typedef SelectDir = GoInt;

/**
	// DeepEqual reports whether x and y are “deeply equal,” defined as follows.
	// Two values of identical type are deeply equal if one of the following cases applies.
	// Values of distinct types are never deeply equal.
	//
	// Array values are deeply equal when their corresponding elements are deeply equal.
	//
	// Struct values are deeply equal if their corresponding fields,
	// both exported and unexported, are deeply equal.
	//
	// Func values are deeply equal if both are nil; otherwise they are not deeply equal.
	//
	// Interface values are deeply equal if they hold deeply equal concrete values.
	//
	// Map values are deeply equal when all of the following are true:
	// they are both nil or both non-nil, they have the same length,
	// and either they are the same map object or their corresponding keys
	// (matched using Go equality) map to deeply equal values.
	//
	// Pointer values are deeply equal if they are equal using Go's == operator
	// or if they point to deeply equal values.
	//
	// Slice values are deeply equal when all of the following are true:
	// they are both nil or both non-nil, they have the same length,
	// and either they point to the same initial entry of the same underlying array
	// (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
	// Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
	// are not deeply equal.
	//
	// Other values - numbers, bools, strings, and channels - are deeply equal
	// if they are equal using Go's == operator.
	//
	// In general DeepEqual is a recursive relaxation of Go's == operator.
	// However, this idea is impossible to implement without some inconsistency.
	// Specifically, it is possible for a value to be unequal to itself,
	// either because it is of func type (uncomparable in general)
	// or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
	// or because it is an array, struct, or interface containing
	// such a value.
	// On the other hand, pointer values are always equal to themselves,
	// even if they point at or contain such problematic values,
	// because they compare equal using Go's == operator, and that
	// is a sufficient condition to be deeply equal, regardless of content.
	// DeepEqual has been defined so that the same short-cut applies
	// to slices and maps: if x and y are the same slice or the same map,
	// they are deeply equal regardless of content.
	//
	// As DeepEqual traverses the data values it may find a cycle. The
	// second and subsequent times that DeepEqual compares two pointer
	// values that have been compared before, it treats the values as
	// equal rather than examining the values to which they point.
	// This ensures that DeepEqual terminates.
**/
function deepEqual(_x:AnyInterface, _y:AnyInterface):Bool
	throw "reflect.deepEqual is not yet implemented";

/**
	// MakeFunc returns a new function of the given Type
	// that wraps the function fn. When called, that new function
	// does the following:
	//
	//   - converts its arguments to a slice of Values.
	//   - runs results := fn(args).
	//   - returns the results as a slice of Values, one per formal result.
	//
	// The implementation fn can assume that the argument Value slice
	// has the number and type of arguments given by typ.
	// If typ describes a variadic function, the final Value is itself
	// a slice representing the variadic arguments, as in the
	// body of a variadic function. The result Value slice returned by fn
	// must have the number and type of results given by typ.
	//
	// The Value.Call method allows the caller to invoke a typed function
	// in terms of Values; in contrast, MakeFunc allows the caller to implement
	// a typed function in terms of Values.
	//
	// The Examples section of the documentation includes an illustration
	// of how to use MakeFunc to build a swap function for different types.
**/
function makeFunc(_typ:Type, _fn:(_args:Slice<Value>) -> Slice<Value>):Value
	throw "reflect.makeFunc is not yet implemented";

/**
	// Swapper returns a function that swaps the elements in the provided
	// slice.
	//
	// Swapper panics if the provided interface is not a slice.
**/
function swapper(_slice:AnyInterface):(_i:GoInt, _j:GoInt) -> Void
	throw "reflect.swapper is not yet implemented";

/**
	// TypeOf returns the reflection Type that represents the dynamic type of i.
	// If i is a nil interface value, TypeOf returns nil.
**/
function typeOf(_i:AnyInterface):Type {
	if (_i == null)
		return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind))),
			new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind)));
	return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(_i.type), _i.type);
}

/**
	// PtrTo returns the pointer type with element t.
	// For example, if t represents type Foo, PtrTo(t) represents *Foo.
	//
	// PtrTo is the old spelling of PointerTo.
	// The two functions behave identically.
**/
function ptrTo(_t:Type):Type
	throw "reflect.ptrTo is not yet implemented";

/**
	// PointerTo returns the pointer type with element t.
	// For example, if t represents type Foo, PointerTo(t) represents *Foo.
**/
function pointerTo(_t:Type):Type
	throw "reflect.pointerTo is not yet implemented";

/**
	// ChanOf returns the channel type with the given direction and element type.
	// For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
	//
	// The gc runtime imposes a limit of 64 kB on channel element types.
	// If t's size is equal to or exceeds this limit, ChanOf panics.
**/
function chanOf(_dir:ChanDir, _t:Type):Type
	throw "reflect.chanOf is not yet implemented";

/**
	// MapOf returns the map type with the given key and element types.
	// For example, if k represents int and e represents string,
	// MapOf(k, e) represents map[int]string.
	//
	// If the key type is not a valid map key type (that is, if it does
	// not implement Go's == operator), MapOf panics.
**/
function mapOf(_key:Type, _elem:Type):Type
	throw "reflect.mapOf is not yet implemented";

/**
	// FuncOf returns the function type with the given argument and result types.
	// For example if k represents int and e represents string,
	// FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
	//
	// The variadic argument controls whether the function is variadic. FuncOf
	// panics if the in[len(in)-1] does not represent a slice and variadic is
	// true.
**/
function funcOf(_in:Slice<Type>, _out:Slice<Type>, _variadic:Bool):Type
	throw "reflect.funcOf is not yet implemented";

/**
	// SliceOf returns the slice type with element type t.
	// For example, if t represents int, SliceOf(t) represents []int.
**/
function sliceOf(_t:Type):Type
	throw "reflect.sliceOf is not yet implemented";

/**
	// StructOf returns the struct type containing fields.
	// The Offset and Index fields are ignored and computed as they would be
	// by the compiler.
	//
	// StructOf currently does not generate wrapper methods for embedded
	// fields and panics if passed unexported StructFields.
	// These limitations may be lifted in a future version.
**/
function structOf(_fields:Slice<StructField>):Type
	throw "reflect.structOf is not yet implemented";

/**
	// ArrayOf returns the array type with the given length and element type.
	// For example, if t represents int, ArrayOf(5, t) represents [5]int.
	//
	// If the resulting type would be larger than the available address space,
	// ArrayOf panics.
**/
function arrayOf(_length:GoInt, _elem:Type):Type
	throw "reflect.arrayOf is not yet implemented";

/**
	// Append appends the values x to a slice s and returns the resulting slice.
	// As in Go, each x's value must be assignable to the slice's element type.
**/
function append(_s:Value, _x:haxe.Rest<Value>):Value
	throw "reflect.append is not yet implemented";

/**
	// AppendSlice appends a slice t to a slice s and returns the resulting slice.
	// The slices s and t must have the same element type.
**/
function appendSlice(_s:Value, _t:Value):Value
	throw "reflect.appendSlice is not yet implemented";

/**
	// Copy copies the contents of src into dst until either
	// dst has been filled or src has been exhausted.
	// It returns the number of elements copied.
	// Dst and src each must have kind Slice or Array, and
	// dst and src must have the same element type.
	//
	// As a special case, src can have kind String if the element type of dst is kind Uint8.
**/
function copy(_dst:Value, _src:Value):GoInt
	throw "reflect.copy is not yet implemented";

/**
	// Select executes a select operation described by the list of cases.
	// Like the Go select statement, it blocks until at least one of the cases
	// can proceed, makes a uniform pseudo-random choice,
	// and then executes that case. It returns the index of the chosen case
	// and, if that case was a receive operation, the value received and a
	// boolean indicating whether the value corresponds to a send on the channel
	// (as opposed to a zero value received because the channel is closed).
	// Select supports a maximum of 65536 cases.
**/
function select(_cases:Slice<SelectCase>):{var _0:GoInt; var _1:Value; var _2:Bool;}
	throw "reflect.select is not yet implemented";

/**
	// MakeSlice creates a new zero-initialized slice value
	// for the specified slice type, length, and capacity.
**/
function makeSlice(_typ:Type, _len:GoInt, _cap:GoInt):Value
	throw "reflect.makeSlice is not yet implemented";

/**
	// MakeChan creates a new channel with the specified type and buffer size.
**/
function makeChan(_typ:Type, _buffer:GoInt):Value
	throw "reflect.makeChan is not yet implemented";

/**
	// MakeMap creates a new map with the specified type.
**/
function makeMap(_typ:Type):Value
	throw "reflect.makeMap is not yet implemented";

/**
	// MakeMapWithSize creates a new map with the specified type
	// and initial space for approximately n elements.
**/
function makeMapWithSize(_typ:Type, _n:GoInt):Value
	throw "reflect.makeMapWithSize is not yet implemented";

/**
	// Indirect returns the value that v points to.
	// If v is a nil pointer, Indirect returns a zero Value.
	// If v is not a pointer, Indirect returns v.
**/
function indirect(_v:Value):Value
	throw "reflect.indirect is not yet implemented";

/**
	// ValueOf returns a new Value initialized to the concrete value
	// stored in the interface i. ValueOf(nil) returns the zero Value.
**/
function valueOf(_i:AnyInterface):Value
	throw "reflect.valueOf is not yet implemented";

/**
	// Zero returns a Value representing the zero value for the specified type.
	// The result is different from the zero value of the Value struct,
	// which represents no value at all.
	// For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
	// The returned value is neither addressable nor settable.
**/
function zero(_typ:Type):Value
	throw "reflect.zero is not yet implemented";

/**
	// New returns a Value representing a pointer to a new zero value
	// for the specified type. That is, the returned Value's Type is PointerTo(typ).
**/
function new_(_typ:Type):Value
	throw "reflect.new_ is not yet implemented";

/**
	// NewAt returns a Value representing a pointer to a value of the
	// specified type, using p as that pointer.
**/
function newAt(_typ:Type, _p:stdgo.unsafe.Unsafe.UnsafePointer):Value
	throw "reflect.newAt is not yet implemented";

/**
	// VisibleFields returns all the visible fields in t, which must be a
	// struct type. A field is defined as visible if it's accessible
	// directly with a FieldByName call. The returned fields include fields
	// inside anonymous struct members and unexported fields. They follow
	// the same order found in the struct, with anonymous fields followed
	// immediately by their promoted fields.
	//
	// For each element e of the returned slice, the corresponding field
	// can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
**/
function visibleFields(_t:Type):Slice<StructField>
	throw "reflect.visibleFields is not yet implemented";

class Method_asInterface {
	/**
		// IsExported reports whether the method is exported.
	**/
	@:keep
	public function isExported():Bool
		return __self__.value.isExported();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Method>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.Method_asInterface) class Method_static_extension {
	/**
		// IsExported reports whether the method is exported.
	**/
	@:keep
	static public function isExported(_m:Method):Bool
		throw "reflect.isExported is not yet implemented";
}

class StructField_asInterface {
	/**
		// IsExported reports whether the field is exported.
	**/
	@:keep
	public function isExported():Bool
		return __self__.value.isExported();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<StructField>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.StructField_asInterface) class StructField_static_extension {
	/**
		// IsExported reports whether the field is exported.
	**/
	@:keep
	static public function isExported(_f:StructField):Bool
		throw "reflect.isExported is not yet implemented";
}

class Value_asInterface {
	/**
		// CanConvert reports whether the value v can be converted to type t.
		// If v.CanConvert(t) returns true then v.Convert(t) will not panic.
	**/
	@:keep
	public function canConvert(_t:Type):Bool
		return __self__.value.canConvert(_t);

	/**
		// Convert returns the value v converted to type t.
		// If the usual Go conversion rules do not allow conversion
		// of the value v to type t, or if converting v to type t panics, Convert panics.
	**/
	@:keep
	public function convert(_t:Type):Value
		return __self__.value.convert(_t);

	/**
		// UnsafePointer returns v's value as a unsafe.Pointer.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is nil.  If the slice is empty but non-nil the return value is non-nil.
	**/
	@:keep
	public function unsafePointer():stdgo.unsafe.Unsafe.UnsafePointer
		return __self__.value.unsafePointer();

	/**
		// UnsafeAddr returns a pointer to v's data, as a uintptr.
		// It is for advanced clients that also import the "unsafe" package.
		// It panics if v is not addressable.
		//
		// It's preferred to use uintptr(Value.Addr().UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	public function unsafeAddr():GoUIntptr
		return __self__.value.unsafeAddr();

	/**
		// Uint returns v's underlying value, as a uint64.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	public function uint():GoUInt64
		return __self__.value.uint();

	/**
		// CanUint reports whether Uint can be used without panicking.
	**/
	@:keep
	public function canUint():Bool
		return __self__.value.canUint();

	/**
		// Type returns v's type.
	**/
	@:keep
	public function type():Type
		return __self__.value.type();

	/**
		// TrySend attempts to send x on the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// It reports whether the value was sent.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	public function trySend(_x:Value):Bool
		return __self__.value.trySend(_x);

	/**
		// TryRecv attempts to receive a value from the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// If the receive delivers a value, x is the transferred value and ok is true.
		// If the receive cannot finish without blocking, x is the zero Value and ok is false.
		// If the channel is closed, x is the zero value for the channel's element type and ok is false.
	**/
	@:keep
	public function tryRecv():{var _0:Value; var _1:Bool;}
		return __self__.value.tryRecv();

	/**
		// String returns the string v's underlying value, as a string.
		// String is a special case because of Go's String method convention.
		// Unlike the other getters, it does not panic if v's Kind is not String.
		// Instead, it returns a string of the form "<T value>" where T is v's type.
		// The fmt package treats Values specially. It does not call their String
		// method implicitly but instead prints the concrete values they hold.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// Slice3 is the 3-index form of the slice operation: it returns v[i:j:k].
		// It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	public function slice3(_i:GoInt, _j:GoInt, _k:GoInt):Value
		return __self__.value.slice3(_i, _j, _k);

	/**
		// Slice returns v[i:j].
		// It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	public function slice(_i:GoInt, _j:GoInt):Value
		return __self__.value.slice(_i, _j);

	/**
		// SetString sets v's underlying value to x.
		// It panics if v's Kind is not String or if CanSet() is false.
	**/
	@:keep
	public function setString(_x:GoString):Void
		__self__.value.setString(_x);

	/**
		// SetPointer sets the unsafe.Pointer value v to x.
		// It panics if v's Kind is not UnsafePointer.
	**/
	@:keep
	public function setPointer(_x:stdgo.unsafe.Unsafe.UnsafePointer):Void
		__self__.value.setPointer(_x);

	/**
		// SetUint sets v's underlying value to x.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet() is false.
	**/
	@:keep
	public function setUint(_x:GoUInt64):Void
		__self__.value.setUint(_x);

	/**
		// SetMapIndex sets the element associated with key in the map v to elem.
		// It panics if v's Kind is not Map.
		// If elem is the zero Value, SetMapIndex deletes the key from the map.
		// Otherwise if v holds a nil map, SetMapIndex will panic.
		// As in Go, key's elem must be assignable to the map's key type,
		// and elem's value must be assignable to the map's elem type.
	**/
	@:keep
	public function setMapIndex(_key:Value, _elem:Value):Void
		__self__.value.setMapIndex(_key, _elem);

	/**
		// SetCap sets v's capacity to n.
		// It panics if v's Kind is not Slice or if n is smaller than the length or
		// greater than the capacity of the slice.
	**/
	@:keep
	public function setCap(_n:GoInt):Void
		__self__.value.setCap(_n);

	/**
		// SetLen sets v's length to n.
		// It panics if v's Kind is not Slice or if n is negative or
		// greater than the capacity of the slice.
	**/
	@:keep
	public function setLen(_n:GoInt):Void
		__self__.value.setLen(_n);

	/**
		// SetInt sets v's underlying value to x.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet() is false.
	**/
	@:keep
	public function setInt(_x:GoInt64):Void
		__self__.value.setInt(_x);

	/**
		// SetFloat sets v's underlying value to x.
		// It panics if v's Kind is not Float32 or Float64, or if CanSet() is false.
	**/
	@:keep
	public function setFloat(_x:GoFloat64):Void
		__self__.value.setFloat(_x);

	/**
		// SetComplex sets v's underlying value to x.
		// It panics if v's Kind is not Complex64 or Complex128, or if CanSet() is false.
	**/
	@:keep
	public function setComplex(_x:GoComplex128):Void
		__self__.value.setComplex(_x);

	/**
		// SetBytes sets v's underlying value.
		// It panics if v's underlying value is not a slice of bytes.
	**/
	@:keep
	public function setBytes(_x:Slice<GoByte>):Void
		__self__.value.setBytes(_x);

	/**
		// SetBool sets v's underlying value.
		// It panics if v's Kind is not Bool or if CanSet() is false.
	**/
	@:keep
	public function setBool(_x:Bool):Void
		__self__.value.setBool(_x);

	/**
		// Set assigns x to the value v.
		// It panics if CanSet returns false.
		// As in Go, x's value must be assignable to v's type.
	**/
	@:keep
	public function set(_x:Value):Void
		__self__.value.set(_x);

	/**
		// Send sends x on the channel v.
		// It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	public function send(_x:Value):Void
		__self__.value.send(_x);

	/**
		// Recv receives and returns a value from the channel v.
		// It panics if v's Kind is not Chan.
		// The receive blocks until a value is ready.
		// The boolean value ok is true if the value x corresponds to a send
		// on the channel, false if it is a zero value received because the channel is closed.
	**/
	@:keep
	public function recv():{var _0:Value; var _1:Bool;}
		return __self__.value.recv();

	/**
		// Pointer returns v's value as a uintptr.
		// It returns uintptr instead of unsafe.Pointer so that
		// code using reflect cannot obtain unsafe.Pointers
		// without importing the unsafe package explicitly.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is 0.  If the slice is empty but non-nil the return value is non-zero.
		//
		// It's preferred to use uintptr(Value.UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	public function pointer():GoUIntptr
		return __self__.value.pointer();

	/**
		// OverflowUint reports whether the uint64 x cannot be represented by v's type.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	public function overflowUint(_x:GoUInt64):Bool
		return __self__.value.overflowUint(_x);

	/**
		// OverflowInt reports whether the int64 x cannot be represented by v's type.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	public function overflowInt(_x:GoInt64):Bool
		return __self__.value.overflowInt(_x);

	/**
		// OverflowFloat reports whether the float64 x cannot be represented by v's type.
		// It panics if v's Kind is not Float32 or Float64.
	**/
	@:keep
	public function overflowFloat(_x:GoFloat64):Bool
		return __self__.value.overflowFloat(_x);

	/**
		// OverflowComplex reports whether the complex128 x cannot be represented by v's type.
		// It panics if v's Kind is not Complex64 or Complex128.
	**/
	@:keep
	public function overflowComplex(_x:GoComplex128):Bool
		return __self__.value.overflowComplex(_x);

	/**
		// NumField returns the number of fields in the struct v.
		// It panics if v's Kind is not Struct.
	**/
	@:keep
	public function numField():GoInt
		return __self__.value.numField();

	/**
		// MethodByName returns a function value corresponding to the method
		// of v with the given name.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// It returns the zero Value if no method was found.
	**/
	@:keep
	public function methodByName(_name:GoString):Value
		return __self__.value.methodByName(_name);

	/**
		// NumMethod returns the number of methods in the value's method set.
		//
		// For a non-interface type, it returns the number of exported methods.
		//
		// For an interface type, it returns the number of exported and unexported methods.
	**/
	@:keep
	public function numMethod():GoInt
		return __self__.value.numMethod();

	/**
		// Method returns a function value corresponding to v's i'th method.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// Method panics if i is out of range or if v is a nil interface value.
	**/
	@:keep
	public function method(_i:GoInt):Value
		return __self__.value.method(_i);

	/**
		// MapRange returns a range iterator for a map.
		// It panics if v's Kind is not Map.
		//
		// Call Next to advance the iterator, and Key/Value to access each entry.
		// Next returns false when the iterator is exhausted.
		// MapRange follows the same iteration semantics as a range statement.
		//
		// Example:
		//
		//	iter := reflect.ValueOf(m).MapRange()
		//	for iter.Next() {
		//		k := iter.Key()
		//		v := iter.Value()
		//		...
		//	}
	**/
	@:keep
	public function mapRange():Ref<MapIter>
		return __self__.value.mapRange();

	/**
		// SetIterValue assigns to v the value of iter's current map entry.
		// It is equivalent to v.Set(iter.Value()), but it avoids allocating a new Value.
		// As in Go, the value must be assignable to v's type.
	**/
	@:keep
	public function setIterValue(_iter:Ref<MapIter>):Void
		__self__.value.setIterValue(_iter);

	/**
		// SetIterKey assigns to v the key of iter's current map entry.
		// It is equivalent to v.Set(iter.Key()), but it avoids allocating a new Value.
		// As in Go, the key must be assignable to v's type.
	**/
	@:keep
	public function setIterKey(_iter:Ref<MapIter>):Void
		__self__.value.setIterKey(_iter);

	/**
		// MapKeys returns a slice containing all the keys present in the map,
		// in unspecified order.
		// It panics if v's Kind is not Map.
		// It returns an empty slice if v represents a nil map.
	**/
	@:keep
	public function mapKeys():Slice<Value>
		return __self__.value.mapKeys();

	/**
		// MapIndex returns the value associated with key in the map v.
		// It panics if v's Kind is not Map.
		// It returns the zero Value if key is not found in the map or if v represents a nil map.
		// As in Go, the key's value must be assignable to the map's key type.
	**/
	@:keep
	public function mapIndex(_key:Value):Value
		return __self__.value.mapIndex(_key);

	/**
		// Len returns v's length.
		// It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	/**
		// Kind returns v's Kind.
		// If v is the zero Value (IsValid returns false), Kind returns Invalid.
	**/
	@:keep
	public function kind():Kind
		return __self__.value.kind();

	/**
		// IsZero reports whether v is the zero value for its type.
		// It panics if the argument is invalid.
	**/
	@:keep
	public function isZero():Bool
		return __self__.value.isZero();

	/**
		// IsValid reports whether v represents a value.
		// It returns false if v is the zero Value.
		// If IsValid returns false, all other methods except String panic.
		// Most functions and methods never return an invalid Value.
		// If one does, its documentation states the conditions explicitly.
	**/
	@:keep
	public function isValid():Bool
		return __self__.value.isValid();

	/**
		// IsNil reports whether its argument v is nil. The argument must be
		// a chan, func, interface, map, pointer, or slice value; if it is
		// not, IsNil panics. Note that IsNil is not always equivalent to a
		// regular comparison with nil in Go. For example, if v was created
		// by calling ValueOf with an uninitialized interface variable i,
		// i==nil will be true but v.IsNil will panic as v will be the zero
		// Value.
	**/
	@:keep
	public function isNil():Bool
		return __self__.value.isNil();

	/**
		// InterfaceData returns a pair of unspecified uintptr values.
		// It panics if v's Kind is not Interface.
		//
		// In earlier versions of Go, this function returned the interface's
		// value as a uintptr pair. As of Go 1.4, the implementation of
		// interface values precludes any defined use of InterfaceData.
		//
		// Deprecated: The memory representation of interface values is not
		// compatible with InterfaceData.
	**/
	@:keep
	public function interfaceData():GoArray<GoUIntptr>
		return __self__.value.interfaceData();

	/**
		// Interface returns v's current value as an interface{}.
		// It is equivalent to:
		//
		//	var i interface{} = (v's underlying value)
		//
		// It panics if the Value was obtained by accessing
		// unexported struct fields.
	**/
	@:keep
	public function interface_():AnyInterface
		return __self__.value.interface_();

	/**
		// CanInterface reports whether Interface can be used without panicking.
	**/
	@:keep
	public function canInterface():Bool
		return __self__.value.canInterface();

	/**
		// Int returns v's underlying value, as an int64.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	public function int_():GoInt64
		return __self__.value.int_();

	/**
		// CanInt reports whether Int can be used without panicking.
	**/
	@:keep
	public function canInt():Bool
		return __self__.value.canInt();

	/**
		// Index returns v's i'th element.
		// It panics if v's Kind is not Array, Slice, or String or i is out of range.
	**/
	@:keep
	public function index(_i:GoInt):Value
		return __self__.value.index(_i);

	/**
		// Float returns v's underlying value, as a float64.
		// It panics if v's Kind is not Float32 or Float64
	**/
	@:keep
	public function float_():GoFloat64
		return __self__.value.float_();

	/**
		// CanFloat reports whether Float can be used without panicking.
	**/
	@:keep
	public function canFloat():Bool
		return __self__.value.canFloat();

	/**
		// FieldByNameFunc returns the struct field with a name
		// that satisfies the match function.
		// It panics if v's Kind is not struct.
		// It returns the zero Value if no field was found.
	**/
	@:keep
	public function fieldByNameFunc(_match:GoString->Bool):Value
		return __self__.value.fieldByNameFunc(_match);

	/**
		// FieldByName returns the struct field with the given name.
		// It returns the zero Value if no field was found.
		// It panics if v's Kind is not struct.
	**/
	@:keep
	public function fieldByName(_name:GoString):Value
		return __self__.value.fieldByName(_name);

	/**
		// FieldByIndexErr returns the nested field corresponding to index.
		// It returns an error if evaluation requires stepping through a nil
		// pointer, but panics if it must step through a field that
		// is not a struct.
	**/
	@:keep
	public function fieldByIndexErr(_index:Slice<GoInt>):{var _0:Value; var _1:Error;}
		return __self__.value.fieldByIndexErr(_index);

	/**
		// FieldByIndex returns the nested field corresponding to index.
		// It panics if evaluation requires stepping through a nil
		// pointer or a field that is not a struct.
	**/
	@:keep
	public function fieldByIndex(_index:Slice<GoInt>):Value
		return __self__.value.fieldByIndex(_index);

	/**
		// Field returns the i'th field of the struct v.
		// It panics if v's Kind is not Struct or i is out of range.
	**/
	@:keep
	public function field(_i:GoInt):Value
		return __self__.value.field(_i);

	/**
		// Elem returns the value that the interface v contains
		// or that the pointer v points to.
		// It panics if v's Kind is not Interface or Pointer.
		// It returns the zero Value if v is nil.
	**/
	@:keep
	public function elem():Value
		return __self__.value.elem();

	/**
		// Complex returns v's underlying value, as a complex128.
		// It panics if v's Kind is not Complex64 or Complex128
	**/
	@:keep
	public function complex():GoComplex128
		return __self__.value.complex();

	/**
		// CanComplex reports whether Complex can be used without panicking.
	**/
	@:keep
	public function canComplex():Bool
		return __self__.value.canComplex();

	/**
		// Close closes the channel v.
		// It panics if v's Kind is not Chan.
	**/
	@:keep
	public function close():Void
		__self__.value.close();

	/**
		// Cap returns v's capacity.
		// It panics if v's Kind is not Array, Chan, Slice or pointer to Array.
	**/
	@:keep
	public function cap():GoInt
		return __self__.value.cap();

	/**
		// CallSlice calls the variadic function v with the input arguments in,
		// assigning the slice in[len(in)-1] to v's final variadic argument.
		// For example, if len(in) == 3, v.CallSlice(in) represents the Go call v(in[0], in[1], in[2]...).
		// CallSlice panics if v's Kind is not Func or if v is not variadic.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
	**/
	@:keep
	public function callSlice(_in:Slice<Value>):Slice<Value>
		return __self__.value.callSlice(_in);

	/**
		// Call calls the function v with the input arguments in.
		// For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
		// Call panics if v's Kind is not Func.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
		// If v is a variadic function, Call creates the variadic slice parameter
		// itself, copying in the corresponding values.
	**/
	@:keep
	public function call(_in:Slice<Value>):Slice<Value>
		return __self__.value.call(_in);

	/**
		// CanSet reports whether the value of v can be changed.
		// A Value can be changed only if it is addressable and was not
		// obtained by the use of unexported struct fields.
		// If CanSet returns false, calling Set or any type-specific
		// setter (e.g., SetBool, SetInt) will panic.
	**/
	@:keep
	public function canSet():Bool
		return __self__.value.canSet();

	/**
		// CanAddr reports whether the value's address can be obtained with Addr.
		// Such values are called addressable. A value is addressable if it is
		// an element of a slice, an element of an addressable array,
		// a field of an addressable struct, or the result of dereferencing a pointer.
		// If CanAddr returns false, calling Addr will panic.
	**/
	@:keep
	public function canAddr():Bool
		return __self__.value.canAddr();

	/**
		// Bytes returns v's underlying value.
		// It panics if v's underlying value is not a slice of bytes or
		// an addressable array of bytes.
	**/
	@:keep
	public function bytes():Slice<GoByte>
		return __self__.value.bytes();

	/**
		// Bool returns v's underlying value.
		// It panics if v's kind is not Bool.
	**/
	@:keep
	public function bool_():Bool
		return __self__.value.bool_();

	/**
		// Addr returns a pointer value representing the address of v.
		// It panics if CanAddr() returns false.
		// Addr is typically used to obtain a pointer to a struct field
		// or slice element in order to call a method that requires a
		// pointer receiver.
	**/
	@:keep
	public function addr():Value
		return __self__.value.addr();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Value>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.Value_asInterface) class Value_static_extension {
	/**
		// CanConvert reports whether the value v can be converted to type t.
		// If v.CanConvert(t) returns true then v.Convert(t) will not panic.
	**/
	@:keep
	static public function canConvert(_v:Value, _t:Type):Bool
		throw "reflect.canConvert is not yet implemented";

	/**
		// Convert returns the value v converted to type t.
		// If the usual Go conversion rules do not allow conversion
		// of the value v to type t, or if converting v to type t panics, Convert panics.
	**/
	@:keep
	static public function convert(_v:Value, _t:Type):Value
		throw "reflect.convert is not yet implemented";

	/**
		// UnsafePointer returns v's value as a unsafe.Pointer.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is nil.  If the slice is empty but non-nil the return value is non-nil.
	**/
	@:keep
	static public function unsafePointer(_v:Value):stdgo.unsafe.Unsafe.UnsafePointer
		throw "reflect.unsafePointer is not yet implemented";

	/**
		// UnsafeAddr returns a pointer to v's data, as a uintptr.
		// It is for advanced clients that also import the "unsafe" package.
		// It panics if v is not addressable.
		//
		// It's preferred to use uintptr(Value.Addr().UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	static public function unsafeAddr(_v:Value):GoUIntptr
		throw "reflect.unsafeAddr is not yet implemented";

	/**
		// Uint returns v's underlying value, as a uint64.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	static public function uint(_v:Value):GoUInt64
		throw "reflect.uint is not yet implemented";

	/**
		// CanUint reports whether Uint can be used without panicking.
	**/
	@:keep
	static public function canUint(_v:Value):Bool
		throw "reflect.canUint is not yet implemented";

	/**
		// Type returns v's type.
	**/
	@:keep
	static public function type(_v:Value):Type
		throw "reflect.type is not yet implemented";

	/**
		// TrySend attempts to send x on the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// It reports whether the value was sent.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	static public function trySend(_v:Value, _x:Value):Bool
		throw "reflect.trySend is not yet implemented";

	/**
		// TryRecv attempts to receive a value from the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// If the receive delivers a value, x is the transferred value and ok is true.
		// If the receive cannot finish without blocking, x is the zero Value and ok is false.
		// If the channel is closed, x is the zero value for the channel's element type and ok is false.
	**/
	@:keep
	static public function tryRecv(_v:Value):{var _0:Value; var _1:Bool;}
		throw "reflect.tryRecv is not yet implemented";

	/**
		// String returns the string v's underlying value, as a string.
		// String is a special case because of Go's String method convention.
		// Unlike the other getters, it does not panic if v's Kind is not String.
		// Instead, it returns a string of the form "<T value>" where T is v's type.
		// The fmt package treats Values specially. It does not call their String
		// method implicitly but instead prints the concrete values they hold.
	**/
	@:keep
	static public function string(_v:Value):GoString
		throw "reflect.string is not yet implemented";

	/**
		// Slice3 is the 3-index form of the slice operation: it returns v[i:j:k].
		// It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	static public function slice3(_v:Value, _i:GoInt, _j:GoInt, _k:GoInt):Value
		throw "reflect.slice3 is not yet implemented";

	/**
		// Slice returns v[i:j].
		// It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	static public function slice(_v:Value, _i:GoInt, _j:GoInt):Value
		throw "reflect.slice is not yet implemented";

	/**
		// SetString sets v's underlying value to x.
		// It panics if v's Kind is not String or if CanSet() is false.
	**/
	@:keep
	static public function setString(_v:Value, _x:GoString):Void
		throw "reflect.setString is not yet implemented";

	/**
		// SetPointer sets the unsafe.Pointer value v to x.
		// It panics if v's Kind is not UnsafePointer.
	**/
	@:keep
	static public function setPointer(_v:Value, _x:stdgo.unsafe.Unsafe.UnsafePointer):Void
		throw "reflect.setPointer is not yet implemented";

	/**
		// SetUint sets v's underlying value to x.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet() is false.
	**/
	@:keep
	static public function setUint(_v:Value, _x:GoUInt64):Void
		throw "reflect.setUint is not yet implemented";

	/**
		// SetMapIndex sets the element associated with key in the map v to elem.
		// It panics if v's Kind is not Map.
		// If elem is the zero Value, SetMapIndex deletes the key from the map.
		// Otherwise if v holds a nil map, SetMapIndex will panic.
		// As in Go, key's elem must be assignable to the map's key type,
		// and elem's value must be assignable to the map's elem type.
	**/
	@:keep
	static public function setMapIndex(_v:Value, _key:Value, _elem:Value):Void
		throw "reflect.setMapIndex is not yet implemented";

	/**
		// SetCap sets v's capacity to n.
		// It panics if v's Kind is not Slice or if n is smaller than the length or
		// greater than the capacity of the slice.
	**/
	@:keep
	static public function setCap(_v:Value, _n:GoInt):Void
		throw "reflect.setCap is not yet implemented";

	/**
		// SetLen sets v's length to n.
		// It panics if v's Kind is not Slice or if n is negative or
		// greater than the capacity of the slice.
	**/
	@:keep
	static public function setLen(_v:Value, _n:GoInt):Void
		throw "reflect.setLen is not yet implemented";

	/**
		// SetInt sets v's underlying value to x.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet() is false.
	**/
	@:keep
	static public function setInt(_v:Value, _x:GoInt64):Void
		throw "reflect.setInt is not yet implemented";

	/**
		// SetFloat sets v's underlying value to x.
		// It panics if v's Kind is not Float32 or Float64, or if CanSet() is false.
	**/
	@:keep
	static public function setFloat(_v:Value, _x:GoFloat64):Void
		throw "reflect.setFloat is not yet implemented";

	/**
		// SetComplex sets v's underlying value to x.
		// It panics if v's Kind is not Complex64 or Complex128, or if CanSet() is false.
	**/
	@:keep
	static public function setComplex(_v:Value, _x:GoComplex128):Void
		throw "reflect.setComplex is not yet implemented";

	/**
		// SetBytes sets v's underlying value.
		// It panics if v's underlying value is not a slice of bytes.
	**/
	@:keep
	static public function setBytes(_v:Value, _x:Slice<GoByte>):Void
		throw "reflect.setBytes is not yet implemented";

	/**
		// SetBool sets v's underlying value.
		// It panics if v's Kind is not Bool or if CanSet() is false.
	**/
	@:keep
	static public function setBool(_v:Value, _x:Bool):Void
		throw "reflect.setBool is not yet implemented";

	/**
		// Set assigns x to the value v.
		// It panics if CanSet returns false.
		// As in Go, x's value must be assignable to v's type.
	**/
	@:keep
	static public function set(_v:Value, _x:Value):Void
		throw "reflect.set is not yet implemented";

	/**
		// Send sends x on the channel v.
		// It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	static public function send(_v:Value, _x:Value):Void
		throw "reflect.send is not yet implemented";

	/**
		// Recv receives and returns a value from the channel v.
		// It panics if v's Kind is not Chan.
		// The receive blocks until a value is ready.
		// The boolean value ok is true if the value x corresponds to a send
		// on the channel, false if it is a zero value received because the channel is closed.
	**/
	@:keep
	static public function recv(_v:Value):{var _0:Value; var _1:Bool;}
		throw "reflect.recv is not yet implemented";

	/**
		// Pointer returns v's value as a uintptr.
		// It returns uintptr instead of unsafe.Pointer so that
		// code using reflect cannot obtain unsafe.Pointers
		// without importing the unsafe package explicitly.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is 0.  If the slice is empty but non-nil the return value is non-zero.
		//
		// It's preferred to use uintptr(Value.UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	static public function pointer(_v:Value):GoUIntptr
		throw "reflect.pointer is not yet implemented";

	/**
		// OverflowUint reports whether the uint64 x cannot be represented by v's type.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	static public function overflowUint(_v:Value, _x:GoUInt64):Bool
		throw "reflect.overflowUint is not yet implemented";

	/**
		// OverflowInt reports whether the int64 x cannot be represented by v's type.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	static public function overflowInt(_v:Value, _x:GoInt64):Bool
		throw "reflect.overflowInt is not yet implemented";

	/**
		// OverflowFloat reports whether the float64 x cannot be represented by v's type.
		// It panics if v's Kind is not Float32 or Float64.
	**/
	@:keep
	static public function overflowFloat(_v:Value, _x:GoFloat64):Bool
		throw "reflect.overflowFloat is not yet implemented";

	/**
		// OverflowComplex reports whether the complex128 x cannot be represented by v's type.
		// It panics if v's Kind is not Complex64 or Complex128.
	**/
	@:keep
	static public function overflowComplex(_v:Value, _x:GoComplex128):Bool
		throw "reflect.overflowComplex is not yet implemented";

	/**
		// NumField returns the number of fields in the struct v.
		// It panics if v's Kind is not Struct.
	**/
	@:keep
	static public function numField(_v:Value):GoInt
		throw "reflect.numField is not yet implemented";

	/**
		// MethodByName returns a function value corresponding to the method
		// of v with the given name.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// It returns the zero Value if no method was found.
	**/
	@:keep
	static public function methodByName(_v:Value, _name:GoString):Value
		throw "reflect.methodByName is not yet implemented";

	/**
		// NumMethod returns the number of methods in the value's method set.
		//
		// For a non-interface type, it returns the number of exported methods.
		//
		// For an interface type, it returns the number of exported and unexported methods.
	**/
	@:keep
	static public function numMethod(_v:Value):GoInt
		throw "reflect.numMethod is not yet implemented";

	/**
		// Method returns a function value corresponding to v's i'th method.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// Method panics if i is out of range or if v is a nil interface value.
	**/
	@:keep
	static public function method(_v:Value, _i:GoInt):Value
		throw "reflect.method is not yet implemented";

	/**
		// MapRange returns a range iterator for a map.
		// It panics if v's Kind is not Map.
		//
		// Call Next to advance the iterator, and Key/Value to access each entry.
		// Next returns false when the iterator is exhausted.
		// MapRange follows the same iteration semantics as a range statement.
		//
		// Example:
		//
		//	iter := reflect.ValueOf(m).MapRange()
		//	for iter.Next() {
		//		k := iter.Key()
		//		v := iter.Value()
		//		...
		//	}
	**/
	@:keep
	static public function mapRange(_v:Value):Ref<MapIter>
		throw "reflect.mapRange is not yet implemented";

	/**
		// SetIterValue assigns to v the value of iter's current map entry.
		// It is equivalent to v.Set(iter.Value()), but it avoids allocating a new Value.
		// As in Go, the value must be assignable to v's type.
	**/
	@:keep
	static public function setIterValue(_v:Value, _iter:Ref<MapIter>):Void
		throw "reflect.setIterValue is not yet implemented";

	/**
		// SetIterKey assigns to v the key of iter's current map entry.
		// It is equivalent to v.Set(iter.Key()), but it avoids allocating a new Value.
		// As in Go, the key must be assignable to v's type.
	**/
	@:keep
	static public function setIterKey(_v:Value, _iter:Ref<MapIter>):Void
		throw "reflect.setIterKey is not yet implemented";

	/**
		// MapKeys returns a slice containing all the keys present in the map,
		// in unspecified order.
		// It panics if v's Kind is not Map.
		// It returns an empty slice if v represents a nil map.
	**/
	@:keep
	static public function mapKeys(_v:Value):Slice<Value>
		throw "reflect.mapKeys is not yet implemented";

	/**
		// MapIndex returns the value associated with key in the map v.
		// It panics if v's Kind is not Map.
		// It returns the zero Value if key is not found in the map or if v represents a nil map.
		// As in Go, the key's value must be assignable to the map's key type.
	**/
	@:keep
	static public function mapIndex(_v:Value, _key:Value):Value
		throw "reflect.mapIndex is not yet implemented";

	/**
		// Len returns v's length.
		// It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
	**/
	@:keep
	static public function len(_v:Value):GoInt
		throw "reflect.len is not yet implemented";

	/**
		// Kind returns v's Kind.
		// If v is the zero Value (IsValid returns false), Kind returns Invalid.
	**/
	@:keep
	static public function kind(_v:Value):Kind
		throw "reflect.kind is not yet implemented";

	/**
		// IsZero reports whether v is the zero value for its type.
		// It panics if the argument is invalid.
	**/
	@:keep
	static public function isZero(_v:Value):Bool
		throw "reflect.isZero is not yet implemented";

	/**
		// IsValid reports whether v represents a value.
		// It returns false if v is the zero Value.
		// If IsValid returns false, all other methods except String panic.
		// Most functions and methods never return an invalid Value.
		// If one does, its documentation states the conditions explicitly.
	**/
	@:keep
	static public function isValid(_v:Value):Bool
		throw "reflect.isValid is not yet implemented";

	/**
		// IsNil reports whether its argument v is nil. The argument must be
		// a chan, func, interface, map, pointer, or slice value; if it is
		// not, IsNil panics. Note that IsNil is not always equivalent to a
		// regular comparison with nil in Go. For example, if v was created
		// by calling ValueOf with an uninitialized interface variable i,
		// i==nil will be true but v.IsNil will panic as v will be the zero
		// Value.
	**/
	@:keep
	static public function isNil(_v:Value):Bool
		throw "reflect.isNil is not yet implemented";

	/**
		// InterfaceData returns a pair of unspecified uintptr values.
		// It panics if v's Kind is not Interface.
		//
		// In earlier versions of Go, this function returned the interface's
		// value as a uintptr pair. As of Go 1.4, the implementation of
		// interface values precludes any defined use of InterfaceData.
		//
		// Deprecated: The memory representation of interface values is not
		// compatible with InterfaceData.
	**/
	@:keep
	static public function interfaceData(_v:Value):GoArray<GoUIntptr>
		throw "reflect.interfaceData is not yet implemented";

	/**
		// Interface returns v's current value as an interface{}.
		// It is equivalent to:
		//
		//	var i interface{} = (v's underlying value)
		//
		// It panics if the Value was obtained by accessing
		// unexported struct fields.
	**/
	@:keep
	static public function interface_(_v:Value):AnyInterface
		throw "reflect.interface_ is not yet implemented";

	/**
		// CanInterface reports whether Interface can be used without panicking.
	**/
	@:keep
	static public function canInterface(_v:Value):Bool
		throw "reflect.canInterface is not yet implemented";

	/**
		// Int returns v's underlying value, as an int64.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	static public function int_(_v:Value):GoInt64
		throw "reflect.int_ is not yet implemented";

	/**
		// CanInt reports whether Int can be used without panicking.
	**/
	@:keep
	static public function canInt(_v:Value):Bool
		throw "reflect.canInt is not yet implemented";

	/**
		// Index returns v's i'th element.
		// It panics if v's Kind is not Array, Slice, or String or i is out of range.
	**/
	@:keep
	static public function index(_v:Value, _i:GoInt):Value
		throw "reflect.index is not yet implemented";

	/**
		// Float returns v's underlying value, as a float64.
		// It panics if v's Kind is not Float32 or Float64
	**/
	@:keep
	static public function float_(_v:Value):GoFloat64
		throw "reflect.float_ is not yet implemented";

	/**
		// CanFloat reports whether Float can be used without panicking.
	**/
	@:keep
	static public function canFloat(_v:Value):Bool
		throw "reflect.canFloat is not yet implemented";

	/**
		// FieldByNameFunc returns the struct field with a name
		// that satisfies the match function.
		// It panics if v's Kind is not struct.
		// It returns the zero Value if no field was found.
	**/
	@:keep
	static public function fieldByNameFunc(_v:Value, _match:GoString->Bool):Value
		throw "reflect.fieldByNameFunc is not yet implemented";

	/**
		// FieldByName returns the struct field with the given name.
		// It returns the zero Value if no field was found.
		// It panics if v's Kind is not struct.
	**/
	@:keep
	static public function fieldByName(_v:Value, _name:GoString):Value
		throw "reflect.fieldByName is not yet implemented";

	/**
		// FieldByIndexErr returns the nested field corresponding to index.
		// It returns an error if evaluation requires stepping through a nil
		// pointer, but panics if it must step through a field that
		// is not a struct.
	**/
	@:keep
	static public function fieldByIndexErr(_v:Value, _index:Slice<GoInt>):{var _0:Value; var _1:Error;}
		throw "reflect.fieldByIndexErr is not yet implemented";

	/**
		// FieldByIndex returns the nested field corresponding to index.
		// It panics if evaluation requires stepping through a nil
		// pointer or a field that is not a struct.
	**/
	@:keep
	static public function fieldByIndex(_v:Value, _index:Slice<GoInt>):Value
		throw "reflect.fieldByIndex is not yet implemented";

	/**
		// Field returns the i'th field of the struct v.
		// It panics if v's Kind is not Struct or i is out of range.
	**/
	@:keep
	static public function field(_v:Value, _i:GoInt):Value
		throw "reflect.field is not yet implemented";

	/**
		// Elem returns the value that the interface v contains
		// or that the pointer v points to.
		// It panics if v's Kind is not Interface or Pointer.
		// It returns the zero Value if v is nil.
	**/
	@:keep
	static public function elem(_v:Value):Value
		throw "reflect.elem is not yet implemented";

	/**
		// Complex returns v's underlying value, as a complex128.
		// It panics if v's Kind is not Complex64 or Complex128
	**/
	@:keep
	static public function complex(_v:Value):GoComplex128
		throw "reflect.complex is not yet implemented";

	/**
		// CanComplex reports whether Complex can be used without panicking.
	**/
	@:keep
	static public function canComplex(_v:Value):Bool
		throw "reflect.canComplex is not yet implemented";

	/**
		// Close closes the channel v.
		// It panics if v's Kind is not Chan.
	**/
	@:keep
	static public function close(_v:Value):Void
		throw "reflect.close is not yet implemented";

	/**
		// Cap returns v's capacity.
		// It panics if v's Kind is not Array, Chan, Slice or pointer to Array.
	**/
	@:keep
	static public function cap(_v:Value):GoInt
		throw "reflect.cap is not yet implemented";

	/**
		// CallSlice calls the variadic function v with the input arguments in,
		// assigning the slice in[len(in)-1] to v's final variadic argument.
		// For example, if len(in) == 3, v.CallSlice(in) represents the Go call v(in[0], in[1], in[2]...).
		// CallSlice panics if v's Kind is not Func or if v is not variadic.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
	**/
	@:keep
	static public function callSlice(_v:Value, _in:Slice<Value>):Slice<Value>
		throw "reflect.callSlice is not yet implemented";

	/**
		// Call calls the function v with the input arguments in.
		// For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
		// Call panics if v's Kind is not Func.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
		// If v is a variadic function, Call creates the variadic slice parameter
		// itself, copying in the corresponding values.
	**/
	@:keep
	static public function call(_v:Value, _in:Slice<Value>):Slice<Value>
		throw "reflect.call is not yet implemented";

	/**
		// CanSet reports whether the value of v can be changed.
		// A Value can be changed only if it is addressable and was not
		// obtained by the use of unexported struct fields.
		// If CanSet returns false, calling Set or any type-specific
		// setter (e.g., SetBool, SetInt) will panic.
	**/
	@:keep
	static public function canSet(_v:Value):Bool
		throw "reflect.canSet is not yet implemented";

	/**
		// CanAddr reports whether the value's address can be obtained with Addr.
		// Such values are called addressable. A value is addressable if it is
		// an element of a slice, an element of an addressable array,
		// a field of an addressable struct, or the result of dereferencing a pointer.
		// If CanAddr returns false, calling Addr will panic.
	**/
	@:keep
	static public function canAddr(_v:Value):Bool
		throw "reflect.canAddr is not yet implemented";

	/**
		// Bytes returns v's underlying value.
		// It panics if v's underlying value is not a slice of bytes or
		// an addressable array of bytes.
	**/
	@:keep
	static public function bytes(_v:Value):Slice<GoByte>
		throw "reflect.bytes is not yet implemented";

	/**
		// Bool returns v's underlying value.
		// It panics if v's kind is not Bool.
	**/
	@:keep
	static public function bool_(_v:Value):Bool
		throw "reflect.bool_ is not yet implemented";

	/**
		// Addr returns a pointer value representing the address of v.
		// It panics if CanAddr() returns false.
		// Addr is typically used to obtain a pointer to a struct field
		// or slice element in order to call a method that requires a
		// pointer receiver.
	**/
	@:keep
	static public function addr(_v:Value):Value
		throw "reflect.addr is not yet implemented";
}

class ValueError_asInterface {
	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ValueError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.ValueError_asInterface) class ValueError_static_extension {
	@:keep
	static public function error(_e:Ref<ValueError>):GoString
		throw "reflect.error is not yet implemented";
}

class MapIter_asInterface {
	/**
		// Reset modifies iter to iterate over v.
		// It panics if v's Kind is not Map and v is not the zero Value.
		// Reset(Value{}) causes iter to not to refer to any map,
		// which may allow the previously iterated-over map to be garbage collected.
	**/
	@:keep
	public function reset(_v:Value):Void
		__self__.value.reset(_v);

	/**
		// Next advances the map iterator and reports whether there is another
		// entry. It returns false when iter is exhausted; subsequent
		// calls to Key, Value, or Next will panic.
	**/
	@:keep
	public function next():Bool
		return __self__.value.next();

	/**
		// Value returns the value of iter's current map entry.
	**/
	@:keep
	public function value():Value
		return __self__.value.value();

	/**
		// Key returns the key of iter's current map entry.
	**/
	@:keep
	public function key():Value
		return __self__.value.key();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<MapIter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.MapIter_asInterface) class MapIter_static_extension {
	/**
		// Reset modifies iter to iterate over v.
		// It panics if v's Kind is not Map and v is not the zero Value.
		// Reset(Value{}) causes iter to not to refer to any map,
		// which may allow the previously iterated-over map to be garbage collected.
	**/
	@:keep
	static public function reset(_iter:Ref<MapIter>, _v:Value):Void
		throw "reflect.reset is not yet implemented";

	/**
		// Next advances the map iterator and reports whether there is another
		// entry. It returns false when iter is exhausted; subsequent
		// calls to Key, Value, or Next will panic.
	**/
	@:keep
	static public function next(_iter:Ref<MapIter>):Bool
		throw "reflect.next is not yet implemented";

	/**
		// Value returns the value of iter's current map entry.
	**/
	@:keep
	static public function value(_iter:Ref<MapIter>):Value
		throw "reflect.value is not yet implemented";

	/**
		// Key returns the key of iter's current map entry.
	**/
	@:keep
	static public function key(_iter:Ref<MapIter>):Value
		throw "reflect.key is not yet implemented";
}

class Kind_asInterface {
	/**
		// String returns the name of k.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Kind>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.Kind_asInterface) class Kind_static_extension {
	/**
		// String returns the name of k.
	**/
	@:keep
	static public function string(_k:Kind):GoString
		throw "reflect.string is not yet implemented";
}

class ChanDir_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ChanDir>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.ChanDir_asInterface) class ChanDir_static_extension {
	@:keep
	static public function string(_d:ChanDir):GoString
		throw "reflect.string is not yet implemented";
}

class StructTag_asInterface {
	/**
		// Lookup returns the value associated with key in the tag string.
		// If the key is present in the tag the value (which may be empty)
		// is returned. Otherwise the returned value will be the empty string.
		// The ok return value reports whether the value was explicitly set in
		// the tag string. If the tag does not have the conventional format,
		// the value returned by Lookup is unspecified.
	**/
	@:keep
	public function lookup(_key:GoString):{var _0:GoString; var _1:Bool;}
		return __self__.value.lookup(_key);

	/**
		// Get returns the value associated with key in the tag string.
		// If there is no such key in the tag, Get returns the empty string.
		// If the tag does not have the conventional format, the value
		// returned by Get is unspecified. To determine whether a tag is
		// explicitly set to the empty string, use Lookup.
	**/
	@:keep
	public function get(_key:GoString):GoString
		return __self__.value.get(_key);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<StructTag>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.reflect.Reflect.StructTag_asInterface) class StructTag_static_extension {
	/**
		// Lookup returns the value associated with key in the tag string.
		// If the key is present in the tag the value (which may be empty)
		// is returned. Otherwise the returned value will be the empty string.
		// The ok return value reports whether the value was explicitly set in
		// the tag string. If the tag does not have the conventional format,
		// the value returned by Lookup is unspecified.
	**/
	@:keep
	static public function lookup(_tag:StructTag, _key:GoString):{var _0:GoString; var _1:Bool;}
		throw "reflect.lookup is not yet implemented";

	/**
		// Get returns the value associated with key in the tag string.
		// If there is no such key in the tag, Get returns the empty string.
		// If the tag does not have the conventional format, the value
		// returned by Get is unspecified. To determine whether a tag is
		// explicitly set to the empty string, use Lookup.
	**/
	@:keep
	static public function get(_tag:StructTag, _key:GoString):GoString
		throw "reflect.get is not yet implemented";
}
