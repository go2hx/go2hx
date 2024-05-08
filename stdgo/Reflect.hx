package stdgo;
/**
    Package reflect implements run-time reflection, allowing a program to
    manipulate objects with arbitrary types. The typical use is to take a value
    with static type interface{} and extract its dynamic type information by
    calling TypeOf, which returns a Type.
    
    A call to ValueOf returns a Value representing the run-time data.
    Zero takes a Type and returns a Value representing a zero value
    for that type.
    
    See "The Laws of Reflection" for an introduction to reflection in Go:
    https://golang.org/doc/articles/laws_of_reflection.html
**/
private var __go2hxdoc__package : Bool;
final invalid : stdgo._internal.reflect.Reflect.Kind = stdgo._internal.reflect.Reflect.invalid;
final bool_ = stdgo._internal.reflect.Reflect.bool_;
final int_ = stdgo._internal.reflect.Reflect.int_;
final int8 = stdgo._internal.reflect.Reflect.int8;
final int16 = stdgo._internal.reflect.Reflect.int16;
final int32 = stdgo._internal.reflect.Reflect.int32;
final int64 = stdgo._internal.reflect.Reflect.int64;
final uint = stdgo._internal.reflect.Reflect.uint;
final uint8 = stdgo._internal.reflect.Reflect.uint8;
final uint16 = stdgo._internal.reflect.Reflect.uint16;
final uint32 = stdgo._internal.reflect.Reflect.uint32;
final uint64 = stdgo._internal.reflect.Reflect.uint64;
final uintptr = stdgo._internal.reflect.Reflect.uintptr;
final float32 = stdgo._internal.reflect.Reflect.float32;
final float64 = stdgo._internal.reflect.Reflect.float64;
final complex64 = stdgo._internal.reflect.Reflect.complex64;
final complex128 = stdgo._internal.reflect.Reflect.complex128;
final array = stdgo._internal.reflect.Reflect.array;
final chan = stdgo._internal.reflect.Reflect.chan;
final func = stdgo._internal.reflect.Reflect.func;
final interface_ = stdgo._internal.reflect.Reflect.interface_;
final map_ = stdgo._internal.reflect.Reflect.map_;
final pointer = stdgo._internal.reflect.Reflect.pointer;
final slice = stdgo._internal.reflect.Reflect.slice;
final string = stdgo._internal.reflect.Reflect.string;
final struct_ = stdgo._internal.reflect.Reflect.struct_;
final unsafePointer = stdgo._internal.reflect.Reflect.unsafePointer;
final ptr : stdgo._internal.reflect.Reflect.Kind = stdgo._internal.reflect.Reflect.ptr;
final recvDir : stdgo._internal.reflect.Reflect.ChanDir = stdgo._internal.reflect.Reflect.recvDir;
final sendDir = stdgo._internal.reflect.Reflect.sendDir;
final bothDir : stdgo._internal.reflect.Reflect.ChanDir = stdgo._internal.reflect.Reflect.bothDir;
final selectSend = stdgo._internal.reflect.Reflect.selectSend;
final selectRecv = stdgo._internal.reflect.Reflect.selectRecv;
final selectDefault = stdgo._internal.reflect.Reflect.selectDefault;
typedef Type_ = stdgo._internal.reflect.Reflect.Type_;
abstract Method(stdgo._internal.reflect.Reflect.Method) from stdgo._internal.reflect.Reflect.Method to stdgo._internal.reflect.Reflect.Method {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public var func(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get_func():stdgo._internal.reflect.Reflect.Value return this.func;
    function set_func(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this.func = v;
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:stdgo._internal.reflect.Reflect.Type_, ?func:stdgo._internal.reflect.Reflect.Value, ?index:StdTypes.Int) this = new stdgo._internal.reflect.Reflect.Method(name, pkgPath, type, func, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract StructField(stdgo._internal.reflect.Reflect.StructField) from stdgo._internal.reflect.Reflect.StructField to stdgo._internal.reflect.Reflect.StructField {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public var tag(get, set) : stdgo._internal.reflect.Reflect.StructTag;
    function get_tag():stdgo._internal.reflect.Reflect.StructTag return this.tag;
    function set_tag(v:stdgo._internal.reflect.Reflect.StructTag):stdgo._internal.reflect.Reflect.StructTag {
        this.tag = v;
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = v;
        return v;
    }
    public var index(get, set) : Array<StdTypes.Int>;
    function get_index():Array<StdTypes.Int> return [for (i in this.index) i];
    function set_index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var anonymous(get, set) : Bool;
    function get_anonymous():Bool return this.anonymous;
    function set_anonymous(v:Bool):Bool {
        this.anonymous = v;
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:stdgo._internal.reflect.Reflect.Type_, ?tag:stdgo._internal.reflect.Reflect.StructTag, ?offset:stdgo.GoUIntptr, ?index:Array<StdTypes.Int>, ?anonymous:Bool) this = new stdgo._internal.reflect.Reflect.StructField(name, pkgPath, type, tag, offset, ([for (i in index) i] : stdgo.Slice<stdgo.GoInt>), anonymous);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Value(stdgo._internal.reflect.Reflect.Value) from stdgo._internal.reflect.Reflect.Value to stdgo._internal.reflect.Reflect.Value {
    public function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:StdTypes.Int, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) this = new stdgo._internal.reflect.Reflect.Value(value, underlyingValue, underlyingIndex, underlyingKey, canAddrBool, notSetBool, string);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ValueError(stdgo._internal.reflect.Reflect.ValueError) from stdgo._internal.reflect.Reflect.ValueError to stdgo._internal.reflect.Reflect.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var kind(get, set) : stdgo._internal.reflect.Reflect.Kind;
    function get_kind():stdgo._internal.reflect.Reflect.Kind return this.kind;
    function set_kind(v:stdgo._internal.reflect.Reflect.Kind):stdgo._internal.reflect.Reflect.Kind {
        this.kind = v;
        return v;
    }
    public function new(?method:String, ?kind:stdgo._internal.reflect.Reflect.Kind, ?toString) this = new stdgo._internal.reflect.Reflect.ValueError(method, kind, toString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract MapIter(stdgo._internal.reflect.Reflect.MapIter) from stdgo._internal.reflect.Reflect.MapIter to stdgo._internal.reflect.Reflect.MapIter {
    public function new(?map:haxe.Constraints<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) this = new stdgo._internal.reflect.Reflect.MapIter(map, keys, values, t, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract StringHeader(stdgo._internal.reflect.Reflect.StringHeader) from stdgo._internal.reflect.Reflect.StringHeader to stdgo._internal.reflect.Reflect.StringHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = v;
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int) this = new stdgo._internal.reflect.Reflect.StringHeader(data, len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract SliceHeader(stdgo._internal.reflect.Reflect.SliceHeader) from stdgo._internal.reflect.Reflect.SliceHeader to stdgo._internal.reflect.Reflect.SliceHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = v;
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = v;
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int, ?cap:StdTypes.Int) this = new stdgo._internal.reflect.Reflect.SliceHeader(data, len, cap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract SelectCase(stdgo._internal.reflect.Reflect.SelectCase) from stdgo._internal.reflect.Reflect.SelectCase to stdgo._internal.reflect.Reflect.SelectCase {
    public var dir(get, set) : stdgo._internal.reflect.Reflect.SelectDir;
    function get_dir():stdgo._internal.reflect.Reflect.SelectDir return this.dir;
    function set_dir(v:stdgo._internal.reflect.Reflect.SelectDir):stdgo._internal.reflect.Reflect.SelectDir {
        this.dir = v;
        return v;
    }
    public var chan(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get_chan():stdgo._internal.reflect.Reflect.Value return this.chan;
    function set_chan(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this.chan = v;
        return v;
    }
    public var send(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get_send():stdgo._internal.reflect.Reflect.Value return this.send;
    function set_send(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this.send = v;
        return v;
    }
    public function new(?dir:stdgo._internal.reflect.Reflect.SelectDir, ?chan:stdgo._internal.reflect.Reflect.Value, ?send:stdgo._internal.reflect.Reflect.Value) this = new stdgo._internal.reflect.Reflect.SelectCase(dir, chan, send);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Kind = stdgo._internal.reflect.Reflect.Kind;
typedef ChanDir = stdgo._internal.reflect.Reflect.ChanDir;
typedef StructTag = stdgo._internal.reflect.Reflect.StructTag;
typedef SelectDir = stdgo._internal.reflect.Reflect.SelectDir;
class Reflect {
    /**
        DeepEqual reports whether x and y are “deeply equal,” defined as follows.
        Two values of identical type are deeply equal if one of the following cases applies.
        Values of distinct types are never deeply equal.
        
        Array values are deeply equal when their corresponding elements are deeply equal.
        
        Struct values are deeply equal if their corresponding fields,
        both exported and unexported, are deeply equal.
        
        Func values are deeply equal if both are nil; otherwise they are not deeply equal.
        
        Interface values are deeply equal if they hold deeply equal concrete values.
        
        Map values are deeply equal when all of the following are true:
        they are both nil or both non-nil, they have the same length,
        and either they are the same map object or their corresponding keys
        (matched using Go equality) map to deeply equal values.
        
        Pointer values are deeply equal if they are equal using Go's == operator
        or if they point to deeply equal values.
        
        Slice values are deeply equal when all of the following are true:
        they are both nil or both non-nil, they have the same length,
        and either they point to the same initial entry of the same underlying array
        (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
        Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
        are not deeply equal.
        
        Other values - numbers, bools, strings, and channels - are deeply equal
        if they are equal using Go's == operator.
        
        In general DeepEqual is a recursive relaxation of Go's == operator.
        However, this idea is impossible to implement without some inconsistency.
        Specifically, it is possible for a value to be unequal to itself,
        either because it is of func type (uncomparable in general)
        or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
        or because it is an array, struct, or interface containing
        such a value.
        On the other hand, pointer values are always equal to themselves,
        even if they point at or contain such problematic values,
        because they compare equal using Go's == operator, and that
        is a sufficient condition to be deeply equal, regardless of content.
        DeepEqual has been defined so that the same short-cut applies
        to slices and maps: if x and y are the same slice or the same map,
        they are deeply equal regardless of content.
        
        As DeepEqual traverses the data values it may find a cycle. The
        second and subsequent times that DeepEqual compares two pointer
        values that have been compared before, it treats the values as
        equal rather than examining the values to which they point.
        This ensures that DeepEqual terminates.
    **/
    static public function deepEqual(x:stdgo.AnyInterface, y:stdgo.AnyInterface):Bool {
        return stdgo._internal.reflect.Reflect.deepEqual(x, y);
    }
    /**
        MakeFunc returns a new function of the given Type
        that wraps the function fn. When called, that new function
        does the following:
        
          - converts its arguments to a slice of Values.
          - runs results := fn(args).
          - returns the results as a slice of Values, one per formal result.
        
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
    **/
    static public function makeFunc(typ:Type_, fn:(_args:stdgo.Slice<Value>) -> stdgo.Slice<Value>):Value {
        final fn = fn;
        return stdgo._internal.reflect.Reflect.makeFunc(typ, fn);
    }
    /**
        Swapper returns a function that swaps the elements in the provided
        slice.
        
        Swapper panics if the provided interface is not a slice.
    **/
    static public function swapper(slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void {
        return (_0, _1) -> stdgo._internal.reflect.Reflect.swapper(slice)(_0, _1);
    }
    /**
        TypeOf returns the reflection Type that represents the dynamic type of i.
        If i is a nil interface value, TypeOf returns nil.
    **/
    static public function typeOf(i:stdgo.AnyInterface):Type_ {
        return stdgo._internal.reflect.Reflect.typeOf(i);
    }
    /**
        PtrTo returns the pointer type with element t.
        For example, if t represents type Foo, PtrTo(t) represents *Foo.
        
        PtrTo is the old spelling of PointerTo.
        The two functions behave identically.
    **/
    static public function ptrTo(t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.ptrTo(t);
    }
    /**
        PointerTo returns the pointer type with element t.
        For example, if t represents type Foo, PointerTo(t) represents *Foo.
    **/
    static public function pointerTo(t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.pointerTo(t);
    }
    /**
        ChanOf returns the channel type with the given direction and element type.
        For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
        
        The gc runtime imposes a limit of 64 kB on channel element types.
        If t's size is equal to or exceeds this limit, ChanOf panics.
    **/
    static public function chanOf(dir:ChanDir, t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.chanOf(dir, t);
    }
    /**
        MapOf returns the map type with the given key and element types.
        For example, if k represents int and e represents string,
        MapOf(k, e) represents map[int]string.
        
        If the key type is not a valid map key type (that is, if it does
        not implement Go's == operator), MapOf panics.
    **/
    static public function mapOf(key:Type_, elem:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.mapOf(key, elem);
    }
    /**
        FuncOf returns the function type with the given argument and result types.
        For example if k represents int and e represents string,
        FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
        
        The variadic argument controls whether the function is variadic. FuncOf
        panics if the in[len(in)-1] does not represent a slice and variadic is
        true.
    **/
    static public function funcOf(_in:Array<Type_>, out:Array<Type_>, variadic:Bool):Type_ {
        final _in = ([for (i in _in) i] : stdgo.Slice<Type_>);
        final out = ([for (i in out) i] : stdgo.Slice<Type_>);
        return stdgo._internal.reflect.Reflect.funcOf(_in, out, variadic);
    }
    /**
        SliceOf returns the slice type with element type t.
        For example, if t represents int, SliceOf(t) represents []int.
    **/
    static public function sliceOf(t:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.sliceOf(t);
    }
    /**
        StructOf returns the struct type containing fields.
        The Offset and Index fields are ignored and computed as they would be
        by the compiler.
        
        StructOf currently does not generate wrapper methods for embedded
        fields and panics if passed unexported StructFields.
        These limitations may be lifted in a future version.
    **/
    static public function structOf(fields:Array<StructField>):Type_ {
        final fields = ([for (i in fields) i] : stdgo.Slice<StructField>);
        return stdgo._internal.reflect.Reflect.structOf(fields);
    }
    /**
        ArrayOf returns the array type with the given length and element type.
        For example, if t represents int, ArrayOf(5, t) represents [5]int.
        
        If the resulting type would be larger than the available address space,
        ArrayOf panics.
    **/
    static public function arrayOf(_length:StdTypes.Int, elem:Type_):Type_ {
        return stdgo._internal.reflect.Reflect.arrayOf(_length, elem);
    }
    /**
        Append appends the values x to a slice s and returns the resulting slice.
        As in Go, each x's value must be assignable to the slice's element type.
    **/
    static public function append(s:Value, x:haxe.Rest<Value>):Value {
        return stdgo._internal.reflect.Reflect.append(s, ...x);
    }
    /**
        AppendSlice appends a slice t to a slice s and returns the resulting slice.
        The slices s and t must have the same element type.
    **/
    static public function appendSlice(s:Value, t:Value):Value {
        return stdgo._internal.reflect.Reflect.appendSlice(s, t);
    }
    /**
        Copy copies the contents of src into dst until either
        dst has been filled or src has been exhausted.
        It returns the number of elements copied.
        Dst and src each must have kind Slice or Array, and
        dst and src must have the same element type.
        
        As a special case, src can have kind String if the element type of dst is kind Uint8.
    **/
    static public function copy(dst:Value, src:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect.copy(dst, src);
    }
    /**
        Select executes a select operation described by the list of cases.
        Like the Go select statement, it blocks until at least one of the cases
        can proceed, makes a uniform pseudo-random choice,
        and then executes that case. It returns the index of the chosen case
        and, if that case was a receive operation, the value received and a
        boolean indicating whether the value corresponds to a send on the channel
        (as opposed to a zero value received because the channel is closed).
        Select supports a maximum of 65536 cases.
    **/
    static public function select(cases:Array<SelectCase>):stdgo.Tuple.Tuple3<StdTypes.Int, Value, Bool> {
        final cases = ([for (i in cases) i] : stdgo.Slice<SelectCase>);
        return {
            final obj = stdgo._internal.reflect.Reflect.select(cases);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        MakeSlice creates a new zero-initialized slice value
        for the specified slice type, length, and capacity.
    **/
    static public function makeSlice(typ:Type_, len:StdTypes.Int, cap:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect.makeSlice(typ, len, cap);
    }
    /**
        MakeChan creates a new channel with the specified type and buffer size.
    **/
    static public function makeChan(typ:Type_, buffer:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect.makeChan(typ, buffer);
    }
    /**
        MakeMap creates a new map with the specified type.
    **/
    static public function makeMap(typ:Type_):Value {
        return stdgo._internal.reflect.Reflect.makeMap(typ);
    }
    /**
        MakeMapWithSize creates a new map with the specified type
        and initial space for approximately n elements.
    **/
    static public function makeMapWithSize(typ:Type_, n:StdTypes.Int):Value {
        return stdgo._internal.reflect.Reflect.makeMapWithSize(typ, n);
    }
    /**
        Indirect returns the value that v points to.
        If v is a nil pointer, Indirect returns a zero Value.
        If v is not a pointer, Indirect returns v.
    **/
    static public function indirect(v:Value):Value {
        return stdgo._internal.reflect.Reflect.indirect(v);
    }
    /**
        ValueOf returns a new Value initialized to the concrete value
        stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public function valueOf(i:stdgo.AnyInterface):Value {
        return stdgo._internal.reflect.Reflect.valueOf(i);
    }
    /**
        Zero returns a Value representing the zero value for the specified type.
        The result is different from the zero value of the Value struct,
        which represents no value at all.
        For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
        The returned value is neither addressable nor settable.
    **/
    static public function zero(typ:Type_):Value {
        return stdgo._internal.reflect.Reflect.zero(typ);
    }
    /**
        New returns a Value representing a pointer to a new zero value
        for the specified type. That is, the returned Value's Type is PointerTo(typ).
    **/
    static public function new_(typ:Type_):Value {
        return stdgo._internal.reflect.Reflect.new_(typ);
    }
    /**
        NewAt returns a Value representing a pointer to a value of the
        specified type, using p as that pointer.
    **/
    static public function newAt(typ:Type_, p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Value {
        return stdgo._internal.reflect.Reflect.newAt(typ, p);
    }
    /**
        VisibleFields returns all the visible fields in t, which must be a
        struct type. A field is defined as visible if it's accessible
        directly with a FieldByName call. The returned fields include fields
        inside anonymous struct members and unexported fields. They follow
        the same order found in the struct, with anonymous fields followed
        immediately by their promoted fields.
        
        For each element e of the returned slice, the corresponding field
        can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
    **/
    static public function visibleFields(t:Type_):Array<StructField> {
        return [for (i in stdgo._internal.reflect.Reflect.visibleFields(t)) i];
    }
}
