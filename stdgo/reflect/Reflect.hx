package stdgo.reflect;
var invalid : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var bool_ : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var int_ : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var int8 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var int16 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var int32 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var int64 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uint : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uint8 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uint16 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uint32 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uint64 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var uintptr : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var float32 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var float64 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var complex64 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var complex128 : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var array : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var chan : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var func : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var interface_ : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var map_ : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var pointer : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var slice : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var string : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var struct_ : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var unsafePointer : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var ptr : Kind = ((0 : stdgo.GoUInt) : stdgo._internal.reflect.Reflect_kind.Kind);
var recvDir : ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_chandir.ChanDir);
var sendDir : ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_chandir.ChanDir);
var bothDir : ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_chandir.ChanDir);
var selectSend : SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_selectdir.SelectDir);
var selectRecv : SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_selectdir.SelectDir);
var selectDefault : SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_selectdir.SelectDir);
var callGC(get, set) : stdgo.Pointer<Bool>;
private function get_callGC():stdgo.Pointer<Bool> return stdgo._internal.reflect.Reflect_callgc.callGC;
private function set_callGC(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.reflect.Reflect_callgc.callGC = v;
        return v;
    }
var gCBits(get, set) : stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8>;
private function get_gCBits():stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.reflect.Reflect_gcbits.gCBits;
private function set_gCBits(v:stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8>):stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.reflect.Reflect_gcbits.gCBits = v;
        return v;
    }
var methodValueCallCodePtr(get, set) : () -> stdgo.GoUIntptr;
private function get_methodValueCallCodePtr():() -> stdgo.GoUIntptr return stdgo._internal.reflect.Reflect_methodvaluecallcodeptr.methodValueCallCodePtr;
private function set_methodValueCallCodePtr(v:() -> stdgo.GoUIntptr):() -> stdgo.GoUIntptr {
        stdgo._internal.reflect.Reflect_methodvaluecallcodeptr.methodValueCallCodePtr = v;
        return v;
    }
