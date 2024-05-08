package stdgo.encoding;
/**
    /|*
    Package gob manages streams of gobs - binary values exchanged between an
    Encoder (transmitter) and a Decoder (receiver). A typical use is transporting
    arguments and results of remote procedure calls (RPCs) such as those provided by
    [net/rpc].
    
    The implementation compiles a custom codec for each data type in the stream and
    is most efficient when a single Encoder is used to transmit a stream of values,
    amortizing the cost of compilation.
    
    # Basics
    
    A stream of gobs is self-describing. Each data item in the stream is preceded by
    a specification of its type, expressed in terms of a small set of predefined
    types. Pointers are not transmitted, but the things they point to are
    transmitted; that is, the values are flattened. Nil pointers are not permitted,
    as they have no value. Recursive types work fine, but
    recursive values (data with cycles) are problematic. This may change.
    
    To use gobs, create an Encoder and present it with a series of data items as
    values or addresses that can be dereferenced to values. The Encoder makes sure
    all type information is sent before it is needed. At the receive side, a
    Decoder retrieves values from the encoded stream and unpacks them into local
    variables.
    
    # Types and Values
    
    The source and destination values/types need not correspond exactly. For structs,
    fields (identified by name) that are in the source but absent from the receiving
    variable will be ignored. Fields that are in the receiving variable but missing
    from the transmitted type or value will be ignored in the destination. If a field
    with the same name is present in both, their types must be compatible. Both the
    receiver and transmitter will do all necessary indirection and dereferencing to
    convert between gobs and actual Go values. For instance, a gob type that is
    schematically,
    
    	struct { A, B int }
    
    can be sent from or received into any of these Go types:
    
    	struct { A, B int }	// the same
    	*struct { A, B int }	// extra indirection of the struct
    	struct { *A, **B int }	// extra indirection of the fields
    	struct { A, B int64 }	// different concrete value type; see below
    
    It may also be received into any of these:
    
    	struct { A, B int }	// the same
    	struct { B, A int }	// ordering doesn't matter; matching is by name
    	struct { A, B, C int }	// extra field (C) ignored
    	struct { B int }	// missing field (A) ignored; data will be dropped
    	struct { B, C int }	// missing field (A) ignored; extra field (C) ignored.
    
    Attempting to receive into these types will draw a decode error:
    
    	struct { A int; B uint }	// change of signedness for B
    	struct { A int; B float }	// change of type for B
    	struct { }			// no field names in common
    	struct { C, D int }		// no field names in common
    
    Integers are transmitted two ways: arbitrary precision signed integers or
    arbitrary precision unsigned integers. There is no int8, int16 etc.
    discrimination in the gob format; there are only signed and unsigned integers. As
    described below, the transmitter sends the value in a variable-length encoding;
    the receiver accepts the value and stores it in the destination variable.
    Floating-point numbers are always sent using IEEE-754 64-bit precision (see
    below).
    
    Signed integers may be received into any signed integer variable: int, int16, etc.;
    unsigned integers may be received into any unsigned integer variable; and floating
    point values may be received into any floating point variable. However,
    the destination variable must be able to represent the value or the decode
    operation will fail.
    
    Structs, arrays and slices are also supported. Structs encode and decode only
    exported fields. Strings and arrays of bytes are supported with a special,
    efficient representation (see below). When a slice is decoded, if the existing
    slice has capacity the slice will be extended in place; if not, a new array is
    allocated. Regardless, the length of the resulting slice reports the number of
    elements decoded.
    
    In general, if allocation is required, the decoder will allocate memory. If not,
    it will update the destination variables with values read from the stream. It does
    not initialize them first, so if the destination is a compound value such as a
    map, struct, or slice, the decoded values will be merged elementwise into the
    existing variables.
    
    Functions and channels will not be sent in a gob. Attempting to encode such a value
    at the top level will fail. A struct field of chan or func type is treated exactly
    like an unexported field and is ignored.
    
    Gob can encode a value of any type implementing the GobEncoder or
    encoding.BinaryMarshaler interfaces by calling the corresponding method,
    in that order of preference.
    
    Gob can decode a value of any type implementing the GobDecoder or
    encoding.BinaryUnmarshaler interfaces by calling the corresponding method,
    again in that order of preference.
    
    # Encoding Details
    
    This section documents the encoding, details that are not important for most
    users. Details are presented bottom-up.
    
    An unsigned integer is sent one of two ways. If it is less than 128, it is sent
    as a byte with that value. Otherwise it is sent as a minimal-length big-endian
    (high byte first) byte stream holding the value, preceded by one byte holding the
    byte count, negated. Thus 0 is transmitted as (00), 7 is transmitted as (07) and
    256 is transmitted as (FE 01 00).
    
    A boolean is encoded within an unsigned integer: 0 for false, 1 for true.
    
    A signed integer, i, is encoded within an unsigned integer, u. Within u, bits 1
    upward contain the value; bit 0 says whether they should be complemented upon
    receipt. The encode algorithm looks like this:
    
    	var u uint
    	if i < 0 {
    		u = (^uint(i) << 1) | 1 // complement i, bit 0 is 1
    	} else {
    		u = (uint(i) << 1) // do not complement i, bit 0 is 0
    	}
    	encodeUnsigned(u)
    
    The low bit is therefore analogous to a sign bit, but making it the complement bit
    instead guarantees that the largest negative integer is not a special case. For
    example, -129=^128=(^256>>1) encodes as (FE 01 01).
    
    Floating-point numbers are always sent as a representation of a float64 value.
    That value is converted to a uint64 using math.Float64bits. The uint64 is then
    byte-reversed and sent as a regular unsigned integer. The byte-reversal means the
    exponent and high-precision part of the mantissa go first. Since the low bits are
    often zero, this can save encoding bytes. For instance, 17.0 is encoded in only
    three bytes (FE 31 40).
    
    Strings and slices of bytes are sent as an unsigned count followed by that many
    uninterpreted bytes of the value.
    
    All other slices and arrays are sent as an unsigned count followed by that many
    elements using the standard gob encoding for their type, recursively.
    
    Maps are sent as an unsigned count followed by that many key, element
    pairs. Empty but non-nil maps are sent, so if the receiver has not allocated
    one already, one will always be allocated on receipt unless the transmitted map
    is nil and not at the top level.
    
    In slices and arrays, as well as maps, all elements, even zero-valued elements,
    are transmitted, even if all the elements are zero.
    
    Structs are sent as a sequence of (field number, field value) pairs. The field
    value is sent using the standard gob encoding for its type, recursively. If a
    field has the zero value for its type (except for arrays; see above), it is omitted
    from the transmission. The field number is defined by the type of the encoded
    struct: the first field of the encoded type is field 0, the second is field 1,
    etc. When encoding a value, the field numbers are delta encoded for efficiency
    and the fields are always sent in order of increasing field number; the deltas are
    therefore unsigned. The initialization for the delta encoding sets the field
    number to -1, so an unsigned integer field 0 with value 7 is transmitted as unsigned
    delta = 1, unsigned value = 7 or (01 07). Finally, after all the fields have been
    sent a terminating mark denotes the end of the struct. That mark is a delta=0
    value, which has representation (00).
    
    Interface types are not checked for compatibility; all interface types are
    treated, for transmission, as members of a single "interface" type, analogous to
    int or []byte - in effect they're all treated as interface{}. Interface values
    are transmitted as a string identifying the concrete type being sent (a name
    that must be pre-defined by calling Register), followed by a byte count of the
    length of the following data (so the value can be skipped if it cannot be
    stored), followed by the usual encoding of concrete (dynamic) value stored in
    the interface value. (A nil interface value is identified by the empty string
    and transmits no value.) Upon receipt, the decoder verifies that the unpacked
    concrete item satisfies the interface of the receiving variable.
    
    If a value is passed to Encode and the type is not a struct (or pointer to struct,
    etc.), for simplicity of processing it is represented as a struct of one field.
    The only visible effect of this is to encode a zero byte after the value, just as
    after the last field of an encoded struct, so that the decode algorithm knows when
    the top-level value is complete.
    
    The representation of types is described below. When a type is defined on a given
    connection between an Encoder and Decoder, it is assigned a signed integer type
    id. When Encoder.Encode(v) is called, it makes sure there is an id assigned for
    the type of v and all its elements and then it sends the pair (typeid, encoded-v)
    where typeid is the type id of the encoded type of v and encoded-v is the gob
    encoding of the value v.
    
    To define a type, the encoder chooses an unused, positive type id and sends the
    pair (-type id, encoded-type) where encoded-type is the gob encoding of a wireType
    description, constructed from these types:
    
    	type wireType struct {
    		ArrayT           *ArrayType
    		SliceT           *SliceType
    		StructT          *StructType
    		MapT             *MapType
    		GobEncoderT      *gobEncoderType
    		BinaryMarshalerT *gobEncoderType
    		TextMarshalerT   *gobEncoderType
    
    	}
    	type arrayType struct {
    		CommonType
    		Elem typeId
    		Len  int
    	}
    	type CommonType struct {
    		Name string // the name of the struct type
    		Id  int    // the id of the type, repeated so it's inside the type
    	}
    	type sliceType struct {
    		CommonType
    		Elem typeId
    	}
    	type structType struct {
    		CommonType
    		Field []*fieldType // the fields of the struct.
    	}
    	type fieldType struct {
    		Name string // the name of the field.
    		Id   int    // the type id of the field, which must be already defined
    	}
    	type mapType struct {
    		CommonType
    		Key  typeId
    		Elem typeId
    	}
    	type gobEncoderType struct {
    		CommonType
    	}
    
    If there are nested type ids, the types for all inner type ids must be defined
    before the top-level type id is used to describe an encoded-v.
    
    For simplicity in setup, the connection is defined to understand these types a
    priori, as well as the basic gob types int, uint, etc. Their ids are:
    
    	bool        1
    	int         2
    	uint        3
    	float       4
    	[]byte      5
    	string      6
    	complex     7
    	interface   8
    	// gap for reserved ids.
    	WireType    16
    	ArrayType   17
    	CommonType  18
    	SliceType   19
    	StructType  20
    	FieldType   21
    	// 22 is slice of fieldType.
    	MapType     23
    
    Finally, each message created by a call to Encode is preceded by an encoded
    unsigned integer count of the number of bytes remaining in the message. After
    the initial type name, interface values are wrapped the same way; in effect, the
    interface value acts like a recursive invocation of Encode.
    
    In summary, a gob stream looks like
    
    	(byteCount (-type id, encoding of a wireType)* (type id, encoding of a value))*
    
    where * signifies zero or more repetitions and the type id of a value must
    be predefined or be defined before the value in the stream.
    
    Compatibility: Any future changes to the package will endeavor to maintain
    compatibility with streams encoded using previous versions. That is, any released
    version of this package should be able to decode data written with any previously
    released version, subject to issues such as security fixes. See the Go compatibility
    document for background: https://golang.org/doc/go1compat
    
    See "Gobs of data" for a design discussion of the gob wire format:
    https://blog.golang.org/gobs-of-data
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, the Decoder
    does only basic sanity checking on decoded input sizes, and its limits are not
    configurable. Care should be taken when decoding gob data from untrusted
    sources, which may consume significant resources.
    *|/
**/
private var __go2hxdoc__package : Bool;
typedef Squarer = stdgo._internal.encoding.gob.Gob.Squarer;
typedef T_interfaceIndirectTestI = stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI;
typedef T_gobType = stdgo._internal.encoding.gob.Gob.T_gobType;
typedef GobEncoder = stdgo._internal.encoding.gob.Gob.GobEncoder;
typedef GobDecoder = stdgo._internal.encoding.gob.Gob.GobDecoder;
abstract EncodeT(stdgo._internal.encoding.gob.Gob.EncodeT) from stdgo._internal.encoding.gob.Gob.EncodeT to stdgo._internal.encoding.gob.Gob.EncodeT {
    public var _x(get, set) : haxe.UInt64;
    function get__x():haxe.UInt64 return this._x;
    function set__x(v:haxe.UInt64):haxe.UInt64 {
        this._x = v;
        return v;
    }
    public var _b(get, set) : Array<std.UInt>;
    function get__b():Array<std.UInt> return [for (i in this._b) i];
    function set__b(v:Array<std.UInt>):Array<std.UInt> {
        this._b = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_x:haxe.UInt64, ?_b:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.EncodeT(_x, ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T0(stdgo._internal.encoding.gob.Gob.T0) from stdgo._internal.encoding.gob.Gob.T0 to stdgo._internal.encoding.gob.Gob.T0 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public var c(get, set) : StdTypes.Int;
    function get_c():StdTypes.Int return this.c;
    function set_c(v:StdTypes.Int):StdTypes.Int {
        this.c = v;
        return v;
    }
    public var d(get, set) : StdTypes.Int;
    function get_d():StdTypes.Int return this.d;
    function set_d(v:StdTypes.Int):StdTypes.Int {
        this.d = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T0(a, b, c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T1(stdgo._internal.encoding.gob.Gob.T1) from stdgo._internal.encoding.gob.Gob.T1 to stdgo._internal.encoding.gob.Gob.T1 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_b():stdgo.Pointer<StdTypes.Int> return this.b;
    function set_b(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public var d(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_d():stdgo.Pointer<StdTypes.Int> return this.d;
    function set_d(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.d = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:stdgo.Pointer<StdTypes.Int>, ?c:stdgo.Pointer<StdTypes.Int>, ?d:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob.T1(a, b, c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T2(stdgo._internal.encoding.gob.Gob.T2) from stdgo._internal.encoding.gob.Gob.T2 to stdgo._internal.encoding.gob.Gob.T2 {
    public var a(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_a():stdgo.Pointer<StdTypes.Int> return this.a;
    function set_a(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.a = v;
        return v;
    }
    public var b(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_b():stdgo.Pointer<StdTypes.Int> return this.b;
    function set_b(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public var d(get, set) : StdTypes.Int;
    function get_d():StdTypes.Int return this.d;
    function set_d(v:StdTypes.Int):StdTypes.Int {
        this.d = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<StdTypes.Int>, ?b:stdgo.Pointer<StdTypes.Int>, ?c:stdgo.Pointer<StdTypes.Int>, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T2(a, b, c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract RT0(stdgo._internal.encoding.gob.Gob.RT0) from stdgo._internal.encoding.gob.Gob.RT0 to stdgo._internal.encoding.gob.Gob.RT0 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob.RT0(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract RT1(stdgo._internal.encoding.gob.Gob.RT1) from stdgo._internal.encoding.gob.Gob.RT1 to stdgo._internal.encoding.gob.Gob.RT1 {
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var notSet(get, set) : String;
    function get_notSet():String return this.notSet;
    function set_notSet(v:String):String {
        this.notSet = v;
        return v;
    }
    public function new(?c:StdTypes.Float, ?b:String, ?a:StdTypes.Int, ?notSet:String) this = new stdgo._internal.encoding.gob.Gob.RT1(c, b, a, notSet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract IT0(stdgo._internal.encoding.gob.Gob.IT0) from stdgo._internal.encoding.gob.Gob.IT0 to stdgo._internal.encoding.gob.Gob.IT0 {
    public var a(get, set) : haxe.Int64;
    function get_a():haxe.Int64 return this.a;
    function set_a(v:haxe.Int64):haxe.Int64 {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public var ignore_d(get, set) : Array<StdTypes.Int>;
    function get_ignore_d():Array<StdTypes.Int> return [for (i in this.ignore_d) i];
    function set_ignore_d(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.ignore_d = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var ignore_e(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get_ignore_e():haxe.ds.Vector<StdTypes.Float> return haxe.ds.Vector.fromArrayCopy([for (i in this.ignore_e) i]);
    function set_ignore_e(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this.ignore_e = ([for (i in v) i] : stdgo.GoArray<stdgo.GoFloat64>);
        return v;
    }
    public var ignore_f(get, set) : Bool;
    function get_ignore_f():Bool return this.ignore_f;
    function set_ignore_f(v:Bool):Bool {
        this.ignore_f = v;
        return v;
    }
    public var ignore_g(get, set) : String;
    function get_ignore_g():String return this.ignore_g;
    function set_ignore_g(v:String):String {
        this.ignore_g = v;
        return v;
    }
    public var ignore_h(get, set) : Array<std.UInt>;
    function get_ignore_h():Array<std.UInt> return [for (i in this.ignore_h) i];
    function set_ignore_h(v:Array<std.UInt>):Array<std.UInt> {
        this.ignore_h = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var ignore_i(get, set) : stdgo._internal.encoding.gob.Gob.RT1;
    function get_ignore_i():stdgo._internal.encoding.gob.Gob.RT1 return this.ignore_i;
    function set_ignore_i(v:stdgo._internal.encoding.gob.Gob.RT1):stdgo._internal.encoding.gob.Gob.RT1 {
        this.ignore_i = v;
        return v;
    }
    public var ignore_m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_ignore_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.ignore_m;
    function set_ignore_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.ignore_m = v;
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = v;
        return v;
    }
    public function new(?a:haxe.Int64, ?b:String, ?ignore_d:Array<StdTypes.Int>, ?ignore_e:haxe.ds.Vector<StdTypes.Float>, ?ignore_f:Bool, ?ignore_g:String, ?ignore_h:Array<std.UInt>, ?ignore_i:stdgo._internal.encoding.gob.Gob.RT1, ?ignore_m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob.IT0(a, b, ([for (i in ignore_d) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in ignore_e) i] : stdgo.GoArray<stdgo.GoFloat64>), ignore_f, ignore_g, ([for (i in ignore_h) i] : stdgo.Slice<stdgo.GoUInt8>), ignore_i, ignore_m, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Indirect(stdgo._internal.encoding.gob.Gob.Indirect) from stdgo._internal.encoding.gob.Gob.Indirect to stdgo._internal.encoding.gob.Gob.Indirect {
    public var a(get, set) : stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>;
    function get_a():stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> return this.a;
    function set_a(v:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>):stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> {
        this.a = v;
        return v;
    }
    public var s(get, set) : stdgo.Pointer<Array<StdTypes.Int>>;
    function get_s():stdgo.Pointer<Array<StdTypes.Int>> return this.s;
    function set_s(v:stdgo.Pointer<Array<StdTypes.Int>>):stdgo.Pointer<Array<StdTypes.Int>> {
        this.s = v;
        return v;
    }
    public var m(get, set) : stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>;
    function get_m():stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> return this.m;
    function set_m(v:stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>):stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> {
        this.m = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>, ?s:stdgo.Pointer<Array<StdTypes.Int>>, ?m:stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>) this = new stdgo._internal.encoding.gob.Gob.Indirect(a, s, m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Direct(stdgo._internal.encoding.gob.Gob.Direct) from stdgo._internal.encoding.gob.Gob.Direct to stdgo._internal.encoding.gob.Gob.Direct {
    public var a(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_a():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.a = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.m = v;
        return v;
    }
    public function new(?a:haxe.ds.Vector<StdTypes.Int>, ?s:Array<StdTypes.Int>, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) this = new stdgo._internal.encoding.gob.Gob.Direct(([for (i in a) i] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) i] : stdgo.Slice<stdgo.GoInt>), m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Point(stdgo._internal.encoding.gob.Gob.Point) from stdgo._internal.encoding.gob.Gob.Point to stdgo._internal.encoding.gob.Gob.Point {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.Point(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract InterfaceItem(stdgo._internal.encoding.gob.Gob.InterfaceItem) from stdgo._internal.encoding.gob.Gob.InterfaceItem to stdgo._internal.encoding.gob.Gob.InterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public var sq1(get, set) : stdgo._internal.encoding.gob.Gob.Squarer;
    function get_sq1():stdgo._internal.encoding.gob.Gob.Squarer return this.sq1;
    function set_sq1(v:stdgo._internal.encoding.gob.Gob.Squarer):stdgo._internal.encoding.gob.Gob.Squarer {
        this.sq1 = v;
        return v;
    }
    public var sq2(get, set) : stdgo._internal.encoding.gob.Gob.Squarer;
    function get_sq2():stdgo._internal.encoding.gob.Gob.Squarer return this.sq2;
    function set_sq2(v:stdgo._internal.encoding.gob.Gob.Squarer):stdgo._internal.encoding.gob.Gob.Squarer {
        this.sq2 = v;
        return v;
    }
    public var sq3(get, set) : stdgo._internal.encoding.gob.Gob.Squarer;
    function get_sq3():stdgo._internal.encoding.gob.Gob.Squarer return this.sq3;
    function set_sq3(v:stdgo._internal.encoding.gob.Gob.Squarer):stdgo._internal.encoding.gob.Gob.Squarer {
        this.sq3 = v;
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = v;
        return v;
    }
    public var sq(get, set) : Array<stdgo._internal.encoding.gob.Gob.Squarer>;
    function get_sq():Array<stdgo._internal.encoding.gob.Gob.Squarer> return [for (i in this.sq) i];
    function set_sq(v:Array<stdgo._internal.encoding.gob.Gob.Squarer>):Array<stdgo._internal.encoding.gob.Gob.Squarer> {
        this.sq = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.Squarer>);
        return v;
    }
    public function new(?i:StdTypes.Int, ?sq1:stdgo._internal.encoding.gob.Gob.Squarer, ?sq2:stdgo._internal.encoding.gob.Gob.Squarer, ?sq3:stdgo._internal.encoding.gob.Gob.Squarer, ?f:StdTypes.Float, ?sq:Array<stdgo._internal.encoding.gob.Gob.Squarer>) this = new stdgo._internal.encoding.gob.Gob.InterfaceItem(i, sq1, sq2, sq3, f, ([for (i in sq) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.Squarer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract NoInterfaceItem(stdgo._internal.encoding.gob.Gob.NoInterfaceItem) from stdgo._internal.encoding.gob.Gob.NoInterfaceItem to stdgo._internal.encoding.gob.Gob.NoInterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = v;
        return v;
    }
    public function new(?i:StdTypes.Int, ?f:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob.NoInterfaceItem(i, f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract BasicInterfaceItem(stdgo._internal.encoding.gob.Gob.BasicInterfaceItem) from stdgo._internal.encoding.gob.Gob.BasicInterfaceItem to stdgo._internal.encoding.gob.Gob.BasicInterfaceItem {
    public var int_(get, set) : stdgo.AnyInterface;
    function get_int_():stdgo.AnyInterface return this.int_;
    function set_int_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int_ = v;
        return v;
    }
    public var int8(get, set) : stdgo.AnyInterface;
    function get_int8():stdgo.AnyInterface return this.int8;
    function set_int8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : stdgo.AnyInterface;
    function get_int16():stdgo.AnyInterface return this.int16;
    function set_int16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : stdgo.AnyInterface;
    function get_int32():stdgo.AnyInterface return this.int32;
    function set_int32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : stdgo.AnyInterface;
    function get_int64():stdgo.AnyInterface return this.int64;
    function set_int64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int64 = v;
        return v;
    }
    public var uint(get, set) : stdgo.AnyInterface;
    function get_uint():stdgo.AnyInterface return this.uint;
    function set_uint(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint = v;
        return v;
    }
    public var uint8(get, set) : stdgo.AnyInterface;
    function get_uint8():stdgo.AnyInterface return this.uint8;
    function set_uint8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : stdgo.AnyInterface;
    function get_uint16():stdgo.AnyInterface return this.uint16;
    function set_uint16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : stdgo.AnyInterface;
    function get_uint32():stdgo.AnyInterface return this.uint32;
    function set_uint32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : stdgo.AnyInterface;
    function get_uint64():stdgo.AnyInterface return this.uint64;
    function set_uint64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint64 = v;
        return v;
    }
    public var float32(get, set) : stdgo.AnyInterface;
    function get_float32():stdgo.AnyInterface return this.float32;
    function set_float32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : stdgo.AnyInterface;
    function get_float64():stdgo.AnyInterface return this.float64;
    function set_float64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float64 = v;
        return v;
    }
    public var complex64(get, set) : stdgo.AnyInterface;
    function get_complex64():stdgo.AnyInterface return this.complex64;
    function set_complex64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex64 = v;
        return v;
    }
    public var complex128(get, set) : stdgo.AnyInterface;
    function get_complex128():stdgo.AnyInterface return this.complex128;
    function set_complex128(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex128 = v;
        return v;
    }
    public var bool_(get, set) : stdgo.AnyInterface;
    function get_bool_():stdgo.AnyInterface return this.bool_;
    function set_bool_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bool_ = v;
        return v;
    }
    public var string(get, set) : stdgo.AnyInterface;
    function get_string():stdgo.AnyInterface return this.string;
    function set_string(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.string = v;
        return v;
    }
    public var bytes(get, set) : stdgo.AnyInterface;
    function get_bytes():stdgo.AnyInterface return this.bytes;
    function set_bytes(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bytes = v;
        return v;
    }
    public function new(?int_:stdgo.AnyInterface, ?int8:stdgo.AnyInterface, ?int16:stdgo.AnyInterface, ?int32:stdgo.AnyInterface, ?int64:stdgo.AnyInterface, ?uint:stdgo.AnyInterface, ?uint8:stdgo.AnyInterface, ?uint16:stdgo.AnyInterface, ?uint32:stdgo.AnyInterface, ?uint64:stdgo.AnyInterface, ?float32:stdgo.AnyInterface, ?float64:stdgo.AnyInterface, ?complex64:stdgo.AnyInterface, ?complex128:stdgo.AnyInterface, ?bool_:stdgo.AnyInterface, ?string:stdgo.AnyInterface, ?bytes:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.BasicInterfaceItem(
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
complex64,
complex128,
bool_,
string,
bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract PtrInterfaceItem(stdgo._internal.encoding.gob.Gob.PtrInterfaceItem) from stdgo._internal.encoding.gob.Gob.PtrInterfaceItem to stdgo._internal.encoding.gob.Gob.PtrInterfaceItem {
    public var str1(get, set) : stdgo.AnyInterface;
    function get_str1():stdgo.AnyInterface return this.str1;
    function set_str1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str1 = v;
        return v;
    }
    public var str2(get, set) : stdgo.AnyInterface;
    function get_str2():stdgo.AnyInterface return this.str2;
    function set_str2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str2 = v;
        return v;
    }
    public function new(?str1:stdgo.AnyInterface, ?str2:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.PtrInterfaceItem(str1, str2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract U(stdgo._internal.encoding.gob.Gob.U) from stdgo._internal.encoding.gob.Gob.U to stdgo._internal.encoding.gob.Gob.U {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public var _c(get, set) : StdTypes.Float;
    function get__c():StdTypes.Float return this._c;
    function set__c(v:StdTypes.Float):StdTypes.Float {
        this._c = v;
        return v;
    }
    public var d(get, set) : std.UInt;
    function get_d():std.UInt return this.d;
    function set_d(v:std.UInt):std.UInt {
        this.d = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?_c:StdTypes.Float, ?d:std.UInt) this = new stdgo._internal.encoding.gob.Gob.U(a, b, _c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract OnTheFly(stdgo._internal.encoding.gob.Gob.OnTheFly) from stdgo._internal.encoding.gob.Gob.OnTheFly to stdgo._internal.encoding.gob.Gob.OnTheFly {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.OnTheFly(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract DT(stdgo._internal.encoding.gob.Gob.DT) from stdgo._internal.encoding.gob.Gob.DT to stdgo._internal.encoding.gob.Gob.DT {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = v;
        return v;
    }
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = v;
        return v;
    }
    public var j(get, set) : stdgo.AnyInterface;
    function get_j():stdgo.AnyInterface return this.j;
    function set_j(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.j = v;
        return v;
    }
    public var i_nil(get, set) : stdgo.AnyInterface;
    function get_i_nil():stdgo.AnyInterface return this.i_nil;
    function set_i_nil(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i_nil = v;
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.m = v;
        return v;
    }
    public var t(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_t():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.t) i]);
    function set_t(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.t = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float, ?i:stdgo.AnyInterface, ?j:stdgo.AnyInterface, ?i_nil:stdgo.AnyInterface, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?t:haxe.ds.Vector<StdTypes.Int>, ?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob.DT(a, b, c, i, j, i_nil, m, ([for (i in t) i] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract LargeSliceByte(stdgo._internal.encoding.gob.Gob.LargeSliceByte) from stdgo._internal.encoding.gob.Gob.LargeSliceByte to stdgo._internal.encoding.gob.Gob.LargeSliceByte {
    public var s(get, set) : Array<std.UInt>;
    function get_s():Array<std.UInt> return [for (i in this.s) i];
    function set_s(v:Array<std.UInt>):Array<std.UInt> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?s:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.LargeSliceByte(([for (i in s) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract LargeSliceInt8(stdgo._internal.encoding.gob.Gob.LargeSliceInt8) from stdgo._internal.encoding.gob.Gob.LargeSliceInt8 to stdgo._internal.encoding.gob.Gob.LargeSliceInt8 {
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt8>);
        return v;
    }
    public function new(?s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob.LargeSliceInt8(([for (i in s) i] : stdgo.Slice<stdgo.GoInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract StringPair(stdgo._internal.encoding.gob.Gob.StringPair) from stdgo._internal.encoding.gob.Gob.StringPair to stdgo._internal.encoding.gob.Gob.StringPair {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.gob.Gob.StringPair(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract LargeSliceStruct(stdgo._internal.encoding.gob.Gob.LargeSliceStruct) from stdgo._internal.encoding.gob.Gob.LargeSliceStruct to stdgo._internal.encoding.gob.Gob.LargeSliceStruct {
    public var s(get, set) : Array<stdgo._internal.encoding.gob.Gob.StringPair>;
    function get_s():Array<stdgo._internal.encoding.gob.Gob.StringPair> return [for (i in this.s) i];
    function set_s(v:Array<stdgo._internal.encoding.gob.Gob.StringPair>):Array<stdgo._internal.encoding.gob.Gob.StringPair> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.StringPair>);
        return v;
    }
    public function new(?s:Array<stdgo._internal.encoding.gob.Gob.StringPair>) this = new stdgo._internal.encoding.gob.Gob.LargeSliceStruct(([for (i in s) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.StringPair>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract LargeSliceString(stdgo._internal.encoding.gob.Gob.LargeSliceString) from stdgo._internal.encoding.gob.Gob.LargeSliceString to stdgo._internal.encoding.gob.Gob.LargeSliceString {
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob.LargeSliceString(([for (i in s) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decoderState(stdgo._internal.encoding.gob.Gob.T_decoderState) from stdgo._internal.encoding.gob.Gob.T_decoderState to stdgo._internal.encoding.gob.Gob.T_decoderState {
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob.Decoder):stdgo._internal.encoding.gob.Gob.Decoder {
        this._dec = v;
        return v;
    }
    public var _b(get, set) : stdgo._internal.encoding.gob.Gob.T_decBuffer;
    function get__b():stdgo._internal.encoding.gob.Gob.T_decBuffer return this._b;
    function set__b(v:stdgo._internal.encoding.gob.Gob.T_decBuffer):stdgo._internal.encoding.gob.Gob.T_decBuffer {
        this._b = v;
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = v;
        return v;
    }
    public var _next(get, set) : stdgo._internal.encoding.gob.Gob.T_decoderState;
    function get__next():stdgo._internal.encoding.gob.Gob.T_decoderState return this._next;
    function set__next(v:stdgo._internal.encoding.gob.Gob.T_decoderState):stdgo._internal.encoding.gob.Gob.T_decoderState {
        this._next = v;
        return v;
    }
    public function new(?_dec:stdgo._internal.encoding.gob.Gob.Decoder, ?_b:stdgo._internal.encoding.gob.Gob.T_decBuffer, ?_fieldnum:StdTypes.Int, ?_next:stdgo._internal.encoding.gob.Gob.T_decoderState) this = new stdgo._internal.encoding.gob.Gob.T_decoderState(_dec, _b, _fieldnum, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decBuffer(stdgo._internal.encoding.gob.Gob.T_decBuffer) from stdgo._internal.encoding.gob.Gob.T_decBuffer to stdgo._internal.encoding.gob.Gob.T_decBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_decBuffer(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decInstr(stdgo._internal.encoding.gob.Gob.T_decInstr) from stdgo._internal.encoding.gob.Gob.T_decInstr to stdgo._internal.encoding.gob.Gob.T_decInstr {
    public var _op(get, set) : stdgo._internal.encoding.gob.Gob.T_decOp;
    function get__op():stdgo._internal.encoding.gob.Gob.T_decOp return this._op;
    function set__op(v:stdgo._internal.encoding.gob.Gob.T_decOp):stdgo._internal.encoding.gob.Gob.T_decOp {
        this._op = v;
        return v;
    }
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _ovfl(get, set) : stdgo.Error;
    function get__ovfl():stdgo.Error return this._ovfl;
    function set__ovfl(v:stdgo.Error):stdgo.Error {
        this._ovfl = v;
        return v;
    }
    public function new(?_op:stdgo._internal.encoding.gob.Gob.T_decOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_ovfl:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob.T_decInstr(_op, _field, ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>), _ovfl);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_decEngine(stdgo._internal.encoding.gob.Gob.T_decEngine) from stdgo._internal.encoding.gob.Gob.T_decEngine to stdgo._internal.encoding.gob.Gob.T_decEngine {
    public var _instr(get, set) : Array<stdgo._internal.encoding.gob.Gob.T_decInstr>;
    function get__instr():Array<stdgo._internal.encoding.gob.Gob.T_decInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<stdgo._internal.encoding.gob.Gob.T_decInstr>):Array<stdgo._internal.encoding.gob.Gob.T_decInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_decInstr>);
        return v;
    }
    public var _numInstr(get, set) : StdTypes.Int;
    function get__numInstr():StdTypes.Int return this._numInstr;
    function set__numInstr(v:StdTypes.Int):StdTypes.Int {
        this._numInstr = v;
        return v;
    }
    public function new(?_instr:Array<stdgo._internal.encoding.gob.Gob.T_decInstr>, ?_numInstr:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_decEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_decInstr>), _numInstr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_emptyStruct(stdgo._internal.encoding.gob.Gob.T_emptyStruct) from stdgo._internal.encoding.gob.Gob.T_emptyStruct to stdgo._internal.encoding.gob.Gob.T_emptyStruct {
    public function new() this = new stdgo._internal.encoding.gob.Gob.T_emptyStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Decoder(stdgo._internal.encoding.gob.Gob.Decoder) from stdgo._internal.encoding.gob.Gob.Decoder to stdgo._internal.encoding.gob.Gob.Decoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mutex():stdgo._internal.sync.Sync.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mutex = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.encoding.gob.Gob.T_decBuffer;
    function get__buf():stdgo._internal.encoding.gob.Gob.T_decBuffer return this._buf;
    function set__buf(v:stdgo._internal.encoding.gob.Gob.T_decBuffer):stdgo._internal.encoding.gob.Gob.T_decBuffer {
        this._buf = v;
        return v;
    }
    public var _wireType(get, set) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_wireType>>;
    function get__wireType():stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_wireType>> return this._wireType;
    function set__wireType(v:stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_wireType>>):stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_wireType>> {
        this._wireType = v;
        return v;
    }
    public var _decoderCache(get, set) : stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>>;
    function get__decoderCache():stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>> return this._decoderCache;
    function set__decoderCache(v:stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>>):stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>> {
        this._decoderCache = v;
        return v;
    }
    public var _ignorerCache(get, set) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>;
    function get__ignorerCache():stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>> return this._ignorerCache;
    function set__ignorerCache(v:stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>):stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>> {
        this._ignorerCache = v;
        return v;
    }
    public var _freeList(get, set) : stdgo._internal.encoding.gob.Gob.T_decoderState;
    function get__freeList():stdgo._internal.encoding.gob.Gob.T_decoderState return this._freeList;
    function set__freeList(v:stdgo._internal.encoding.gob.Gob.T_decoderState):stdgo._internal.encoding.gob.Gob.T_decoderState {
        this._freeList = v;
        return v;
    }
    public var _countBuf(get, set) : Array<std.UInt>;
    function get__countBuf():Array<std.UInt> return [for (i in this._countBuf) i];
    function set__countBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._countBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync.Mutex, ?_r:stdgo._internal.io.Io.Reader, ?_buf:stdgo._internal.encoding.gob.Gob.T_decBuffer, ?_wireType:stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_wireType>>, ?_decoderCache:stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>>, ?_ignorerCache:stdgo.GoMap<stdgo._internal.encoding.gob.Gob.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob.T_decEngine>>>, ?_freeList:stdgo._internal.encoding.gob.Gob.T_decoderState, ?_countBuf:Array<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob.Decoder(_mutex, _r, _buf, _wireType, _decoderCache, _ignorerCache, _freeList, ([for (i in _countBuf) i] : stdgo.Slice<stdgo.GoUInt8>), _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encoderState(stdgo._internal.encoding.gob.Gob.T_encoderState) from stdgo._internal.encoding.gob.Gob.T_encoderState to stdgo._internal.encoding.gob.Gob.T_encoderState {
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob.Encoder):stdgo._internal.encoding.gob.Gob.Encoder {
        this._enc = v;
        return v;
    }
    public var _b(get, set) : stdgo._internal.encoding.gob.Gob.T_encBuffer;
    function get__b():stdgo._internal.encoding.gob.Gob.T_encBuffer return this._b;
    function set__b(v:stdgo._internal.encoding.gob.Gob.T_encBuffer):stdgo._internal.encoding.gob.Gob.T_encBuffer {
        this._b = v;
        return v;
    }
    public var _sendZero(get, set) : Bool;
    function get__sendZero():Bool return this._sendZero;
    function set__sendZero(v:Bool):Bool {
        this._sendZero = v;
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _next(get, set) : stdgo._internal.encoding.gob.Gob.T_encoderState;
    function get__next():stdgo._internal.encoding.gob.Gob.T_encoderState return this._next;
    function set__next(v:stdgo._internal.encoding.gob.Gob.T_encoderState):stdgo._internal.encoding.gob.Gob.T_encoderState {
        this._next = v;
        return v;
    }
    public function new(?_enc:stdgo._internal.encoding.gob.Gob.Encoder, ?_b:stdgo._internal.encoding.gob.Gob.T_encBuffer, ?_sendZero:Bool, ?_fieldnum:StdTypes.Int, ?_buf:haxe.ds.Vector<std.UInt>, ?_next:stdgo._internal.encoding.gob.Gob.T_encoderState) this = new stdgo._internal.encoding.gob.Gob.T_encoderState(_enc, _b, _sendZero, _fieldnum, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encBuffer(stdgo._internal.encoding.gob.Gob.T_encBuffer) from stdgo._internal.encoding.gob.Gob.T_encBuffer to stdgo._internal.encoding.gob.Gob.T_encBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_scratch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.T_encBuffer(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _scratch) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encInstr(stdgo._internal.encoding.gob.Gob.T_encInstr) from stdgo._internal.encoding.gob.Gob.T_encInstr to stdgo._internal.encoding.gob.Gob.T_encInstr {
    public var _op(get, set) : stdgo._internal.encoding.gob.Gob.T_encOp;
    function get__op():stdgo._internal.encoding.gob.Gob.T_encOp return this._op;
    function set__op(v:stdgo._internal.encoding.gob.Gob.T_encOp):stdgo._internal.encoding.gob.Gob.T_encOp {
        this._op = v;
        return v;
    }
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = v;
        return v;
    }
    public function new(?_op:stdgo._internal.encoding.gob.Gob.T_encOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_indir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_encInstr(_op, _field, ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>), _indir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_encEngine(stdgo._internal.encoding.gob.Gob.T_encEngine) from stdgo._internal.encoding.gob.Gob.T_encEngine to stdgo._internal.encoding.gob.Gob.T_encEngine {
    public var _instr(get, set) : Array<stdgo._internal.encoding.gob.Gob.T_encInstr>;
    function get__instr():Array<stdgo._internal.encoding.gob.Gob.T_encInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<stdgo._internal.encoding.gob.Gob.T_encInstr>):Array<stdgo._internal.encoding.gob.Gob.T_encInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_encInstr>);
        return v;
    }
    public function new(?_instr:Array<stdgo._internal.encoding.gob.Gob.T_encInstr>) this = new stdgo._internal.encoding.gob.Gob.T_encEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_encInstr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Encoder(stdgo._internal.encoding.gob.Gob.Encoder) from stdgo._internal.encoding.gob.Gob.Encoder to stdgo._internal.encoding.gob.Gob.Encoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mutex():stdgo._internal.sync.Sync.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mutex = v;
        return v;
    }
    public var _w(get, set) : Array<stdgo._internal.io.Io.Writer>;
    function get__w():Array<stdgo._internal.io.Io.Writer> return [for (i in this._w) i];
    function set__w(v:Array<stdgo._internal.io.Io.Writer>):Array<stdgo._internal.io.Io.Writer> {
        this._w = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io.Writer>);
        return v;
    }
    public var _sent(get, set) : stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo._internal.encoding.gob.Gob.T_typeId>;
    function get__sent():stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo._internal.encoding.gob.Gob.T_typeId> return this._sent;
    function set__sent(v:stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo._internal.encoding.gob.Gob.T_typeId>):stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo._internal.encoding.gob.Gob.T_typeId> {
        this._sent = v;
        return v;
    }
    public var _countState(get, set) : stdgo._internal.encoding.gob.Gob.T_encoderState;
    function get__countState():stdgo._internal.encoding.gob.Gob.T_encoderState return this._countState;
    function set__countState(v:stdgo._internal.encoding.gob.Gob.T_encoderState):stdgo._internal.encoding.gob.Gob.T_encoderState {
        this._countState = v;
        return v;
    }
    public var _freeList(get, set) : stdgo._internal.encoding.gob.Gob.T_encoderState;
    function get__freeList():stdgo._internal.encoding.gob.Gob.T_encoderState return this._freeList;
    function set__freeList(v:stdgo._internal.encoding.gob.Gob.T_encoderState):stdgo._internal.encoding.gob.Gob.T_encoderState {
        this._freeList = v;
        return v;
    }
    public var _byteBuf(get, set) : stdgo._internal.encoding.gob.Gob.T_encBuffer;
    function get__byteBuf():stdgo._internal.encoding.gob.Gob.T_encBuffer return this._byteBuf;
    function set__byteBuf(v:stdgo._internal.encoding.gob.Gob.T_encBuffer):stdgo._internal.encoding.gob.Gob.T_encBuffer {
        this._byteBuf = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync.Mutex, ?_w:Array<stdgo._internal.io.Io.Writer>, ?_sent:stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo._internal.encoding.gob.Gob.T_typeId>, ?_countState:stdgo._internal.encoding.gob.Gob.T_encoderState, ?_freeList:stdgo._internal.encoding.gob.Gob.T_encoderState, ?_byteBuf:stdgo._internal.encoding.gob.Gob.T_encBuffer, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob.Encoder(_mutex, ([for (i in _w) i] : stdgo.Slice<stdgo._internal.io.Io.Writer>), _sent, _countState, _freeList, _byteBuf, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ET0(stdgo._internal.encoding.gob.Gob.ET0) from stdgo._internal.encoding.gob.Gob.ET0 to stdgo._internal.encoding.gob.Gob.ET0 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.encoding.gob.Gob.ET0(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ET2(stdgo._internal.encoding.gob.Gob.ET2) from stdgo._internal.encoding.gob.Gob.ET2 to stdgo._internal.encoding.gob.Gob.ET2 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob.ET2(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ET1(stdgo._internal.encoding.gob.Gob.ET1) from stdgo._internal.encoding.gob.Gob.ET1 to stdgo._internal.encoding.gob.Gob.ET1 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var et2(get, set) : stdgo._internal.encoding.gob.Gob.ET2;
    function get_et2():stdgo._internal.encoding.gob.Gob.ET2 return this.et2;
    function set_et2(v:stdgo._internal.encoding.gob.Gob.ET2):stdgo._internal.encoding.gob.Gob.ET2 {
        this.et2 = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.gob.Gob.ET1;
    function get_next():stdgo._internal.encoding.gob.Gob.ET1 return this.next;
    function set_next(v:stdgo._internal.encoding.gob.Gob.ET1):stdgo._internal.encoding.gob.Gob.ET1 {
        this.next = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:stdgo._internal.encoding.gob.Gob.ET2, ?next:stdgo._internal.encoding.gob.Gob.ET1) this = new stdgo._internal.encoding.gob.Gob.ET1(a, et2, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ET3(stdgo._internal.encoding.gob.Gob.ET3) from stdgo._internal.encoding.gob.Gob.ET3 to stdgo._internal.encoding.gob.Gob.ET3 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var et2(get, set) : stdgo._internal.encoding.gob.Gob.ET2;
    function get_et2():stdgo._internal.encoding.gob.Gob.ET2 return this.et2;
    function set_et2(v:stdgo._internal.encoding.gob.Gob.ET2):stdgo._internal.encoding.gob.Gob.ET2 {
        this.et2 = v;
        return v;
    }
    public var differentNext(get, set) : stdgo._internal.encoding.gob.Gob.ET1;
    function get_differentNext():stdgo._internal.encoding.gob.Gob.ET1 return this.differentNext;
    function set_differentNext(v:stdgo._internal.encoding.gob.Gob.ET1):stdgo._internal.encoding.gob.Gob.ET1 {
        this.differentNext = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:stdgo._internal.encoding.gob.Gob.ET2, ?differentNext:stdgo._internal.encoding.gob.Gob.ET1) this = new stdgo._internal.encoding.gob.Gob.ET3(a, et2, differentNext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ET4(stdgo._internal.encoding.gob.Gob.ET4) from stdgo._internal.encoding.gob.Gob.ET4 to stdgo._internal.encoding.gob.Gob.ET4 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var et2(get, set) : StdTypes.Float;
    function get_et2():StdTypes.Float return this.et2;
    function set_et2(v:StdTypes.Float):StdTypes.Float {
        this.et2 = v;
        return v;
    }
    public var next(get, set) : StdTypes.Int;
    function get_next():StdTypes.Int return this.next;
    function set_next(v:StdTypes.Int):StdTypes.Int {
        this.next = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:StdTypes.Float, ?next:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.ET4(a, et2, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract SingleTest(stdgo._internal.encoding.gob.Gob.SingleTest) from stdgo._internal.encoding.gob.Gob.SingleTest to stdgo._internal.encoding.gob.Gob.SingleTest {
    public var _in(get, set) : stdgo.AnyInterface;
    function get__in():stdgo.AnyInterface return this._in;
    function set__in(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._in = v;
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = v;
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:String) this = new stdgo._internal.encoding.gob.Gob.SingleTest(_in, _out, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_interfaceIndirectTestT(stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT) from stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT to stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT {
    public function new() this = new stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Struct0(stdgo._internal.encoding.gob.Gob.Struct0) from stdgo._internal.encoding.gob.Gob.Struct0 to stdgo._internal.encoding.gob.Gob.Struct0 {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = v;
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.Struct0(i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract NewType0(stdgo._internal.encoding.gob.Gob.NewType0) from stdgo._internal.encoding.gob.Gob.NewType0 to stdgo._internal.encoding.gob.Gob.NewType0 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.gob.Gob.NewType0(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_ignoreTest(stdgo._internal.encoding.gob.Gob.T_ignoreTest) from stdgo._internal.encoding.gob.Gob.T_ignoreTest to stdgo._internal.encoding.gob.Gob.T_ignoreTest {
    public var _in(get, set) : stdgo.AnyInterface;
    function get__in():stdgo.AnyInterface return this._in;
    function set__in(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._in = v;
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = v;
        return v;
    }
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.T_ignoreTest(_in, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug0Outer(stdgo._internal.encoding.gob.Gob.Bug0Outer) from stdgo._internal.encoding.gob.Gob.Bug0Outer to stdgo._internal.encoding.gob.Gob.Bug0Outer {
    public var bug0Field(get, set) : stdgo.AnyInterface;
    function get_bug0Field():stdgo.AnyInterface return this.bug0Field;
    function set_bug0Field(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bug0Field = v;
        return v;
    }
    public function new(?bug0Field:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.Bug0Outer(bug0Field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug0Inner(stdgo._internal.encoding.gob.Gob.Bug0Inner) from stdgo._internal.encoding.gob.Gob.Bug0Inner to stdgo._internal.encoding.gob.Gob.Bug0Inner {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.Bug0Inner(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug1Elem(stdgo._internal.encoding.gob.Gob.Bug1Elem) from stdgo._internal.encoding.gob.Gob.Bug1Elem to stdgo._internal.encoding.gob.Gob.Bug1Elem {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var id(get, set) : StdTypes.Int;
    function get_id():StdTypes.Int return this.id;
    function set_id(v:StdTypes.Int):StdTypes.Int {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.Bug1Elem(name, id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug2(stdgo._internal.encoding.gob.Gob.Bug2) from stdgo._internal.encoding.gob.Gob.Bug2 to stdgo._internal.encoding.gob.Gob.Bug2 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var c(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_c():stdgo.Chan<stdgo.GoInt> return this.c;
    function set_c(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.c = v;
        return v;
    }
    public var cp(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_cp():stdgo.Chan<stdgo.GoInt> return this.cp;
    function set_cp(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.cp = v;
        return v;
    }
    public var f(get, set) : () -> Void;
    function get_f():() -> Void return () -> this.f();
    function set_f(v:() -> Void):() -> Void {
        this.f = v;
        return v;
    }
    public var fpp(get, set) : () -> Void;
    function get_fpp():() -> Void return this.fpp;
    function set_fpp(v:() -> Void):() -> Void {
        this.fpp = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?c:stdgo.Chan<stdgo.GoInt>, ?cp:stdgo.Chan<stdgo.GoInt>, ?f:() -> Void, ?fpp:() -> Void) this = new stdgo._internal.encoding.gob.Gob.Bug2(a, c, cp, f, fpp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug3(stdgo._internal.encoding.gob.Gob.Bug3) from stdgo._internal.encoding.gob.Gob.Bug3 to stdgo._internal.encoding.gob.Gob.Bug3 {
    public var num(get, set) : StdTypes.Int;
    function get_num():StdTypes.Int return this.num;
    function set_num(v:StdTypes.Int):StdTypes.Int {
        this.num = v;
        return v;
    }
    public var children(get, set) : Array<stdgo._internal.encoding.gob.Gob.Bug3>;
    function get_children():Array<stdgo._internal.encoding.gob.Gob.Bug3> return [for (i in this.children) i];
    function set_children(v:Array<stdgo._internal.encoding.gob.Gob.Bug3>):Array<stdgo._internal.encoding.gob.Gob.Bug3> {
        this.children = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob.Bug3>>);
        return v;
    }
    public function new(?num:StdTypes.Int, ?children:Array<stdgo._internal.encoding.gob.Gob.Bug3>) this = new stdgo._internal.encoding.gob.Gob.Bug3(num, ([for (i in children) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob.Bug3>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug4Public(stdgo._internal.encoding.gob.Gob.Bug4Public) from stdgo._internal.encoding.gob.Gob.Bug4Public to stdgo._internal.encoding.gob.Gob.Bug4Public {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var secret(get, set) : stdgo._internal.encoding.gob.Gob.Bug4Secret;
    function get_secret():stdgo._internal.encoding.gob.Gob.Bug4Secret return this.secret;
    function set_secret(v:stdgo._internal.encoding.gob.Gob.Bug4Secret):stdgo._internal.encoding.gob.Gob.Bug4Secret {
        this.secret = v;
        return v;
    }
    public function new(?name:String, ?secret:stdgo._internal.encoding.gob.Gob.Bug4Secret) this = new stdgo._internal.encoding.gob.Gob.Bug4Public(name, secret);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bug4Secret(stdgo._internal.encoding.gob.Gob.Bug4Secret) from stdgo._internal.encoding.gob.Gob.Bug4Secret to stdgo._internal.encoding.gob.Gob.Bug4Secret {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = v;
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.Bug4Secret(_a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Z(stdgo._internal.encoding.gob.Gob.Z) from stdgo._internal.encoding.gob.Gob.Z to stdgo._internal.encoding.gob.Gob.Z {
    public function new() this = new stdgo._internal.encoding.gob.Gob.Z();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_badDataTest(stdgo._internal.encoding.gob.Gob.T_badDataTest) from stdgo._internal.encoding.gob.Gob.T_badDataTest to stdgo._internal.encoding.gob.Gob.T_badDataTest {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _error(get, set) : String;
    function get__error():String return this._error;
    function set__error(v:String):String {
        this._error = v;
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = v;
        return v;
    }
    public function new(?_input:String, ?_error:String, ?_data:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.T_badDataTest(_input, _error, _data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_gobError(stdgo._internal.encoding.gob.Gob.T_gobError) from stdgo._internal.encoding.gob.Gob.T_gobError to stdgo._internal.encoding.gob.Gob.T_gobError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob.T_gobError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ByteStruct(stdgo._internal.encoding.gob.Gob.ByteStruct) from stdgo._internal.encoding.gob.Gob.ByteStruct to stdgo._internal.encoding.gob.Gob.ByteStruct {
    public var _a(get, set) : std.UInt;
    function get__a():std.UInt return this._a;
    function set__a(v:std.UInt):std.UInt {
        this._a = v;
        return v;
    }
    public function new(?_a:std.UInt) this = new stdgo._internal.encoding.gob.Gob.ByteStruct(_a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract StringStruct(stdgo._internal.encoding.gob.Gob.StringStruct) from stdgo._internal.encoding.gob.Gob.StringStruct to stdgo._internal.encoding.gob.Gob.StringStruct {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public function new(?_s:String) this = new stdgo._internal.encoding.gob.Gob.StringStruct(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ArrayStruct(stdgo._internal.encoding.gob.Gob.ArrayStruct) from stdgo._internal.encoding.gob.Gob.ArrayStruct to stdgo._internal.encoding.gob.Gob.ArrayStruct {
    public var _a(get, set) : haxe.ds.Vector<std.UInt>;
    function get__a():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._a) i]);
    function set__a(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._a = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_a:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.ArrayStruct(([for (i in _a) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest0(stdgo._internal.encoding.gob.Gob.GobTest0) from stdgo._internal.encoding.gob.Gob.GobTest0 to stdgo._internal.encoding.gob.Gob.GobTest0 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : stdgo._internal.encoding.gob.Gob.ByteStruct;
    function get_g():stdgo._internal.encoding.gob.Gob.ByteStruct return this.g;
    function set_g(v:stdgo._internal.encoding.gob.Gob.ByteStruct):stdgo._internal.encoding.gob.Gob.ByteStruct {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo._internal.encoding.gob.Gob.ByteStruct) this = new stdgo._internal.encoding.gob.Gob.GobTest0(x, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest1(stdgo._internal.encoding.gob.Gob.GobTest1) from stdgo._internal.encoding.gob.Gob.GobTest1 to stdgo._internal.encoding.gob.Gob.GobTest1 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : stdgo._internal.encoding.gob.Gob.StringStruct;
    function get_g():stdgo._internal.encoding.gob.Gob.StringStruct return this.g;
    function set_g(v:stdgo._internal.encoding.gob.Gob.StringStruct):stdgo._internal.encoding.gob.Gob.StringStruct {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo._internal.encoding.gob.Gob.StringStruct) this = new stdgo._internal.encoding.gob.Gob.GobTest1(x, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest2(stdgo._internal.encoding.gob.Gob.GobTest2) from stdgo._internal.encoding.gob.Gob.GobTest2 to stdgo._internal.encoding.gob.Gob.GobTest2 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : String;
    function get_g():String return this.g;
    function set_g(v:String):String {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:String) this = new stdgo._internal.encoding.gob.Gob.GobTest2(x, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest3(stdgo._internal.encoding.gob.Gob.GobTest3) from stdgo._internal.encoding.gob.Gob.GobTest3 to stdgo._internal.encoding.gob.Gob.GobTest3 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.Gobber>;
    function get_g():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.Gobber> return this.g;
    function set_g(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.Gobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.Gobber> {
        this.g = v;
        return v;
    }
    public var b(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryGobber>;
    function get_b():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryGobber> return this.b;
    function set_b(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryGobber> {
        this.b = v;
        return v;
    }
    public var t(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextGobber>;
    function get_t():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextGobber> return this.t;
    function set_t(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextGobber> {
        this.t = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.Gobber>, ?b:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryGobber>, ?t:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextGobber>) this = new stdgo._internal.encoding.gob.Gob.GobTest3(x, g, b, t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest4(stdgo._internal.encoding.gob.Gob.GobTest4) from stdgo._internal.encoding.gob.Gob.GobTest4 to stdgo._internal.encoding.gob.Gob.GobTest4 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var v(get, set) : stdgo._internal.encoding.gob.Gob.ValueGobber;
    function get_v():stdgo._internal.encoding.gob.Gob.ValueGobber return this.v;
    function set_v(v:stdgo._internal.encoding.gob.Gob.ValueGobber):stdgo._internal.encoding.gob.Gob.ValueGobber {
        this.v = v;
        return v;
    }
    public var bv(get, set) : stdgo._internal.encoding.gob.Gob.BinaryValueGobber;
    function get_bv():stdgo._internal.encoding.gob.Gob.BinaryValueGobber return this.bv;
    function set_bv(v:stdgo._internal.encoding.gob.Gob.BinaryValueGobber):stdgo._internal.encoding.gob.Gob.BinaryValueGobber {
        this.bv = v;
        return v;
    }
    public var tv(get, set) : stdgo._internal.encoding.gob.Gob.TextValueGobber;
    function get_tv():stdgo._internal.encoding.gob.Gob.TextValueGobber return this.tv;
    function set_tv(v:stdgo._internal.encoding.gob.Gob.TextValueGobber):stdgo._internal.encoding.gob.Gob.TextValueGobber {
        this.tv = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo._internal.encoding.gob.Gob.ValueGobber, ?bv:stdgo._internal.encoding.gob.Gob.BinaryValueGobber, ?tv:stdgo._internal.encoding.gob.Gob.TextValueGobber) this = new stdgo._internal.encoding.gob.Gob.GobTest4(x, v, bv, tv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest5(stdgo._internal.encoding.gob.Gob.GobTest5) from stdgo._internal.encoding.gob.Gob.GobTest5 to stdgo._internal.encoding.gob.Gob.GobTest5 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var v(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>;
    function get_v():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> return this.v;
    function set_v(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> {
        this.v = v;
        return v;
    }
    public var bv(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>;
    function get_bv():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> return this.bv;
    function set_bv(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> {
        this.bv = v;
        return v;
    }
    public var tv(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>;
    function get_tv():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> return this.tv;
    function set_tv(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> {
        this.tv = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>, ?bv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>, ?tv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob.GobTest5(x, v, bv, tv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest6(stdgo._internal.encoding.gob.Gob.GobTest6) from stdgo._internal.encoding.gob.Gob.GobTest6 to stdgo._internal.encoding.gob.Gob.GobTest6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var v(get, set) : stdgo._internal.encoding.gob.Gob.ValueGobber;
    function get_v():stdgo._internal.encoding.gob.Gob.ValueGobber return this.v;
    function set_v(v:stdgo._internal.encoding.gob.Gob.ValueGobber):stdgo._internal.encoding.gob.Gob.ValueGobber {
        this.v = v;
        return v;
    }
    public var w(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>;
    function get_w():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> return this.w;
    function set_w(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> {
        this.w = v;
        return v;
    }
    public var bv(get, set) : stdgo._internal.encoding.gob.Gob.BinaryValueGobber;
    function get_bv():stdgo._internal.encoding.gob.Gob.BinaryValueGobber return this.bv;
    function set_bv(v:stdgo._internal.encoding.gob.Gob.BinaryValueGobber):stdgo._internal.encoding.gob.Gob.BinaryValueGobber {
        this.bv = v;
        return v;
    }
    public var bw(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>;
    function get_bw():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> return this.bw;
    function set_bw(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> {
        this.bw = v;
        return v;
    }
    public var tv(get, set) : stdgo._internal.encoding.gob.Gob.TextValueGobber;
    function get_tv():stdgo._internal.encoding.gob.Gob.TextValueGobber return this.tv;
    function set_tv(v:stdgo._internal.encoding.gob.Gob.TextValueGobber):stdgo._internal.encoding.gob.Gob.TextValueGobber {
        this.tv = v;
        return v;
    }
    public var tw(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>;
    function get_tw():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> return this.tw;
    function set_tw(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> {
        this.tw = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo._internal.encoding.gob.Gob.ValueGobber, ?w:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>, ?bv:stdgo._internal.encoding.gob.Gob.BinaryValueGobber, ?bw:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>, ?tv:stdgo._internal.encoding.gob.Gob.TextValueGobber, ?tw:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob.GobTest6(x, v, w, bv, bw, tv, tw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTest7(stdgo._internal.encoding.gob.Gob.GobTest7) from stdgo._internal.encoding.gob.Gob.GobTest7 to stdgo._internal.encoding.gob.Gob.GobTest7 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var v(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>;
    function get_v():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> return this.v;
    function set_v(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber> {
        this.v = v;
        return v;
    }
    public var w(get, set) : stdgo._internal.encoding.gob.Gob.ValueGobber;
    function get_w():stdgo._internal.encoding.gob.Gob.ValueGobber return this.w;
    function set_w(v:stdgo._internal.encoding.gob.Gob.ValueGobber):stdgo._internal.encoding.gob.Gob.ValueGobber {
        this.w = v;
        return v;
    }
    public var bv(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>;
    function get_bv():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> return this.bv;
    function set_bv(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber> {
        this.bv = v;
        return v;
    }
    public var bw(get, set) : stdgo._internal.encoding.gob.Gob.BinaryValueGobber;
    function get_bw():stdgo._internal.encoding.gob.Gob.BinaryValueGobber return this.bw;
    function set_bw(v:stdgo._internal.encoding.gob.Gob.BinaryValueGobber):stdgo._internal.encoding.gob.Gob.BinaryValueGobber {
        this.bw = v;
        return v;
    }
    public var tv(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>;
    function get_tv():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> return this.tv;
    function set_tv(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber> {
        this.tv = v;
        return v;
    }
    public var tw(get, set) : stdgo._internal.encoding.gob.Gob.TextValueGobber;
    function get_tw():stdgo._internal.encoding.gob.Gob.TextValueGobber return this.tw;
    function set_tw(v:stdgo._internal.encoding.gob.Gob.TextValueGobber):stdgo._internal.encoding.gob.Gob.TextValueGobber {
        this.tw = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ValueGobber>, ?w:stdgo._internal.encoding.gob.Gob.ValueGobber, ?bv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.BinaryValueGobber>, ?bw:stdgo._internal.encoding.gob.Gob.BinaryValueGobber, ?tv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.TextValueGobber>, ?tw:stdgo._internal.encoding.gob.Gob.TextValueGobber) this = new stdgo._internal.encoding.gob.Gob.GobTest7(x, v, w, bv, bw, tv, tw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTestIgnoreEncoder(stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder) from stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder to stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTestValueEncDec(stdgo._internal.encoding.gob.Gob.GobTestValueEncDec) from stdgo._internal.encoding.gob.Gob.GobTestValueEncDec to stdgo._internal.encoding.gob.Gob.GobTestValueEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : stdgo._internal.encoding.gob.Gob.StringStruct;
    function get_g():stdgo._internal.encoding.gob.Gob.StringStruct return this.g;
    function set_g(v:stdgo._internal.encoding.gob.Gob.StringStruct):stdgo._internal.encoding.gob.Gob.StringStruct {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo._internal.encoding.gob.Gob.StringStruct) this = new stdgo._internal.encoding.gob.Gob.GobTestValueEncDec(x, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTestIndirectEncDec(stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec) from stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec to stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var g(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.StringStruct>;
    function get_g():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.StringStruct> return this.g;
    function set_g(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.StringStruct>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.StringStruct> {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.StringStruct>) this = new stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec(x, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTestArrayEncDec(stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec) from stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec to stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var a(get, set) : stdgo._internal.encoding.gob.Gob.ArrayStruct;
    function get_a():stdgo._internal.encoding.gob.Gob.ArrayStruct return this.a;
    function set_a(v:stdgo._internal.encoding.gob.Gob.ArrayStruct):stdgo._internal.encoding.gob.Gob.ArrayStruct {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:stdgo._internal.encoding.gob.Gob.ArrayStruct) this = new stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec(x, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract GobTestIndirectArrayEncDec(stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec) from stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec to stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var a(get, set) : stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ArrayStruct>;
    function get_a():stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ArrayStruct> return this.a;
    function set_a(v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ArrayStruct>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ArrayStruct> {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:stdgo.Pointer<stdgo._internal.encoding.gob.Gob.ArrayStruct>) this = new stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec(x, a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_gobDecoderBug0(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0) from stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0 to stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0 {
    public var _foo(get, set) : String;
    function get__foo():String return this._foo;
    function set__foo(v:String):String {
        this._foo = v;
        return v;
    }
    public var _bar(get, set) : String;
    function get__bar():String return this._bar;
    function set__bar(v:String):String {
        this._bar = v;
        return v;
    }
    public function new(?_foo:String, ?_bar:String) this = new stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0(_foo, _bar);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_isZeroBug(stdgo._internal.encoding.gob.Gob.T_isZeroBug) from stdgo._internal.encoding.gob.Gob.T_isZeroBug to stdgo._internal.encoding.gob.Gob.T_isZeroBug {
    public var t(get, set) : stdgo._internal.time.Time.Time;
    function get_t():stdgo._internal.time.Time.Time return this.t;
    function set_t(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this.t = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public var a(get, set) : stdgo._internal.encoding.gob.Gob.T_isZeroBugArray;
    function get_a():stdgo._internal.encoding.gob.Gob.T_isZeroBugArray return this.a;
    function set_a(v:stdgo._internal.encoding.gob.Gob.T_isZeroBugArray):stdgo._internal.encoding.gob.Gob.T_isZeroBugArray {
        this.a = v;
        return v;
    }
    public var f(get, set) : stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface;
    function get_f():stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface return this.f;
    function set_f(v:stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface):stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface {
        this.f = v;
        return v;
    }
    public function new(?t:stdgo._internal.time.Time.Time, ?s:String, ?i:StdTypes.Int, ?a:stdgo._internal.encoding.gob.Gob.T_isZeroBugArray, ?f:stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface) this = new stdgo._internal.encoding.gob.Gob.T_isZeroBug(t, s, i, a, f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_isZeroBugInterface(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface) from stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface to stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = v;
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface(i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bench(stdgo._internal.encoding.gob.Gob.Bench) from stdgo._internal.encoding.gob.Gob.Bench to stdgo._internal.encoding.gob.Gob.Bench {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = v;
        return v;
    }
    public var c(get, set) : String;
    function get_c():String return this.c;
    function set_c(v:String):String {
        this.c = v;
        return v;
    }
    public var d(get, set) : Array<std.UInt>;
    function get_d():Array<std.UInt> return [for (i in this.d) i];
    function set_d(v:Array<std.UInt>):Array<std.UInt> {
        this.d = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Float, ?c:String, ?d:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.Bench(a, b, c, ([for (i in d) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_benchmarkBuf(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf) from stdgo._internal.encoding.gob.Gob.T_benchmarkBuf to stdgo._internal.encoding.gob.Gob.T_benchmarkBuf {
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_offset:StdTypes.Int, ?_data:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.T_benchmarkBuf(_offset, ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_userTypeInfo(stdgo._internal.encoding.gob.Gob.T_userTypeInfo) from stdgo._internal.encoding.gob.Gob.T_userTypeInfo to stdgo._internal.encoding.gob.Gob.T_userTypeInfo {
    public var _user(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get__user():stdgo._internal.reflect.Reflect.Type_ return this._user;
    function set__user(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this._user = v;
        return v;
    }
    public var _base(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get__base():stdgo._internal.reflect.Reflect.Type_ return this._base;
    function set__base(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this._base = v;
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = v;
        return v;
    }
    public var _externalEnc(get, set) : StdTypes.Int;
    function get__externalEnc():StdTypes.Int return this._externalEnc;
    function set__externalEnc(v:StdTypes.Int):StdTypes.Int {
        this._externalEnc = v;
        return v;
    }
    public var _externalDec(get, set) : StdTypes.Int;
    function get__externalDec():StdTypes.Int return this._externalDec;
    function set__externalDec(v:StdTypes.Int):StdTypes.Int {
        this._externalDec = v;
        return v;
    }
    public var _encIndir(get, set) : StdTypes.Int;
    function get__encIndir():StdTypes.Int return this._encIndir;
    function set__encIndir(v:StdTypes.Int):StdTypes.Int {
        this._encIndir = v;
        return v;
    }
    public var _decIndir(get, set) : StdTypes.Int;
    function get__decIndir():StdTypes.Int return this._decIndir;
    function set__decIndir(v:StdTypes.Int):StdTypes.Int {
        this._decIndir = v;
        return v;
    }
    public function new(?_user:stdgo._internal.reflect.Reflect.Type_, ?_base:stdgo._internal.reflect.Reflect.Type_, ?_indir:StdTypes.Int, ?_externalEnc:StdTypes.Int, ?_externalDec:StdTypes.Int, ?_encIndir:StdTypes.Int, ?_decIndir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_userTypeInfo(_user, _base, _indir, _externalEnc, _externalDec, _encIndir, _decIndir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract CommonType(stdgo._internal.encoding.gob.Gob.CommonType) from stdgo._internal.encoding.gob.Gob.CommonType to stdgo._internal.encoding.gob.Gob.CommonType {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var id(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_id():stdgo._internal.encoding.gob.Gob.T_typeId return this.id;
    function set_id(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:stdgo._internal.encoding.gob.Gob.T_typeId) this = new stdgo._internal.encoding.gob.Gob.CommonType(name, id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_arrayType(stdgo._internal.encoding.gob.Gob.T_arrayType) from stdgo._internal.encoding.gob.Gob.T_arrayType to stdgo._internal.encoding.gob.Gob.T_arrayType {
    public var commonType(get, set) : stdgo._internal.encoding.gob.Gob.CommonType;
    function get_commonType():stdgo._internal.encoding.gob.Gob.CommonType return this.commonType;
    function set_commonType(v:stdgo._internal.encoding.gob.Gob.CommonType):stdgo._internal.encoding.gob.Gob.CommonType {
        this.commonType = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_elem():stdgo._internal.encoding.gob.Gob.T_typeId return this.elem;
    function set_elem(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.elem = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = v;
        return v;
    }
    public function new(?commonType:stdgo._internal.encoding.gob.Gob.CommonType, ?elem:stdgo._internal.encoding.gob.Gob.T_typeId, ?len:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_arrayType(commonType, elem, len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_gobEncoderType(stdgo._internal.encoding.gob.Gob.T_gobEncoderType) from stdgo._internal.encoding.gob.Gob.T_gobEncoderType to stdgo._internal.encoding.gob.Gob.T_gobEncoderType {
    public var commonType(get, set) : stdgo._internal.encoding.gob.Gob.CommonType;
    function get_commonType():stdgo._internal.encoding.gob.Gob.CommonType return this.commonType;
    function set_commonType(v:stdgo._internal.encoding.gob.Gob.CommonType):stdgo._internal.encoding.gob.Gob.CommonType {
        this.commonType = v;
        return v;
    }
    public function new(?commonType:stdgo._internal.encoding.gob.Gob.CommonType) this = new stdgo._internal.encoding.gob.Gob.T_gobEncoderType(commonType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_mapType(stdgo._internal.encoding.gob.Gob.T_mapType) from stdgo._internal.encoding.gob.Gob.T_mapType to stdgo._internal.encoding.gob.Gob.T_mapType {
    public var commonType(get, set) : stdgo._internal.encoding.gob.Gob.CommonType;
    function get_commonType():stdgo._internal.encoding.gob.Gob.CommonType return this.commonType;
    function set_commonType(v:stdgo._internal.encoding.gob.Gob.CommonType):stdgo._internal.encoding.gob.Gob.CommonType {
        this.commonType = v;
        return v;
    }
    public var key(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_key():stdgo._internal.encoding.gob.Gob.T_typeId return this.key;
    function set_key(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.key = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_elem():stdgo._internal.encoding.gob.Gob.T_typeId return this.elem;
    function set_elem(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:stdgo._internal.encoding.gob.Gob.CommonType, ?key:stdgo._internal.encoding.gob.Gob.T_typeId, ?elem:stdgo._internal.encoding.gob.Gob.T_typeId) this = new stdgo._internal.encoding.gob.Gob.T_mapType(commonType, key, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_sliceType(stdgo._internal.encoding.gob.Gob.T_sliceType) from stdgo._internal.encoding.gob.Gob.T_sliceType to stdgo._internal.encoding.gob.Gob.T_sliceType {
    public var commonType(get, set) : stdgo._internal.encoding.gob.Gob.CommonType;
    function get_commonType():stdgo._internal.encoding.gob.Gob.CommonType return this.commonType;
    function set_commonType(v:stdgo._internal.encoding.gob.Gob.CommonType):stdgo._internal.encoding.gob.Gob.CommonType {
        this.commonType = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_elem():stdgo._internal.encoding.gob.Gob.T_typeId return this.elem;
    function set_elem(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:stdgo._internal.encoding.gob.Gob.CommonType, ?elem:stdgo._internal.encoding.gob.Gob.T_typeId) this = new stdgo._internal.encoding.gob.Gob.T_sliceType(commonType, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fieldType(stdgo._internal.encoding.gob.Gob.T_fieldType) from stdgo._internal.encoding.gob.Gob.T_fieldType to stdgo._internal.encoding.gob.Gob.T_fieldType {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var id(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get_id():stdgo._internal.encoding.gob.Gob.T_typeId return this.id;
    function set_id(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:stdgo._internal.encoding.gob.Gob.T_typeId) this = new stdgo._internal.encoding.gob.Gob.T_fieldType(name, id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_structType(stdgo._internal.encoding.gob.Gob.T_structType) from stdgo._internal.encoding.gob.Gob.T_structType to stdgo._internal.encoding.gob.Gob.T_structType {
    public var commonType(get, set) : stdgo._internal.encoding.gob.Gob.CommonType;
    function get_commonType():stdgo._internal.encoding.gob.Gob.CommonType return this.commonType;
    function set_commonType(v:stdgo._internal.encoding.gob.Gob.CommonType):stdgo._internal.encoding.gob.Gob.CommonType {
        this.commonType = v;
        return v;
    }
    public var field(get, set) : Array<stdgo._internal.encoding.gob.Gob.T_fieldType>;
    function get_field():Array<stdgo._internal.encoding.gob.Gob.T_fieldType> return [for (i in this.field) i];
    function set_field(v:Array<stdgo._internal.encoding.gob.Gob.T_fieldType>):Array<stdgo._internal.encoding.gob.Gob.T_fieldType> {
        this.field = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_fieldType>);
        return v;
    }
    public function new(?commonType:stdgo._internal.encoding.gob.Gob.CommonType, ?field:Array<stdgo._internal.encoding.gob.Gob.T_fieldType>) this = new stdgo._internal.encoding.gob.Gob.T_structType(commonType, ([for (i in field) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob.T_fieldType>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_wireType(stdgo._internal.encoding.gob.Gob.T_wireType) from stdgo._internal.encoding.gob.Gob.T_wireType to stdgo._internal.encoding.gob.Gob.T_wireType {
    public var arrayT(get, set) : stdgo._internal.encoding.gob.Gob.T_arrayType;
    function get_arrayT():stdgo._internal.encoding.gob.Gob.T_arrayType return this.arrayT;
    function set_arrayT(v:stdgo._internal.encoding.gob.Gob.T_arrayType):stdgo._internal.encoding.gob.Gob.T_arrayType {
        this.arrayT = v;
        return v;
    }
    public var sliceT(get, set) : stdgo._internal.encoding.gob.Gob.T_sliceType;
    function get_sliceT():stdgo._internal.encoding.gob.Gob.T_sliceType return this.sliceT;
    function set_sliceT(v:stdgo._internal.encoding.gob.Gob.T_sliceType):stdgo._internal.encoding.gob.Gob.T_sliceType {
        this.sliceT = v;
        return v;
    }
    public var structT(get, set) : stdgo._internal.encoding.gob.Gob.T_structType;
    function get_structT():stdgo._internal.encoding.gob.Gob.T_structType return this.structT;
    function set_structT(v:stdgo._internal.encoding.gob.Gob.T_structType):stdgo._internal.encoding.gob.Gob.T_structType {
        this.structT = v;
        return v;
    }
    public var mapT(get, set) : stdgo._internal.encoding.gob.Gob.T_mapType;
    function get_mapT():stdgo._internal.encoding.gob.Gob.T_mapType return this.mapT;
    function set_mapT(v:stdgo._internal.encoding.gob.Gob.T_mapType):stdgo._internal.encoding.gob.Gob.T_mapType {
        this.mapT = v;
        return v;
    }
    public var gobEncoderT(get, set) : stdgo._internal.encoding.gob.Gob.T_gobEncoderType;
    function get_gobEncoderT():stdgo._internal.encoding.gob.Gob.T_gobEncoderType return this.gobEncoderT;
    function set_gobEncoderT(v:stdgo._internal.encoding.gob.Gob.T_gobEncoderType):stdgo._internal.encoding.gob.Gob.T_gobEncoderType {
        this.gobEncoderT = v;
        return v;
    }
    public var binaryMarshalerT(get, set) : stdgo._internal.encoding.gob.Gob.T_gobEncoderType;
    function get_binaryMarshalerT():stdgo._internal.encoding.gob.Gob.T_gobEncoderType return this.binaryMarshalerT;
    function set_binaryMarshalerT(v:stdgo._internal.encoding.gob.Gob.T_gobEncoderType):stdgo._internal.encoding.gob.Gob.T_gobEncoderType {
        this.binaryMarshalerT = v;
        return v;
    }
    public var textMarshalerT(get, set) : stdgo._internal.encoding.gob.Gob.T_gobEncoderType;
    function get_textMarshalerT():stdgo._internal.encoding.gob.Gob.T_gobEncoderType return this.textMarshalerT;
    function set_textMarshalerT(v:stdgo._internal.encoding.gob.Gob.T_gobEncoderType):stdgo._internal.encoding.gob.Gob.T_gobEncoderType {
        this.textMarshalerT = v;
        return v;
    }
    public function new(?arrayT:stdgo._internal.encoding.gob.Gob.T_arrayType, ?sliceT:stdgo._internal.encoding.gob.Gob.T_sliceType, ?structT:stdgo._internal.encoding.gob.Gob.T_structType, ?mapT:stdgo._internal.encoding.gob.Gob.T_mapType, ?gobEncoderT:stdgo._internal.encoding.gob.Gob.T_gobEncoderType, ?binaryMarshalerT:stdgo._internal.encoding.gob.Gob.T_gobEncoderType, ?textMarshalerT:stdgo._internal.encoding.gob.Gob.T_gobEncoderType) this = new stdgo._internal.encoding.gob.Gob.T_wireType(arrayT, sliceT, structT, mapT, gobEncoderT, binaryMarshalerT, textMarshalerT);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_typeInfo(stdgo._internal.encoding.gob.Gob.T_typeInfo) from stdgo._internal.encoding.gob.Gob.T_typeInfo to stdgo._internal.encoding.gob.Gob.T_typeInfo {
    public var _id(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get__id():stdgo._internal.encoding.gob.Gob.T_typeId return this._id;
    function set__id(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this._id = v;
        return v;
    }
    public var _encInit(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__encInit():stdgo._internal.sync.Sync.Mutex return this._encInit;
    function set__encInit(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._encInit = v;
        return v;
    }
    public var _encoder(get, set) : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.encoding.gob.Gob.T_encEngine>;
    function get__encoder():stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.encoding.gob.Gob.T_encEngine> return this._encoder;
    function set__encoder(v:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.encoding.gob.Gob.T_encEngine>):stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.encoding.gob.Gob.T_encEngine> {
        this._encoder = v;
        return v;
    }
    public var _wire(get, set) : stdgo._internal.encoding.gob.Gob.T_wireType;
    function get__wire():stdgo._internal.encoding.gob.Gob.T_wireType return this._wire;
    function set__wire(v:stdgo._internal.encoding.gob.Gob.T_wireType):stdgo._internal.encoding.gob.Gob.T_wireType {
        this._wire = v;
        return v;
    }
    public function new(?_id:stdgo._internal.encoding.gob.Gob.T_typeId, ?_encInit:stdgo._internal.sync.Sync.Mutex, ?_encoder:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.encoding.gob.Gob.T_encEngine>, ?_wire:stdgo._internal.encoding.gob.Gob.T_wireType) this = new stdgo._internal.encoding.gob.Gob.T_typeInfo(_id, _encInit, _encoder, _wire);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_typeT(stdgo._internal.encoding.gob.Gob.T_typeT) from stdgo._internal.encoding.gob.Gob.T_typeT to stdgo._internal.encoding.gob.Gob.T_typeT {
    public var _id(get, set) : stdgo._internal.encoding.gob.Gob.T_typeId;
    function get__id():stdgo._internal.encoding.gob.Gob.T_typeId return this._id;
    function set__id(v:stdgo._internal.encoding.gob.Gob.T_typeId):stdgo._internal.encoding.gob.Gob.T_typeId {
        this._id = v;
        return v;
    }
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = v;
        return v;
    }
    public function new(?_id:stdgo._internal.encoding.gob.Gob.T_typeId, ?_str:String) this = new stdgo._internal.encoding.gob.Gob.T_typeT(_id, _str);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Bar(stdgo._internal.encoding.gob.Gob.Bar) from stdgo._internal.encoding.gob.Gob.Bar to stdgo._internal.encoding.gob.Gob.Bar {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob.Bar(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Foo(stdgo._internal.encoding.gob.Gob.Foo) from stdgo._internal.encoding.gob.Gob.Foo to stdgo._internal.encoding.gob.Gob.Foo {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public var c(get, set) : String;
    function get_c():String return this.c;
    function set_c(v:String):String {
        this.c = v;
        return v;
    }
    public var d(get, set) : Array<std.UInt>;
    function get_d():Array<std.UInt> return [for (i in this.d) i];
    function set_d(v:Array<std.UInt>):Array<std.UInt> {
        this.d = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var e(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_e():stdgo.Pointer<StdTypes.Float> return this.e;
    function set_e(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.e = v;
        return v;
    }
    public var f(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>;
    function get_f():stdgo.Pointer<stdgo.Pointer<StdTypes.Float>> return this.f;
    function set_f(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Float>> {
        this.f = v;
        return v;
    }
    public var g(get, set) : stdgo._internal.encoding.gob.Gob.Bar;
    function get_g():stdgo._internal.encoding.gob.Gob.Bar return this.g;
    function set_g(v:stdgo._internal.encoding.gob.Gob.Bar):stdgo._internal.encoding.gob.Gob.Bar {
        this.g = v;
        return v;
    }
    public var h(get, set) : stdgo._internal.encoding.gob.Gob.Bar;
    function get_h():stdgo._internal.encoding.gob.Gob.Bar return this.h;
    function set_h(v:stdgo._internal.encoding.gob.Gob.Bar):stdgo._internal.encoding.gob.Gob.Bar {
        this.h = v;
        return v;
    }
    public var i(get, set) : stdgo._internal.encoding.gob.Gob.Foo;
    function get_i():stdgo._internal.encoding.gob.Gob.Foo return this.i;
    function set_i(v:stdgo._internal.encoding.gob.Gob.Foo):stdgo._internal.encoding.gob.Gob.Foo {
        this.i = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:String, ?d:Array<std.UInt>, ?e:stdgo.Pointer<StdTypes.Float>, ?f:stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>, ?g:stdgo._internal.encoding.gob.Gob.Bar, ?h:stdgo._internal.encoding.gob.Gob.Bar, ?i:stdgo._internal.encoding.gob.Gob.Foo) this = new stdgo._internal.encoding.gob.Gob.Foo(a, b, c, ([for (i in d) i] : stdgo.Slice<stdgo.GoUInt8>), e, f, g, h, i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract N1(stdgo._internal.encoding.gob.Gob.N1) from stdgo._internal.encoding.gob.Gob.N1 to stdgo._internal.encoding.gob.Gob.N1 {
    public function new() this = new stdgo._internal.encoding.gob.Gob.N1();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract N2(stdgo._internal.encoding.gob.Gob.N2) from stdgo._internal.encoding.gob.Gob.N2 to stdgo._internal.encoding.gob.Gob.N2 {
    public function new() this = new stdgo._internal.encoding.gob.Gob.N2();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.encoding.gob.Gob.T__struct_0;
typedef T__struct_1 = stdgo._internal.encoding.gob.Gob.T__struct_1;
typedef T__struct_2 = stdgo._internal.encoding.gob.Gob.T__struct_2;
typedef T__struct_3 = stdgo._internal.encoding.gob.Gob.T__struct_3;
typedef T__struct_4 = stdgo._internal.encoding.gob.Gob.T__struct_4;
typedef T__struct_5 = stdgo._internal.encoding.gob.Gob.T__struct_5;
typedef T__struct_6 = stdgo._internal.encoding.gob.Gob.T__struct_6;
typedef T__struct_7 = stdgo._internal.encoding.gob.Gob.T__struct_7;
typedef T__struct_8 = stdgo._internal.encoding.gob.Gob.T__struct_8;
typedef T__struct_9 = stdgo._internal.encoding.gob.Gob.T__struct_9;
typedef T__struct_10 = stdgo._internal.encoding.gob.Gob.T__struct_10;
typedef T__struct_11 = stdgo._internal.encoding.gob.Gob.T__struct_11;
typedef T__struct_12 = stdgo._internal.encoding.gob.Gob.T__struct_12;
typedef Int_ = stdgo._internal.encoding.gob.Gob.Int_;
typedef Float_ = stdgo._internal.encoding.gob.Gob.Float_;
typedef Vector = stdgo._internal.encoding.gob.Gob.Vector;
typedef String_ = stdgo._internal.encoding.gob.Gob.String_;
typedef T_decHelper = stdgo._internal.encoding.gob.Gob.T_decHelper;
typedef T_decOp = stdgo._internal.encoding.gob.Gob.T_decOp;
typedef T_encHelper = stdgo._internal.encoding.gob.Gob.T_encHelper;
typedef T_encOp = stdgo._internal.encoding.gob.Gob.T_encOp;
typedef Bug1StructMap = stdgo._internal.encoding.gob.Gob.Bug1StructMap;
typedef Gobber = stdgo._internal.encoding.gob.Gob.Gobber;
typedef ValueGobber = stdgo._internal.encoding.gob.Gob.ValueGobber;
typedef BinaryGobber = stdgo._internal.encoding.gob.Gob.BinaryGobber;
typedef BinaryValueGobber = stdgo._internal.encoding.gob.Gob.BinaryValueGobber;
typedef TextGobber = stdgo._internal.encoding.gob.Gob.TextGobber;
typedef TextValueGobber = stdgo._internal.encoding.gob.Gob.TextValueGobber;
typedef T_isZeroBugArray = stdgo._internal.encoding.gob.Gob.T_isZeroBugArray;
typedef T_typeId = stdgo._internal.encoding.gob.Gob.T_typeId;
abstract T_testEndToEnd_54___localname___T2(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2 {
    public var t(get, set) : String;
    function get_t():String return this.t;
    function set_t(v:String):String {
        this.t = v;
        return v;
    }
    public function new(?t:String) this = new stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2(t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testEndToEnd_55___localname___T3(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3 {
    public var x(get, set) : StdTypes.Float;
    function get_x():StdTypes.Float return this.x;
    function set_x(v:StdTypes.Float):StdTypes.Float {
        this.x = v;
        return v;
    }
    public var z(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_z():stdgo.Pointer<StdTypes.Int> return this.z;
    function set_z(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.z = v;
        return v;
    }
    public function new(?x:StdTypes.Float, ?z:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3(x, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testEndToEnd_56___localname___T1(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public var c(get, set) : StdTypes.Int;
    function get_c():StdTypes.Int return this.c;
    function set_c(v:StdTypes.Int):StdTypes.Int {
        this.c = v;
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>):stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>> {
        this.m = v;
        return v;
    }
    public var m2(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3>;
    function get_m2():stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3> return this.m2;
    function set_m2(v:stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3>):stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3> {
        this.m2 = v;
        return v;
    }
    public var mstring(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_mstring():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.mstring;
    function set_mstring(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.mstring = v;
        return v;
    }
    public var mintptr(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>;
    function get_mintptr():stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>> return this.mintptr;
    function set_mintptr(v:stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>):stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>> {
        this.mintptr = v;
        return v;
    }
    public var mcomp(get, set) : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>;
    function get_mcomp():stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128> return this.mcomp;
    function set_mcomp(v:stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>):stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128> {
        this.mcomp = v;
        return v;
    }
    public var marr(get, set) : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>;
    function get_marr():stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>> return this.marr;
    function set_marr(v:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>):stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>> {
        this.marr = v;
        return v;
    }
    public var emptyMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_emptyMap():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.emptyMap;
    function set_emptyMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.emptyMap = v;
        return v;
    }
    public var n(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get_n():haxe.ds.Vector<StdTypes.Float> return this.n;
    function set_n(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this.n = v;
        return v;
    }
    public var strs(get, set) : haxe.ds.Vector<String>;
    function get_strs():haxe.ds.Vector<String> return this.strs;
    function set_strs(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.strs = v;
        return v;
    }
    public var int64s(get, set) : Array<haxe.Int64>;
    function get_int64s():Array<haxe.Int64> return this.int64s;
    function set_int64s(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this.int64s = v;
        return v;
    }
    public var ri(get, set) : stdgo.GoComplex64;
    function get_ri():stdgo.GoComplex64 return this.ri;
    function set_ri(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.ri = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var t(get, set) : stdgo._internal.encoding.gob.Gob.T2;
    function get_t():stdgo._internal.encoding.gob.Gob.T2 return this.t;
    function set_t(v:stdgo._internal.encoding.gob.Gob.T2):stdgo._internal.encoding.gob.Gob.T2 {
        this.t = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?m:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>, ?m2:stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3>, ?mstring:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?mintptr:stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>, ?mcomp:stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>, ?marr:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?n:haxe.ds.Vector<StdTypes.Float>, ?strs:haxe.ds.Vector<String>, ?int64s:Array<haxe.Int64>, ?ri:stdgo.GoComplex64, ?s:String, ?y:Array<std.UInt>, ?t:stdgo._internal.encoding.gob.Gob.T2) this = new stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1(
a,
b,
c,
m,
m2,
mstring,
mintptr,
mcomp,
marr,
emptyMap,
n,
strs,
int64s,
ri,
s,
([for (i in y) i] : stdgo.Slice<stdgo.GoUInt8>),
t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_57___localname___inputT(stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT) from stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT to stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT {
    public var maxi(get, set) : haxe.Int64;
    function get_maxi():haxe.Int64 return this.maxi;
    function set_maxi(v:haxe.Int64):haxe.Int64 {
        this.maxi = v;
        return v;
    }
    public var mini(get, set) : haxe.Int64;
    function get_mini():haxe.Int64 return this.mini;
    function set_mini(v:haxe.Int64):haxe.Int64 {
        this.mini = v;
        return v;
    }
    public var maxu(get, set) : haxe.UInt64;
    function get_maxu():haxe.UInt64 return this.maxu;
    function set_maxu(v:haxe.UInt64):haxe.UInt64 {
        this.maxu = v;
        return v;
    }
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = v;
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = v;
        return v;
    }
    public var maxc(get, set) : stdgo.GoComplex128;
    function get_maxc():stdgo.GoComplex128 return this.maxc;
    function set_maxc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.maxc = v;
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex128;
    function get_minc():stdgo.GoComplex128 return this.minc;
    function set_minc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.minc = v;
        return v;
    }
    public function new(?maxi:haxe.Int64, ?mini:haxe.Int64, ?maxu:haxe.UInt64, ?maxf:StdTypes.Float, ?minf:StdTypes.Float, ?maxc:stdgo.GoComplex128, ?minc:stdgo.GoComplex128) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT(maxi, mini, maxu, maxf, minf, maxc, minc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_58___localname___outi8(stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8) from stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8 to stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = v;
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = v;
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8(maxi, mini);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_59___localname___outi16(stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16) from stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16 to stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = v;
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = v;
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16(maxi, mini);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_60___localname___outi32(stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = v;
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = v;
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32(maxi, mini);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_61___localname___outu8(stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8) from stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8 to stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = v;
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8(maxu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_62___localname___outu16(stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16) from stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16 to stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = v;
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16(maxu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_63___localname___outu32(stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = v;
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32(maxu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_64___localname___outf32(stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32 {
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = v;
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = v;
        return v;
    }
    public function new(?maxf:StdTypes.Float, ?minf:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32(maxf, minf);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testOverflow_65___localname___outc64(stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64) from stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64 to stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64 {
    public var maxc(get, set) : stdgo.GoComplex64;
    function get_maxc():stdgo.GoComplex64 return this.maxc;
    function set_maxc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.maxc = v;
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex64;
    function get_minc():stdgo.GoComplex64 return this.minc;
    function set_minc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.minc = v;
        return v;
    }
    public function new(?maxc:stdgo.GoComplex64, ?minc:stdgo.GoComplex64) this = new stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64(maxc, minc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testNesting_66___localname___RT(stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT) from stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT to stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT;
    function get_next():stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT return this.next;
    function set_next(v:stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT):stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT {
        this.next = v;
        return v;
    }
    public function new(?a:String, ?next:stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT) this = new stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT(a, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testBadRecursiveType_67___localname___Rec = stdgo._internal.encoding.gob.Gob.T_testBadRecursiveType_67___localname___Rec;
abstract T_testTypeToPtrType_68___localname___Type0(stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0) from stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0 to stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testPtrTypeToType_69___localname___Type1(stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1) from stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1 to stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testTypeToPtrPtrPtrPtrType_70___localname___Type2(stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2) from stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2 to stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2 {
    public var a(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>;
    function get_a():stdgo.Pointer<stdgo.Pointer<StdTypes.Float>> return this.a;
    function set_a(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Float>> {
        this.a = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>) this = new stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testSlice_71___localname___Type3(stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3) from stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3 to stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3 {
    public var a(get, set) : Array<String>;
    function get_a():Array<String> return [for (i in this.a) i];
    function set_a(v:Array<String>):Array<String> {
        this.a = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:Array<String>) this = new stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3(([for (i in a) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testValueError_72___localname___Type4(stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4) from stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4 to stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testArray_73___localname___Type5(stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5) from stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5 to stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) i] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public var b(get, set) : haxe.ds.Vector<std.UInt>;
    function get_b():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.b) i]);
    function set_b(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.b = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>, ?b:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5(([for (i in a) i] : stdgo.GoArray<stdgo.GoString>), ([for (i in b) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testArray_74___localname___Type6(stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6) from stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6 to stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) i] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>) this = new stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6(([for (i in a) i] : stdgo.GoArray<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testRecursiveMapType_75___localname___recursiveMap = stdgo._internal.encoding.gob.Gob.T_testRecursiveMapType_75___localname___recursiveMap;
typedef T_testRecursiveSliceType_76___localname___recursiveSlice = stdgo._internal.encoding.gob.Gob.T_testRecursiveSliceType_76___localname___recursiveSlice;
abstract T_testDefaultsInArray_77___localname___Type7(stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7) from stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7 to stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7 {
    public var b(get, set) : Array<Bool>;
    function get_b():Array<Bool> return [for (i in this.b) i];
    function set_b(v:Array<Bool>):Array<Bool> {
        this.b = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var i(get, set) : Array<StdTypes.Int>;
    function get_i():Array<StdTypes.Int> return [for (i in this.i) i];
    function set_i(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.i = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var f(get, set) : Array<StdTypes.Float>;
    function get_f():Array<StdTypes.Float> return [for (i in this.f) i];
    function set_f(v:Array<StdTypes.Float>):Array<StdTypes.Float> {
        this.f = ([for (i in v) i] : stdgo.Slice<stdgo.GoFloat64>);
        return v;
    }
    public function new(?b:Array<Bool>, ?i:Array<StdTypes.Int>, ?s:Array<String>, ?f:Array<StdTypes.Float>) this = new stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7(([for (i in b) i] : stdgo.Slice<Bool>), ([for (i in i) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in s) i] : stdgo.Slice<stdgo.GoString>), ([for (i in f) i] : stdgo.Slice<stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testStructNonStruct_78___localname___Struct(stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct) from stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct to stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public function new(?a:String) this = new stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testStructNonStruct_79___localname___NonStruct = stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_79___localname___NonStruct;
abstract T_testDecodeErrorMultipleTypes_80___localname___Test(stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test) from stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test to stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public function new(?a:String, ?b:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testMarshalFloatMap_81___localname___mapEntry(stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry) from stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry to stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry {
    public var _keyBits(get, set) : haxe.UInt64;
    function get__keyBits():haxe.UInt64 return this._keyBits;
    function set__keyBits(v:haxe.UInt64):haxe.UInt64 {
        this._keyBits = v;
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = v;
        return v;
    }
    public function new(?_keyBits:haxe.UInt64, ?_value:String) this = new stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry(_keyBits, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testDecodePartial_82___localname___T(stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T) from stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T to stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T {
    public var x(get, set) : Array<StdTypes.Int>;
    function get_x():Array<StdTypes.Int> return [for (i in this.x) i];
    function set_x(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.x = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = v;
        return v;
    }
    public function new(?x:Array<StdTypes.Int>, ?y:String) this = new stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T(([for (i in x) i] : stdgo.Slice<stdgo.GoInt>), y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testRegistration_83___localname___T(stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T) from stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T to stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = v;
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T(_a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testStressParallel_84___localname___T2(stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2) from stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2 to stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Gob {
    /**
        Test basic encode/decode routines for unsigned integers
    **/
    static public function testUintCodec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUintCodec(t);
    }
    /**
        Test basic encode/decode routines for signed integers
    **/
    static public function testIntCodec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIntCodec(t);
    }
    /**
        Test instruction execution for encoding.
        Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public function testScalarEncInstructions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testScalarEncInstructions(t);
    }
    /**
        Test instruction execution for decoding.
        Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public function testScalarDecInstructions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testScalarDecInstructions(t);
    }
    static public function testEndToEnd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEndToEnd(t);
    }
    static public function testOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testOverflow(t);
    }
    static public function testNesting(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNesting(t);
    }
    static public function testAutoIndirection(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testAutoIndirection(t);
    }
    static public function testReorderedFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testReorderedFields(t);
    }
    static public function testIgnoredFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoredFields(t);
    }
    static public function testBadRecursiveType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadRecursiveType(t);
    }
    static public function testIndirectSliceMapArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIndirectSliceMapArray(t);
    }
    static public function testInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterface(t);
    }
    static public function testInterfaceBasic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfaceBasic(t);
    }
    /**
        We'll send pointers; should receive values.
        Also check that we can register T but send *T.
    **/
    static public function testInterfacePointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfacePointer(t);
    }
    static public function testIgnoreInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreInterface(t);
    }
    static public function testUnexportedFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUnexportedFields(t);
    }
    static public function testDebugSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDebugSingleton(t);
    }
    static public function testDebugStruct(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDebugStruct(t);
    }
    /**
        This does some "fuzz testing" by attempting to decode a sequence of random bytes.
    **/
    static public function testFuzz(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzz(t);
    }
    static public function testFuzzRegressions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzzRegressions(t);
    }
    /**
        TestFuzzOneByte tries to decode corrupted input sequences
        and checks that no panic occurs.
    **/
    static public function testFuzzOneByte(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzzOneByte(t);
    }
    /**
        Don't crash, just give error with invalid type id.
        Issue 9649.
    **/
    static public function testErrorInvalidTypeId(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testErrorInvalidTypeId(t);
    }
    static public function testLargeSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testLargeSlice(t);
    }
    static public function testLocalRemoteTypesMismatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testLocalRemoteTypesMismatch(t);
    }
    /**
        NewDecoder returns a new decoder that reads from the io.Reader.
        If r does not also implement io.ByteReader, it will be wrapped in a
        bufio.Reader.
    **/
    static public function newDecoder(r:stdgo._internal.io.Io.Reader):Decoder {
        return stdgo._internal.encoding.gob.Gob.newDecoder(r);
    }
    /**
        NewEncoder returns a new encoder that will transmit on the io.Writer.
    **/
    static public function newEncoder(w:stdgo._internal.io.Io.Writer):Encoder {
        return stdgo._internal.encoding.gob.Gob.newEncoder(w);
    }
    /**
        Test basic operations in a safe manner.
    **/
    static public function testBasicEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBasicEncoderDecoder(t);
    }
    static public function testEncodeIntSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEncodeIntSlice(t);
    }
    static public function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEncoderDecoder(t);
    }
    /**
        Test that we recognize a bad type the first time.
    **/
    static public function testWrongTypeDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testWrongTypeDecoder(t);
    }
    static public function testUnsupported(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUnsupported(t);
    }
    static public function testTypeToPtrType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeToPtrType(t);
    }
    static public function testPtrTypeToType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testPtrTypeToType(t);
    }
    static public function testTypeToPtrPtrPtrPtrType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeToPtrPtrPtrPtrType(t);
    }
    static public function testSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSlice(t);
    }
    static public function testValueError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testValueError(t);
    }
    static public function testArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testArray(t);
    }
    static public function testRecursiveMapType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRecursiveMapType(t);
    }
    static public function testRecursiveSliceType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRecursiveSliceType(t);
    }
    /**
        Regression test for bug: must send zero values inside arrays
    **/
    static public function testDefaultsInArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDefaultsInArray(t);
    }
    static public function testSingletons(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSingletons(t);
    }
    static public function testStructNonStruct(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStructNonStruct(t);
    }
    /**
        A version of a bug reported on golang-nuts. Also tests top-level
        slice of interfaces. The issue was registering *T caused T to be
        stored as the concrete type.
    **/
    static public function testInterfaceIndirect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfaceIndirect(t);
    }
    static public function testDecodeIntoNothing(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodeIntoNothing(t);
    }
    static public function testIgnoreRecursiveType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreRecursiveType(t);
    }
    static public function testNestedInterfaces(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNestedInterfaces(t);
    }
    static public function testMapBug1(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMapBug1(t);
    }
    static public function testGobMapInterfaceEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobMapInterfaceEncode(t);
    }
    static public function testSliceReusesMemory(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceReusesMemory(t);
    }
    /**
        Used to crash: negative count in recvMessage.
    **/
    static public function testBadCount(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadCount(t);
    }
    /**
        Verify that sequential Decoders built on a single input will
        succeed if the input implements ReadByte and there is no
        type information in the stream.
    **/
    static public function testSequentialDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSequentialDecoder(t);
    }
    static public function testChanFuncIgnored(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testChanFuncIgnored(t);
    }
    static public function testSliceIncompatibility(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceIncompatibility(t);
    }
    static public function testGobPtrSlices(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobPtrSlices(t);
    }
    /**
        getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
        a *map and then tried to reuse its engine to decode the inner map.
    **/
    static public function testPtrToMapOfMap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testPtrToMapOfMap(t);
    }
    /**
        Test that untyped nils generate an error, not a panic.
        See Issue 16204.
    **/
    static public function testCatchInvalidNilValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCatchInvalidNilValue(t);
    }
    /**
        A top-level nil pointer generates a panic with a helpful string-valued message.
    **/
    static public function testTopLevelNilPointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTopLevelNilPointer(t);
    }
    static public function testNilPointerPanics(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNilPointerPanics(t);
    }
    static public function testNilPointerInsideInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNilPointerInsideInterface(t);
    }
    /**
        Test that a failed compilation doesn't leave around an executable encoder.
        Issue 3723.
    **/
    static public function testMutipleEncodingsOfBadType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMutipleEncodingsOfBadType(t);
    }
    static public function test29ElementSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.test29ElementSlice(t);
    }
    /**
        Don't crash, just give error when allocating a huge slice.
        Issue 8084.
    **/
    static public function testErrorForHugeSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testErrorForHugeSlice(t);
    }
    /**
        TestBadData tests that various problems caused by malformed input
        are caught as errors and do not cause panics.
    **/
    static public function testBadData(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadData(t);
    }
    static public function testDecodeErrorMultipleTypes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodeErrorMultipleTypes(t);
    }
    /**
        Issue 24075
    **/
    static public function testMarshalFloatMap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMarshalFloatMap(t);
    }
    static public function testDecodePartial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodePartial(t);
    }
    static public function testDecoderOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecoderOverflow(t);
    }
    static public function testGobEncoderField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderField(t);
    }
    /**
        Even though the field is a value, we can still take its address
        and should be able to call the methods.
    **/
    static public function testGobEncoderValueField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueField(t);
    }
    /**
        GobEncode/Decode should work even if the value is
        more indirect than the receiver.
    **/
    static public function testGobEncoderIndirectField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIndirectField(t);
    }
    /**
        Test with a large field with methods.
    **/
    static public function testGobEncoderArrayField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderArrayField(t);
    }
    /**
        Test an indirection to a large field with methods.
    **/
    static public function testGobEncoderIndirectArrayField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIndirectArrayField(t);
    }
    /**
        As long as the fields have the same name and implement the
        interface, we can cross-connect them. Not sure it's useful
        and may even be bad but it works and it's hard to prevent
        without exposing the contents of the object, which would
        defeat the purpose.
    **/
    static public function testGobEncoderFieldsOfDifferentType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderFieldsOfDifferentType(t);
    }
    /**
        Test that we can encode a value and decode into a pointer.
    **/
    static public function testGobEncoderValueEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueEncoder(t);
    }
    /**
        Test that we can use a value then a pointer type of a GobEncoder
        in the same encoded value. Bug 4647.
    **/
    static public function testGobEncoderValueThenPointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueThenPointer(t);
    }
    /**
        Test that we can use a pointer then a value type of a GobEncoder
        in the same encoded value.
    **/
    static public function testGobEncoderPointerThenValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderPointerThenValue(t);
    }
    static public function testGobEncoderFieldTypeError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderFieldTypeError(t);
    }
    /**
        Even though ByteStruct is a struct, it's treated as a singleton at the top level.
    **/
    static public function testGobEncoderStructSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderStructSingleton(t);
    }
    static public function testGobEncoderNonStructSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderNonStructSingleton(t);
    }
    static public function testGobEncoderIgnoreStructField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreStructField(t);
    }
    static public function testGobEncoderIgnoreNonStructField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreNonStructField(t);
    }
    static public function testGobEncoderIgnoreNilEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreNilEncoder(t);
    }
    /**
        This was a bug: the receiver has a different indirection level
        than the variable.
    **/
    static public function testGobEncoderExtraIndirect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderExtraIndirect(t);
    }
    static public function testGobEncodeIsZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncodeIsZero(t);
    }
    static public function testGobEncodePtrError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncodePtrError(t);
    }
    static public function testNetIP(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNetIP(t);
    }
    static public function testIgnoreDepthLimit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreDepthLimit(t);
    }
    static public function benchmarkEndToEndPipe(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndPipe(b);
    }
    static public function benchmarkEndToEndByteBuffer(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndByteBuffer(b);
    }
    static public function benchmarkEndToEndSliceByteBuffer(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndSliceByteBuffer(b);
    }
    static public function testCountEncodeMallocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCountEncodeMallocs(t);
    }
    static public function testCountDecodeMallocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCountDecodeMallocs(t);
    }
    static public function benchmarkEncodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeComplex128Slice(b);
    }
    static public function benchmarkEncodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeFloat64Slice(b);
    }
    static public function benchmarkEncodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeInt32Slice(b);
    }
    static public function benchmarkEncodeStringSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeStringSlice(b);
    }
    static public function benchmarkEncodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeInterfaceSlice(b);
    }
    static public function benchmarkDecodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeComplex128Slice(b);
    }
    static public function benchmarkDecodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeFloat64Slice(b);
    }
    static public function benchmarkDecodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeInt32Slice(b);
    }
    static public function benchmarkDecodeStringSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeStringSlice(b);
    }
    static public function benchmarkDecodeStringsSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeStringsSlice(b);
    }
    static public function benchmarkDecodeBytesSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeBytesSlice(b);
    }
    static public function benchmarkDecodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeInterfaceSlice(b);
    }
    static public function benchmarkDecodeMap(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeMap(b);
    }
    /**
        RegisterName is like Register but uses the provided name rather than the
        type's default.
    **/
    static public function registerName(name:String, value:stdgo.AnyInterface):Void {
        stdgo._internal.encoding.gob.Gob.registerName(name, value);
    }
    /**
        Register records a type, identified by a value for that type, under its
        internal type name. That name will identify the concrete type of a value
        sent or received as an interface variable. Only types that will be
        transferred as implementations of interface values need to be registered.
        Expecting to be used only during initialization, it panics if the mapping
        between types and names is not a bijection.
    **/
    static public function register(value:stdgo.AnyInterface):Void {
        stdgo._internal.encoding.gob.Gob.register(value);
    }
    /**
        Sanity checks
    **/
    static public function testBasic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBasic(t);
    }
    /**
        Reregister some basic types to check registration is idempotent.
    **/
    static public function testReregistration(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testReregistration(t);
    }
    static public function testArrayType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testArrayType(t);
    }
    static public function testSliceType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceType(t);
    }
    static public function testMapType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMapType(t);
    }
    static public function testStructType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStructType(t);
    }
    /**
        Should be OK to register the same type multiple times, as long as they're
        at the same level of indirection.
    **/
    static public function testRegistration(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRegistration(t);
    }
    /**
        See comment in type.go/Register.
    **/
    static public function testRegistrationNaming(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRegistrationNaming(t);
    }
    static public function testStressParallel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStressParallel(t);
    }
    /**
        Issue 23328. Note that this test name is known to cmd/dist/test.go.
    **/
    static public function testTypeRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeRace(t);
    }
}