typedef Type_ = stdgo._internal.reflect.Reflect_type_.Type_;
typedef EmbedWithUnexpMeth = stdgo._internal.reflect.Reflect_embedwithunexpmeth.EmbedWithUnexpMeth;
typedef OtherPkgFields = stdgo._internal.reflect.Reflect_otherpkgfields.OtherPkgFields;
typedef Buffer = stdgo._internal.reflect.Reflect_buffer.Buffer;
typedef Method = stdgo._internal.reflect.Reflect_method.Method;
typedef StructField = stdgo._internal.reflect.Reflect_structfield.StructField;
typedef Value = stdgo._internal.reflect.Reflect_value.Value;
typedef ValueError = stdgo._internal.reflect.Reflect_valueerror.ValueError;
typedef MapIter = stdgo._internal.reflect.Reflect_mapiter.MapIter;
typedef StringHeader = stdgo._internal.reflect.Reflect_stringheader.StringHeader;
typedef SliceHeader = stdgo._internal.reflect.Reflect_sliceheader.SliceHeader;
typedef SelectCase = stdgo._internal.reflect.Reflect_selectcase.SelectCase;
typedef Kind = stdgo._internal.reflect.Reflect_kind.Kind;
typedef ChanDir = stdgo._internal.reflect.Reflect_chandir.ChanDir;
typedef StructTag = stdgo._internal.reflect.Reflect_structtag.StructTag;
typedef SelectDir = stdgo._internal.reflect.Reflect_selectdir.SelectDir;
typedef EmbedWithUnexpMethPointer = stdgo._internal.reflect.Reflect_embedwithunexpmethpointer.EmbedWithUnexpMethPointer;
typedef OtherPkgFieldsPointer = stdgo._internal.reflect.Reflect_otherpkgfieldspointer.OtherPkgFieldsPointer;
typedef BufferPointer = stdgo._internal.reflect.Reflect_bufferpointer.BufferPointer;
typedef MethodPointer = stdgo._internal.reflect.Reflect_methodpointer.MethodPointer;
typedef StructFieldPointer = stdgo._internal.reflect.Reflect_structfieldpointer.StructFieldPointer;
typedef ValuePointer = stdgo._internal.reflect.Reflect_valuepointer.ValuePointer;
typedef ValueErrorPointer = stdgo._internal.reflect.Reflect_valueerrorpointer.ValueErrorPointer;
typedef MapIterPointer = stdgo._internal.reflect.Reflect_mapiterpointer.MapIterPointer;
typedef StringHeaderPointer = stdgo._internal.reflect.Reflect_stringheaderpointer.StringHeaderPointer;
typedef SliceHeaderPointer = stdgo._internal.reflect.Reflect_sliceheaderpointer.SliceHeaderPointer;
typedef SelectCasePointer = stdgo._internal.reflect.Reflect_selectcasepointer.SelectCasePointer;
typedef KindPointer = stdgo._internal.reflect.Reflect_kindpointer.KindPointer;
typedef ChanDirPointer = stdgo._internal.reflect.Reflect_chandirpointer.ChanDirPointer;
typedef StructTagPointer = stdgo._internal.reflect.Reflect_structtagpointer.StructTagPointer;
typedef SelectDirPointer = stdgo._internal.reflect.Reflect_selectdirpointer.SelectDirPointer;
/**
    * Package reflect implements run-time reflection, allowing a program to
    * manipulate objects with arbitrary types. The typical use is to take a value
    * with static type interface{} and extract its dynamic type information by
    * calling TypeOf, which returns a Type.
    * 
    * A call to ValueOf returns a Value representing the run-time data.
    * Zero takes a Type and returns a Value representing a zero value
    * for that type.
    * 
    * See "The Laws of Reflection" for an introduction to reflection in Go:
    * https://golang.org/doc/articles/laws_of_reflection.html
**/
class Reflect {
    /**
        * DeepEqual reports whether x and y are “deeply equal,” defined as follows.
        * Two values of identical type are deeply equal if one of the following cases applies.
        * Values of distinct types are never deeply equal.
        * 
        * Array values are deeply equal when their corresponding elements are deeply equal.
        * 
        * Struct values are deeply equal if their corresponding fields,
        * both exported and unexported, are deeply equal.
        * 
        * Func values are deeply equal if both are nil; otherwise they are not deeply equal.
        * 
        * Interface values are deeply equal if they hold deeply equal concrete values.
        * 
        * Map values are deeply equal when all of the following are true:
        * they are both nil or both non-nil, they have the same length,
        * and either they are the same map object or their corresponding keys
        * (matched using Go equality) map to deeply equal values.
        * 
        * Pointer values are deeply equal if they are equal using Go's == operator
        * or if they point to deeply equal values.
        * 
        * Slice values are deeply equal when all of the following are true:
        * they are both nil or both non-nil, they have the same length,
        * and either they point to the same initial entry of the same underlying array
        * (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
        * Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
        * are not deeply equal.
        * 
        * Other values - numbers, bools, strings, and channels - are deeply equal
        * if they are equal using Go's == operator.
        * 
        * In general DeepEqual is a recursive relaxation of Go's == operator.
        * However, this idea is impossible to implement without some inconsistency.
        * Specifically, it is possible for a value to be unequal to itself,
        * either because it is of func type (uncomparable in general)
        * or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
        * or because it is an array, struct, or interface containing
        * such a value.
        * On the other hand, pointer values are always equal to themselves,
        * even if they point at or contain such problematic values,
        * because they compare equal using Go's == operator, and that
        * is a sufficient condition to be deeply equal, regardless of content.
        * DeepEqual has been defined so that the same short-cut applies
        * to slices and maps: if x and y are the same slice or the same map,
        * they are deeply equal regardless of content.
        * 
        * As DeepEqual traverses the data values it may find a cycle. The
        * second and subsequent times that DeepEqual compares two pointer
        * values that have been compared before, it treats the values as
        * equal rather than examining the values to which they point.
        * This ensures that DeepEqual terminates.
    **/
    static public inline function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool return stdgo._internal.reflect.Reflect_deepequal.deepEqual(_x, _y);
    /**
        * MakeRO returns a copy of v with the read-only flag set.
    **/
    static public inline function makeRO(_v:Value):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makero.makeRO(_v);
    /**
        * IsRO reports whether v's read-only flag is set.
    **/
    static public inline function isRO(_v:Value):Bool return stdgo._internal.reflect.Reflect_isro.isRO(_v);
    /**
        * FuncLayout calls funcLayout and returns a subset of the results for testing.
        * 
        * Bitmaps like stack, gc, inReg, and outReg are expanded such that each bit
        * takes up one byte, so that writing out test cases is a little clearer.
        * If ptrs is false, gc will be nil.
    **/
    static public inline function funcLayout(_t:Type_, _rcvr:Type_):{ var _0 : stdgo._internal.reflect.Reflect_type_.Type_; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; var _3 : stdgo.Slice<stdgo.GoUInt8>; var _4 : stdgo.Slice<stdgo.GoUInt8>; var _5 : stdgo.Slice<stdgo.GoUInt8>; var _6 : stdgo.Slice<stdgo.GoUInt8>; var _7 : Bool; } return stdgo._internal.reflect.Reflect_funclayout.funcLayout(_t, _rcvr);
    static public inline function typeLinks():stdgo.Slice<stdgo.GoString> return stdgo._internal.reflect.Reflect_typelinks.typeLinks();
    static public inline function mapBucketOf(_x:Type_, _y:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_mapbucketof.mapBucketOf(_x, _y);
    static public inline function cachedBucketOf(_m:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_cachedbucketof.cachedBucketOf(_m);
    static public inline function firstMethodNameBytes(_t:Type_):stdgo.Pointer<stdgo.GoUInt8> return stdgo._internal.reflect.Reflect_firstmethodnamebytes.firstMethodNameBytes(_t);
    static public inline function isExported(_t:Type_):Bool return stdgo._internal.reflect.Reflect_isexported.isExported(_t);
    static public inline function resolveReflectName(_s:stdgo.GoString):Void stdgo._internal.reflect.Reflect_resolvereflectname.resolveReflectName(_s);
    static public inline function setArgRegs(_ints:stdgo.GoInt, _floats:stdgo.GoInt, _floatSize:stdgo.GoUIntptr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoUIntptr; } return stdgo._internal.reflect.Reflect_setargregs.setArgRegs(_ints, _floats, _floatSize);
    /**
        * MakeFunc returns a new function of the given Type
        * that wraps the function fn. When called, that new function
        * does the following:
        * 
        *   - converts its arguments to a slice of Values.
        *   - runs results := fn(args).
        *   - returns the results as a slice of Values, one per formal result.
        * 
        * The implementation fn can assume that the argument Value slice
        * has the number and type of arguments given by typ.
        * If typ describes a variadic function, the final Value is itself
        * a slice representing the variadic arguments, as in the
        * body of a variadic function. The result Value slice returned by fn
        * must have the number and type of results given by typ.
        * 
        * The Value.Call method allows the caller to invoke a typed function
        * in terms of Values; in contrast, MakeFunc allows the caller to implement
        * a typed function in terms of Values.
        * 
        * The Examples section of the documentation includes an illustration
        * of how to use MakeFunc to build a swap function for different types.
    **/
    static public inline function makeFunc(_typ:Type_, _fn:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _fn);
    /**
        * Swapper returns a function that swaps the elements in the provided
        * slice.
        * 
        * Swapper panics if the provided interface is not a slice.
    **/
    static public inline function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void return stdgo._internal.reflect.Reflect_swapper.swapper(_slice);
    /**
        * TypeOf returns the reflection Type that represents the dynamic type of i.
        * If i is a nil interface value, TypeOf returns nil.
    **/
    static public inline function typeOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_typeof.typeOf(_i);
    /**
        * PtrTo returns the pointer type with element t.
        * For example, if t represents type Foo, PtrTo(t) represents *Foo.
        * 
        * PtrTo is the old spelling of PointerTo.
        * The two functions behave identically.
    **/
    static public inline function ptrTo(_t:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_ptrto.ptrTo(_t);
    /**
        * PointerTo returns the pointer type with element t.
        * For example, if t represents type Foo, PointerTo(t) represents *Foo.
    **/
    static public inline function pointerTo(_t:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t);
    /**
        * ChanOf returns the channel type with the given direction and element type.
        * For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
        * 
        * The gc runtime imposes a limit of 64 kB on channel element types.
        * If t's size is equal to or exceeds this limit, ChanOf panics.
    **/
    static public inline function chanOf(_dir:ChanDir, _t:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_chanof.chanOf(_dir, _t);
    /**
        * MapOf returns the map type with the given key and element types.
        * For example, if k represents int and e represents string,
        * MapOf(k, e) represents map[int]string.
        * 
        * If the key type is not a valid map key type (that is, if it does
        * not implement Go's == operator), MapOf panics.
    **/
    static public inline function mapOf(_key:Type_, _elem:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_mapof.mapOf(_key, _elem);
    /**
        * FuncOf returns the function type with the given argument and result types.
        * For example if k represents int and e represents string,
        * FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
        * 
        * The variadic argument controls whether the function is variadic. FuncOf
        * panics if the in[len(in)-1] does not represent a slice and variadic is
        * true.
    **/
    static public inline function funcOf(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, _out:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, _variadic:Bool):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_funcof.funcOf(_in, _out, _variadic);
    /**
        * SliceOf returns the slice type with element type t.
        * For example, if t represents int, SliceOf(t) represents []int.
    **/
    static public inline function sliceOf(_t:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_sliceof.sliceOf(_t);
    /**
        * StructOf returns the struct type containing fields.
        * The Offset and Index fields are ignored and computed as they would be
        * by the compiler.
        * 
        * StructOf currently does not generate wrapper methods for embedded
        * fields and panics if passed unexported StructFields.
        * These limitations may be lifted in a future version.
    **/
    static public inline function structOf(_fields:stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_structof.structOf(_fields);
    /**
        * ArrayOf returns the array type with the given length and element type.
        * For example, if t represents int, ArrayOf(5, t) represents [5]int.
        * 
        * If the resulting type would be larger than the available address space,
        * ArrayOf panics.
    **/
    static public inline function arrayOf(_length:stdgo.GoInt, _elem:Type_):stdgo._internal.reflect.Reflect_type_.Type_ return stdgo._internal.reflect.Reflect_arrayof.arrayOf(_length, _elem);
    /**
        * Append appends the values x to a slice s and returns the resulting slice.
        * As in Go, each x's value must be assignable to the slice's element type.
    **/
    static public inline function append(_s:Value, _x:haxe.Rest<Value>):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_append.append(_s, ...[for (i in _x) i]);
    /**
        * AppendSlice appends a slice t to a slice s and returns the resulting slice.
        * The slices s and t must have the same element type.
    **/
    static public inline function appendSlice(_s:Value, _t:Value):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_appendslice.appendSlice(_s, _t);
    /**
        * Copy copies the contents of src into dst until either
        * dst has been filled or src has been exhausted.
        * It returns the number of elements copied.
        * Dst and src each must have kind Slice or Array, and
        * dst and src must have the same element type.
        * 
        * As a special case, src can have kind String if the element type of dst is kind Uint8.
    **/
    static public inline function copy(_dst:Value, _src:Value):stdgo.GoInt return stdgo._internal.reflect.Reflect_copy.copy(_dst, _src);
    /**
        * Select executes a select operation described by the list of cases.
        * Like the Go select statement, it blocks until at least one of the cases
        * can proceed, makes a uniform pseudo-random choice,
        * and then executes that case. It returns the index of the chosen case
        * and, if that case was a receive operation, the value received and a
        * boolean indicating whether the value corresponds to a send on the channel
        * (as opposed to a zero value received because the channel is closed).
        * Select supports a maximum of 65536 cases.
    **/
    static public inline function select(_cases:stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_value.Value; var _2 : Bool; } return stdgo._internal.reflect.Reflect_select.select(_cases);
    /**
        * MakeSlice creates a new zero-initialized slice value
        * for the specified slice type, length, and capacity.
    **/
    static public inline function makeSlice(_typ:Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makeslice.makeSlice(_typ, _len, _cap);
    /**
        * MakeChan creates a new channel with the specified type and buffer size.
    **/
    static public inline function makeChan(_typ:Type_, _buffer:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makechan.makeChan(_typ, _buffer);
    /**
        * MakeMap creates a new map with the specified type.
    **/
    static public inline function makeMap(_typ:Type_):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makemap.makeMap(_typ);
    /**
        * MakeMapWithSize creates a new map with the specified type
        * and initial space for approximately n elements.
    **/
    static public inline function makeMapWithSize(_typ:Type_, _n:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_makemapwithsize.makeMapWithSize(_typ, _n);
    /**
        * Indirect returns the value that v points to.
        * If v is a nil pointer, Indirect returns a zero Value.
        * If v is not a pointer, Indirect returns v.
    **/
    static public inline function indirect(_v:Value):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_indirect.indirect(_v);
    /**
        * ValueOf returns a new Value initialized to the concrete value
        * stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public inline function valueOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_valueof.valueOf(_i);
    /**
        * Zero returns a Value representing the zero value for the specified type.
        * The result is different from the zero value of the Value struct,
        * which represents no value at all.
        * For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
        * The returned value is neither addressable nor settable.
    **/
    static public inline function zero(_typ:Type_):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_zero.zero(_typ);
    /**
        * New returns a Value representing a pointer to a new zero value
        * for the specified type. That is, the returned Value's Type is PointerTo(typ).
    **/
    static public inline function new_(_typ:Type_):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_new_.new_(_typ);
    /**
        * NewAt returns a Value representing a pointer to a value of the
        * specified type, using p as that pointer.
    **/
    static public inline function newAt(_typ:Type_, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.reflect.Reflect_value.Value return stdgo._internal.reflect.Reflect_newat.newAt(_typ, _p);
    /**
        * VisibleFields returns all the visible fields in t, which must be a
        * struct type. A field is defined as visible if it's accessible
        * directly with a FieldByName call. The returned fields include fields
        * inside anonymous struct members and unexported fields. They follow
        * the same order found in the struct, with anonymous fields followed
        * immediately by their promoted fields.
        * 
        * For each element e of the returned slice, the corresponding field
        * can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
    **/
    static public inline function visibleFields(_t:Type_):stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField> return stdgo._internal.reflect.Reflect_visiblefields.visibleFields(_t);
}
