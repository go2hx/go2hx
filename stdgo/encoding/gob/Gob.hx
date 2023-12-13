package stdgo.encoding.gob;
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
/**
    
    
    
**/
var _errBadUint : stdgo.Error = stdgo.errors.Errors.new_(("gob: encoded unsigned integer out of range" : stdgo.GoString));
/**
    
    
    
**/
var _errBadType : stdgo.Error = stdgo.errors.Errors.new_(("gob: unknown type id or corrupted data" : stdgo.GoString));
/**
    
    
    
**/
var _errRange : stdgo.Error = stdgo.errors.Errors.new_(("gob: bad data: field numbers out of bounds" : stdgo.GoString));
/**
    
    
    
**/
var _maxIgnoreNestingDepth : stdgo.StdGoTypes.GoInt = (10000 : stdgo.StdGoTypes.GoInt);
/**
    
    
    
**/
var _emptyStructType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_emptyStruct>) : stdgo.StdGoTypes.Ref<T_emptyStruct>))).elem();
/**
    
    
    
**/
var _errBadCount : stdgo.Error = stdgo.errors.Errors.new_(("invalid message length" : stdgo.GoString));
/**
    
    
    
**/
var _decArrayHelper : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_decHelper> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_decHelper>();
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_decHelper);
        @:mergeBlock {
            x.set((1u32 : stdgo.reflect.Reflect.Kind), _decBoolArray);
            x.set((15u32 : stdgo.reflect.Reflect.Kind), _decComplex64Array);
            x.set((16u32 : stdgo.reflect.Reflect.Kind), _decComplex128Array);
            x.set((13u32 : stdgo.reflect.Reflect.Kind), _decFloat32Array);
            x.set((14u32 : stdgo.reflect.Reflect.Kind), _decFloat64Array);
            x.set((2u32 : stdgo.reflect.Reflect.Kind), _decIntArray);
            x.set((4u32 : stdgo.reflect.Reflect.Kind), _decInt16Array);
            x.set((5u32 : stdgo.reflect.Reflect.Kind), _decInt32Array);
            x.set((6u32 : stdgo.reflect.Reflect.Kind), _decInt64Array);
            x.set((3u32 : stdgo.reflect.Reflect.Kind), _decInt8Array);
            x.set((24u32 : stdgo.reflect.Reflect.Kind), _decStringArray);
            x.set((7u32 : stdgo.reflect.Reflect.Kind), _decUintArray);
            x.set((9u32 : stdgo.reflect.Reflect.Kind), _decUint16Array);
            x.set((10u32 : stdgo.reflect.Reflect.Kind), _decUint32Array);
            x.set((11u32 : stdgo.reflect.Reflect.Kind), _decUint64Array);
            x.set((12u32 : stdgo.reflect.Reflect.Kind), _decUintptrArray);
        };
        x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_decHelper>);
/**
    
    
    
**/
var _decSliceHelper : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_decHelper> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_decHelper>();
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_decHelper);
        @:mergeBlock {
            x.set((1u32 : stdgo.reflect.Reflect.Kind), _decBoolSlice);
            x.set((15u32 : stdgo.reflect.Reflect.Kind), _decComplex64Slice);
            x.set((16u32 : stdgo.reflect.Reflect.Kind), _decComplex128Slice);
            x.set((13u32 : stdgo.reflect.Reflect.Kind), _decFloat32Slice);
            x.set((14u32 : stdgo.reflect.Reflect.Kind), _decFloat64Slice);
            x.set((2u32 : stdgo.reflect.Reflect.Kind), _decIntSlice);
            x.set((4u32 : stdgo.reflect.Reflect.Kind), _decInt16Slice);
            x.set((5u32 : stdgo.reflect.Reflect.Kind), _decInt32Slice);
            x.set((6u32 : stdgo.reflect.Reflect.Kind), _decInt64Slice);
            x.set((3u32 : stdgo.reflect.Reflect.Kind), _decInt8Slice);
            x.set((24u32 : stdgo.reflect.Reflect.Kind), _decStringSlice);
            x.set((7u32 : stdgo.reflect.Reflect.Kind), _decUintSlice);
            x.set((9u32 : stdgo.reflect.Reflect.Kind), _decUint16Slice);
            x.set((10u32 : stdgo.reflect.Reflect.Kind), _decUint32Slice);
            x.set((11u32 : stdgo.reflect.Reflect.Kind), _decUint64Slice);
            x.set((12u32 : stdgo.reflect.Reflect.Kind), _decUintptrSlice);
        };
        x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_decHelper>);
/**
    // Index by Go types.
    
    
**/
var _decOpTable : stdgo.GoArray<stdgo.encoding.gob.Gob.T_decOp> = {
        var s:stdgo.GoArray<stdgo.encoding.gob.Gob.T_decOp> = new stdgo.GoArray<stdgo.encoding.gob.Gob.T_decOp>(...[for (i in 0 ... 25) (null : stdgo.encoding.gob.Gob.T_decOp)]);
        s[1] = _decBool;
        s[3] = _decInt8;
        s[4] = _decInt16;
        s[5] = _decInt32;
        s[6] = _decInt64;
        s[8] = _decUint8;
        s[9] = _decUint16;
        s[10] = _decUint32;
        s[11] = _decUint64;
        s[13] = _decFloat32;
        s[14] = _decFloat64;
        s[15] = _decComplex64;
        s[16] = _decComplex128;
        s[24] = _decString;
        s;
    };
/**
    
    
    
**/
var _encArrayHelper : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_encHelper> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_encHelper>();
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_encHelper);
        @:mergeBlock {
            x.set((1u32 : stdgo.reflect.Reflect.Kind), _encBoolArray);
            x.set((15u32 : stdgo.reflect.Reflect.Kind), _encComplex64Array);
            x.set((16u32 : stdgo.reflect.Reflect.Kind), _encComplex128Array);
            x.set((13u32 : stdgo.reflect.Reflect.Kind), _encFloat32Array);
            x.set((14u32 : stdgo.reflect.Reflect.Kind), _encFloat64Array);
            x.set((2u32 : stdgo.reflect.Reflect.Kind), _encIntArray);
            x.set((4u32 : stdgo.reflect.Reflect.Kind), _encInt16Array);
            x.set((5u32 : stdgo.reflect.Reflect.Kind), _encInt32Array);
            x.set((6u32 : stdgo.reflect.Reflect.Kind), _encInt64Array);
            x.set((3u32 : stdgo.reflect.Reflect.Kind), _encInt8Array);
            x.set((24u32 : stdgo.reflect.Reflect.Kind), _encStringArray);
            x.set((7u32 : stdgo.reflect.Reflect.Kind), _encUintArray);
            x.set((9u32 : stdgo.reflect.Reflect.Kind), _encUint16Array);
            x.set((10u32 : stdgo.reflect.Reflect.Kind), _encUint32Array);
            x.set((11u32 : stdgo.reflect.Reflect.Kind), _encUint64Array);
            x.set((12u32 : stdgo.reflect.Reflect.Kind), _encUintptrArray);
        };
        x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_encHelper>);
/**
    
    
    
**/
var _encSliceHelper : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_encHelper> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_encHelper>();
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_encHelper);
        @:mergeBlock {
            x.set((1u32 : stdgo.reflect.Reflect.Kind), _encBoolSlice);
            x.set((15u32 : stdgo.reflect.Reflect.Kind), _encComplex64Slice);
            x.set((16u32 : stdgo.reflect.Reflect.Kind), _encComplex128Slice);
            x.set((13u32 : stdgo.reflect.Reflect.Kind), _encFloat32Slice);
            x.set((14u32 : stdgo.reflect.Reflect.Kind), _encFloat64Slice);
            x.set((2u32 : stdgo.reflect.Reflect.Kind), _encIntSlice);
            x.set((4u32 : stdgo.reflect.Reflect.Kind), _encInt16Slice);
            x.set((5u32 : stdgo.reflect.Reflect.Kind), _encInt32Slice);
            x.set((6u32 : stdgo.reflect.Reflect.Kind), _encInt64Slice);
            x.set((3u32 : stdgo.reflect.Reflect.Kind), _encInt8Slice);
            x.set((24u32 : stdgo.reflect.Reflect.Kind), _encStringSlice);
            x.set((7u32 : stdgo.reflect.Reflect.Kind), _encUintSlice);
            x.set((9u32 : stdgo.reflect.Reflect.Kind), _encUint16Slice);
            x.set((10u32 : stdgo.reflect.Reflect.Kind), _encUint32Slice);
            x.set((11u32 : stdgo.reflect.Reflect.Kind), _encUint64Slice);
            x.set((12u32 : stdgo.reflect.Reflect.Kind), _encUintptrSlice);
        };
        x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Kind, stdgo.encoding.gob.Gob.T_encHelper>);
/**
    
    
    
**/
var _encBufferPool : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        var _e = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>);
        _e._data = (_e._scratch.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_e));
    } } : stdgo.sync.Sync.Pool);
/**
    
    
    
**/
var _encOpTable : stdgo.GoArray<stdgo.encoding.gob.Gob.T_encOp> = {
        var s:stdgo.GoArray<stdgo.encoding.gob.Gob.T_encOp> = new stdgo.GoArray<stdgo.encoding.gob.Gob.T_encOp>(...[for (i in 0 ... 25) (null : stdgo.encoding.gob.Gob.T_encOp)]);
        s[1] = _encBool;
        s[2] = _encInt;
        s[3] = _encInt;
        s[4] = _encInt;
        s[5] = _encInt;
        s[6] = _encInt;
        s[7] = _encUint;
        s[8] = _encUint;
        s[9] = _encUint;
        s[10] = _encUint;
        s[11] = _encUint;
        s[12] = _encUint;
        s[13] = _encFloat;
        s[14] = _encFloat;
        s[15] = _encComplex;
        s[16] = _encComplex;
        s[24] = _encString;
        s;
    };
/**
    
    
    
**/
var _spaceForLength : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
/**
    
    
    
**/
var _gobEncoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobEncoder>) : stdgo.StdGoTypes.Ref<GobEncoder>))).elem();
/**
    
    
    
**/
var _gobDecoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobDecoder>) : stdgo.StdGoTypes.Ref<GobDecoder>))).elem();
/**
    
    
    
**/
var _binaryMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.BinaryMarshaler>))).elem();
/**
    
    
    
**/
var _binaryUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.BinaryUnmarshaler>))).elem();
/**
    
    
    
**/
var _textMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.TextMarshaler>))).elem();
/**
    
    
    
**/
var _textUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.TextUnmarshaler>))).elem();
/**
    
    
    
**/
var _wireTypeType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>) : stdgo.StdGoTypes.Ref<T_wireType>)))).elem();
/**
    
    
    
**/
var _types : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_gobType> = ({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_gobType>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_gobType);
        @:mergeBlock {};
        cast x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_gobType>);
/**
    
    
    
**/
var _idToTypeSlice : stdgo.Slice<stdgo.encoding.gob.Gob.T_gobType> = new stdgo.Slice<stdgo.encoding.gob.Gob.T_gobType>((1 : stdgo.StdGoTypes.GoInt).toBasic(), (64 : stdgo.StdGoTypes.GoInt));
/**
    // Primordial types, needed during initialization.
    // Always passed as pointers so the interface{} type
    // goes through without losing its interfaceness.
    
    
**/
var _tBool : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("bool" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<Bool>)));
/**
    
    
    
**/
var _tInt : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("int" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)));
/**
    
    
    
**/
var _tUint : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("uint" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>)));
/**
    
    
    
**/
var _tFloat : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("float" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>)));
/**
    
    
    
**/
var _tBytes : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("bytes" : stdgo.GoString), stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoByte>>)));
/**
    
    
    
**/
var _tString : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("string" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoString>)));
/**
    
    
    
**/
var _tComplex : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("complex" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex128>)));
/**
    // Indexed by gob types.  tComplex will be added during type.init().
    
    
**/
var _decIgnoreOpMap : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.encoding.gob.Gob.T_decOp> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_decOp>();
        x.__defaultValue__ = () -> (null : stdgo.encoding.gob.Gob.T_decOp);
        @:mergeBlock {
            x.set(_tBool, _ignoreUint);
            x.set(_tInt, _ignoreUint);
            x.set(_tUint, _ignoreUint);
            x.set(_tFloat, _ignoreUint);
            x.set(_tBytes, _ignoreUint8Array);
            x.set(_tString, _ignoreUint8Array);
            x.set(_tComplex, _ignoreTwoUints);
        };
        x;
    } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.encoding.gob.Gob.T_decOp>);
/**
    
    
    
**/
var _tInterface : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("interface" : stdgo.GoString), stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
/**
    // Reserve some Ids for compatible expansion
    
    
**/
var _tReserved7 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_5>))));
/**
    
    
    
**/
var _tReserved6 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_6>))));
/**
    
    
    
**/
var _tReserved5 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_7>))));
/**
    
    
    
**/
var _tReserved4 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_8>))));
/**
    
    
    
**/
var _tReserved3 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_9>))));
/**
    
    
    
**/
var _tReserved2 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_10>))));
/**
    
    
    
**/
var _tReserved1 : stdgo.encoding.gob.Gob.T_typeId = _bootstrapType(("_reserved1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.StdGoTypes.Ref<T__struct_11>))));
/**
    // typeInfoMapInit is used instead of typeInfoMap during init time,
    // as types are registered sequentially during init and we can save
    // the overhead of making map copies.
    // It is saved to typeInfoMap and set to nil before init finishes.
    
    
**/
var _typeInfoMapInit : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>> = ({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>);
        @:mergeBlock {};
        cast x;
    } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>);
/**
    // Predefined because it's needed by the Decoder
    
    
**/
var _tWireType : stdgo.encoding.gob.Gob.T_typeId = _mustGetTypeInfo(_wireTypeType)._id;
/**
    
    
    
**/
var _doFuzzTests : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("gob.fuzz" : stdgo.GoString), false, ("run the fuzz tests, which are large and very slow" : stdgo.GoString));
/**
    
    
    
**/
var _encodeT : stdgo.Slice<stdgo.encoding.gob.Gob.EncodeT> = (new stdgo.Slice<stdgo.encoding.gob.Gob.EncodeT>(
14,
14,
(new stdgo.encoding.gob.Gob.EncodeT((0i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((15i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (15 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((255i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((65535i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(3, 3, (254 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((16777215i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (253 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((4294967295i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(5, 5, (252 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((1099511627775i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(6, 6, (251 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((281474976710655i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(7, 7, (250 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((72057594037927935i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (249 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((-1i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
9,
9,
(248 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((4369i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(3, 3, (254 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((1229782938247303441i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
9,
9,
(248 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((-8608480567731124088i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
9,
9,
(248 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT),
(new stdgo.encoding.gob.Gob.EncodeT((-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
9,
9,
(248 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.EncodeT)) : stdgo.Slice<stdgo.encoding.gob.Gob.EncodeT>);
/**
    // The result of encoding a true boolean with field number 7
    
    
**/
var _boolResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (7 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    // The result of encoding a number 17 with field number 7
    
    
**/
var _signedResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (7 : stdgo.StdGoTypes.GoUInt8), (34 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _unsignedResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (7 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _floatResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (7 : stdgo.StdGoTypes.GoUInt8), (254 : stdgo.StdGoTypes.GoUInt8), (49 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    // The result of encoding a number 17+19i with field number 7
    
    
**/
var _complexResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(7, 7, (7 : stdgo.StdGoTypes.GoUInt8), (254 : stdgo.StdGoTypes.GoUInt8), (49 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8), (254 : stdgo.StdGoTypes.GoUInt8), (51 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    // The result of encoding "hello" with field number 7
    
    
**/
var _bytesResult : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(7, 7, (7 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoUInt8), (104 : stdgo.StdGoTypes.GoUInt8), (101 : stdgo.StdGoTypes.GoUInt8), (108 : stdgo.StdGoTypes.GoUInt8), (108 : stdgo.StdGoTypes.GoUInt8), (111 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _singletons : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(8, 8, stdgo.Go.toInterface(true), stdgo.Go.toInterface((7 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((10u32 : stdgo.StdGoTypes.GoUInt)), stdgo.Go.toInterface((3.2 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((11 : stdgo.StdGoTypes.GoInt), (22 : stdgo.StdGoTypes.GoInt), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoFloat32>(3, 3, (0.5 : stdgo.StdGoTypes.GoFloat64), (0.25 : stdgo.StdGoTypes.GoFloat64), (0.125 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
        @:mergeBlock {
            x.set(("one" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
            x.set(("two" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    // Types not supported at top level by the Encoder.
    
    
**/
var _unsupportedValues : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(2, 2, stdgo.Go.toInterface(new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface(function(_a:stdgo.StdGoTypes.GoInt):Bool {
        return true;
    })) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _singleTests : stdgo.Slice<stdgo.encoding.gob.Gob.SingleTest> = (new stdgo.Slice<stdgo.encoding.gob.Gob.SingleTest>(8, 8, (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface((17 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.Go.pointer(_testInt)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface(((17.5 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)), stdgo.Go.toInterface(stdgo.Go.pointer(_testFloat32)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface(("bike shed" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.pointer(_testString)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(4, 4, ("bike" : stdgo.GoString), ("shed" : stdgo.GoString), ("paint" : stdgo.GoString), ("color" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)), stdgo.Go.toInterface((stdgo.Go.setRef(_testSlice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.GoString>>)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
        @:mergeBlock {
            x.set(("seven" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt));
            x.set(("twelve" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((stdgo.Go.setRef(_testMap) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((4 : stdgo.StdGoTypes.GoInt), (55 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((stdgo.Go.setRef(_testArray) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((4 : stdgo.StdGoTypes.GoInt), (55 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), (44 : stdgo.StdGoTypes.GoInt), (22 : stdgo.StdGoTypes.GoInt), (66 : stdgo.StdGoTypes.GoInt), (1234 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((stdgo.Go.setRef(_testArray) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), stdgo.Go.str()?.__copy__()) : stdgo.encoding.gob.Gob.SingleTest), (new stdgo.encoding.gob.Gob.SingleTest(stdgo.Go.toInterface((172 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.Go.pointer(_testFloat32)), ("type" : stdgo.GoString)) : stdgo.encoding.gob.Gob.SingleTest)) : stdgo.Slice<stdgo.encoding.gob.Gob.SingleTest>);
/**
    
    
    
**/
var _ignoreTests : stdgo.Slice<stdgo.encoding.gob.Gob.T_ignoreTest> = (new stdgo.Slice<stdgo.encoding.gob.Gob.T_ignoreTest>(6, 6, (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface((stdgo.Go.setRef((new OnTheFly((23 : stdgo.StdGoTypes.GoInt)) : OnTheFly)) : stdgo.StdGoTypes.Ref<OnTheFly>)), stdgo.Go.toInterface((stdgo.Go.setRef((new T_emptyStruct() : T_emptyStruct)) : stdgo.StdGoTypes.Ref<T_emptyStruct>))) : stdgo.encoding.gob.Gob.T_ignoreTest), (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface((stdgo.Go.setRef((new OnTheFly((23 : stdgo.StdGoTypes.GoInt)) : OnTheFly)) : stdgo.StdGoTypes.Ref<OnTheFly>)), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_ignoreTest), (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface(("hello, world" : stdgo.GoString)), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_ignoreTest), (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_ignoreTest), (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Struct0(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.NewType0(("value0" : stdgo.GoString)) : stdgo.encoding.gob.Gob.NewType0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NewType0>))) : stdgo.encoding.gob.Gob.Struct0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Struct0>)), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_ignoreTest), (new stdgo.encoding.gob.Gob.T_ignoreTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(("hi" : stdgo.GoString)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.NewType0(("value1" : stdgo.GoString)) : stdgo.encoding.gob.Gob.NewType0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NewType0>)), stdgo.Go.toInterface((23 : stdgo.StdGoTypes.GoInt))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_ignoreTest)) : stdgo.Slice<stdgo.encoding.gob.Gob.T_ignoreTest>);
/**
    
    
    
**/
var _badDataTests : stdgo.Slice<stdgo.encoding.gob.Gob.T_badDataTest> = (new stdgo.Slice<stdgo.encoding.gob.Gob.T_badDataTest>(
9,
9,
(new stdgo.encoding.gob.Gob.T_badDataTest(stdgo.Go.str()?.__copy__(), ("EOF" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("7F6869" : stdgo.GoString), ("unexpected EOF" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("036e6f77206973207468652074696d6520666f7220616c6c20676f6f64206d656e" : stdgo.GoString), ("unknown type id" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>))) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("0424666f6f" : stdgo.GoString), ("field numbers out of bounds" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>))) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("05100028557b02027f8302" : stdgo.GoString), ("interface encoding" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("130a00fb5dad0bf8ff020263e70002fa28020202a89859" : stdgo.GoString), ("slice length too large" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("0f1000fb285d003316020735ff023a65c5" : stdgo.GoString), ("interface encoding" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("03fffb0616fffc00f902ff02ff03bf005d02885802a311a8120228022c028ee7" : stdgo.GoString), ("GobDecoder" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest),
(new stdgo.encoding.gob.Gob.T_badDataTest(("10fe010f020102fe01100001fe010e000016fe010d030102fe010e00010101015801fe01100000000bfe011000f85555555555555555" : stdgo.GoString), ("exceeds input size" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.encoding.gob.Gob.T_badDataTest)) : stdgo.Slice<stdgo.encoding.gob.Gob.T_badDataTest>);
/**
    
    
    
**/
var _basicTypes : stdgo.Slice<stdgo.encoding.gob.Gob.T_typeT> = (new stdgo.Slice<stdgo.encoding.gob.Gob.T_typeT>(6, 6, (new stdgo.encoding.gob.Gob.T_typeT(_tBool, ("bool" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT), (new stdgo.encoding.gob.Gob.T_typeT(_tInt, ("int" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT), (new stdgo.encoding.gob.Gob.T_typeT(_tUint, ("uint" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT), (new stdgo.encoding.gob.Gob.T_typeT(_tFloat, ("float" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT), (new stdgo.encoding.gob.Gob.T_typeT(_tBytes, ("bytes" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT), (new stdgo.encoding.gob.Gob.T_typeT(_tString, ("string" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_typeT)) : stdgo.Slice<stdgo.encoding.gob.Gob.T_typeT>);
/**
    
    
    
**/
var _noValue = ({} : stdgo.reflect.Reflect.Value);
/**
    
    
    
**/
final _intBits : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _uintptrBits : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // tooBig provides a sanity check for sizes; used in several places. Upper limit
    // of is 1GB on 32-bit systems, 8GB on 64-bit, allowing room to grow a little
    // without overflow.
    
    
**/
final _tooBig : stdgo.StdGoTypes.GoUInt64 = (1073741824i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // If debug.go is compiled into the program, debugFunc prints a human-readable
    // representation of the gob data read from r by calling that file's Debug function.
    // Otherwise it is nil.
    
    
**/
var _debugFunc = null;
/**
    
    
    
**/
final _uint64Size : stdgo.StdGoTypes.GoUInt64 = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _singletonField : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Before we encode a message, we reserve space at the head of the
    // buffer in which to encode its length. This means we can use the
    // buffer to assemble the message without another allocation.
    
    // Maximum size of an encoded length.
**/
final _maxLength : stdgo.StdGoTypes.GoUInt64 = (9i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _testInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    
    
    
**/
var _testFloat32 = (0 : stdgo.StdGoTypes.GoFloat32);
/**
    
    
    
**/
var _testString = ("" : stdgo.GoString);
/**
    
    
    
**/
var _testSlice = (null : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _testMap = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
/**
    
    
    
**/
var _testArray = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 7) (0 : stdgo.StdGoTypes.GoInt)]);
/**
    // externalEncoding bits
    
    // GobEncoder or GobDecoder
**/
final _xGob : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // externalEncoding bits
    
    // encoding.BinaryMarshaler or encoding.BinaryUnmarshaler
**/
final _xBinary = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // externalEncoding bits
    
    // encoding.TextMarshaler or encoding.TextUnmarshaler
**/
final _xText = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // map[reflect.Type]*userTypeInfo
**/
var _userTypeCache = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    // set while building a type
**/
var _typeLock = ({} : stdgo.sync.Sync.Mutex);
/**
    
    
    // lowest id number granted to user
**/
final _firstUserId : stdgo.StdGoTypes.GoUInt64 = (64i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // set in init() after builtins are established
**/
var _builtinIdToTypeSlice = new stdgo.GoArray<stdgo.encoding.gob.Gob.T_gobType>(...[for (i in 0 ... 64) (null : stdgo.encoding.gob.Gob.T_gobType)]);
/**
    
    
    // userTypeInfo of wireType
**/
var _wireTypeUserInfo = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_userTypeInfo>);
/**
    // typeInfoMap is an atomic pointer to map[reflect.Type]*typeInfo.
    // It's updated copy-on-write. Readers just do an atomic load
    // to get the current version of the map. Writers make a full copy of
    // the map and atomically update the pointer to point to the new map.
    // Under heavy read contention, this is significantly faster than a map
    // protected by a mutex.
    
    
**/
var _typeInfoMap = ({} : stdgo.sync.atomic_.Atomic_.Value);
/**
    
    
    // map[string]reflect.Type
**/
var _nameToConcreteType = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    // map[reflect.Type]string
**/
var _concreteTypeToName = ({} : stdgo.sync.Sync.Map_);
/**
    // An interface with several implementations
    
    
**/
typedef Squarer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function square():stdgo.StdGoTypes.GoInt;
};
/**
    
    
    
**/
typedef T_interfaceIndirectTestI = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function f():Bool;
};
/**
    
    
    
**/
typedef T_gobType = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function _id():T_typeId;
    /**
        
        
        
    **/
    public dynamic function _setId(_id:T_typeId):Void;
    /**
        
        
        
    **/
    public dynamic function _name():stdgo.GoString;
    /**
        
        
        // not public; only for debugging
    **/
    public dynamic function _string():stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString;
};
/**
    // GobEncoder is the interface describing data that provides its own
    // representation for encoding values for transmission to a GobDecoder.
    // A type that implements GobEncoder and GobDecoder has complete
    // control over the representation of its data and may therefore
    // contain things such as private fields, channels, and functions,
    // which are not usually transmissible in gob streams.
    //
    // Note: Since gobs can be stored permanently, it is good design
    // to guarantee the encoding used by a GobEncoder is stable as the
    // software evolves. For instance, it might make sense for GobEncode
    // to include a version number in the encoding.
    
    
**/
typedef GobEncoder = stdgo.StdGoTypes.StructType & {
    /**
        // GobEncode returns a byte slice representing the encoding of the
        // receiver for transmission to a GobDecoder, usually of the same
        // concrete type.
        
        
    **/
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; };
};
/**
    // GobDecoder is the interface describing data that provides its own
    // routine for decoding transmitted values sent by a GobEncoder.
    
    
**/
typedef GobDecoder = stdgo.StdGoTypes.StructType & {
    /**
        // GobDecode overwrites the receiver, which must be a pointer,
        // with the value represented by the byte slice, which was written
        // by GobEncode, usually for the same concrete type.
        
        
    **/
    public dynamic function gobDecode(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error;
};
/**
    // Guarantee encoding format by comparing some encodings to hand-written values
    
    
**/
@:structInit class EncodeT {
    public var _x : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _b : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_x:stdgo.StdGoTypes.GoUInt64, ?_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_x != null) this._x = _x;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EncodeT(_x, _b);
    }
}
/**
    // These three structures have the same data with different indirections
    
    
**/
@:structInit class T0 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.StdGoTypes.GoInt = 0;
    public var c : stdgo.StdGoTypes.GoInt = 0;
    public var d : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.StdGoTypes.GoInt, ?c:stdgo.StdGoTypes.GoInt, ?d:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T0(a, b, c, d);
    }
}
/**
    
    
    
**/
@:structInit class T1 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
    public var c : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
    public var d : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, ?c:stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>, ?d:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T1(a, b, c, d);
    }
}
/**
    
    
    
**/
@:structInit class T2 {
    public var a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>);
    public var b : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
    public var c : stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
    public var d : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>, ?b:stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>, ?c:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, ?d:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T2(a, b, c, d);
    }
}
/**
    
    
    
**/
@:structInit class RT0 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var c : stdgo.StdGoTypes.GoFloat64 = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.GoString, ?c:stdgo.StdGoTypes.GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RT0(a, b, c);
    }
}
/**
    
    
    
**/
@:structInit class RT1 {
    public var c : stdgo.StdGoTypes.GoFloat64 = 0;
    public var b : stdgo.GoString = "";
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var notSet : stdgo.GoString = "";
    public function new(?c:stdgo.StdGoTypes.GoFloat64, ?b:stdgo.GoString, ?a:stdgo.StdGoTypes.GoInt, ?notSet:stdgo.GoString) {
        if (c != null) this.c = c;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
        if (notSet != null) this.notSet = notSet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RT1(c, b, a, notSet);
    }
}
/**
    // Like an RT0 but with fields we'll ignore on the decode side.
    
    
**/
@:structInit class IT0 {
    public var a : stdgo.StdGoTypes.GoInt64 = 0;
    public var b : stdgo.GoString = "";
    public var ignore_d : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var ignore_e : stdgo.GoArray<stdgo.StdGoTypes.GoFloat64> = new stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoFloat64)]);
    public var ignore_f : Bool = false;
    public var ignore_g : stdgo.GoString = "";
    public var ignore_h : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var ignore_i : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1>);
    public var ignore_m : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
    public var c : stdgo.StdGoTypes.GoFloat64 = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt64, ?b:stdgo.GoString, ?ignore_d:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?ignore_e:stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>, ?ignore_f:Bool, ?ignore_g:stdgo.GoString, ?ignore_h:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?ignore_i:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1>, ?ignore_m:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>, ?c:stdgo.StdGoTypes.GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (ignore_d != null) this.ignore_d = ignore_d;
        if (ignore_e != null) this.ignore_e = ignore_e;
        if (ignore_f != null) this.ignore_f = ignore_f;
        if (ignore_g != null) this.ignore_g = ignore_g;
        if (ignore_h != null) this.ignore_h = ignore_h;
        if (ignore_i != null) this.ignore_i = ignore_i;
        if (ignore_m != null) this.ignore_m = ignore_m;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IT0(a, b, ignore_d, ignore_e, ignore_f, ignore_g, ignore_h, ignore_i, ignore_m, c);
    }
}
/**
    
    
    
**/
@:structInit class Indirect {
    public var a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>>);
    public var s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>>);
    public var m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>>);
    public function new(?a:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>>, ?s:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>>, ?m:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>>) {
        if (a != null) this.a = a;
        if (s != null) this.s = s;
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Indirect(a, s, m);
    }
}
/**
    
    
    
**/
@:structInit class Direct {
    public var a : stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)]);
    public var s : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
    public function new(?a:stdgo.GoArray<stdgo.StdGoTypes.GoInt>, ?s:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?m:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>) {
        if (a != null) this.a = a;
        if (s != null) this.s = s;
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Direct(a, s, m);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.Point_static_extension) class Point {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
/**
    // A struct with interfaces in it.
    
    
**/
@:structInit class InterfaceItem {
    public var i : stdgo.StdGoTypes.GoInt = 0;
    public var sq1 : stdgo.encoding.gob.Gob.Squarer = (null : stdgo.encoding.gob.Gob.Squarer);
    public var sq2 : stdgo.encoding.gob.Gob.Squarer = (null : stdgo.encoding.gob.Gob.Squarer);
    public var sq3 : stdgo.encoding.gob.Gob.Squarer = (null : stdgo.encoding.gob.Gob.Squarer);
    public var f : stdgo.StdGoTypes.GoFloat64 = 0;
    public var sq : stdgo.Slice<stdgo.encoding.gob.Gob.Squarer> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.Squarer>);
    public function new(?i:stdgo.StdGoTypes.GoInt, ?sq1:stdgo.encoding.gob.Gob.Squarer, ?sq2:stdgo.encoding.gob.Gob.Squarer, ?sq3:stdgo.encoding.gob.Gob.Squarer, ?f:stdgo.StdGoTypes.GoFloat64, ?sq:stdgo.Slice<stdgo.encoding.gob.Gob.Squarer>) {
        if (i != null) this.i = i;
        if (sq1 != null) this.sq1 = sq1;
        if (sq2 != null) this.sq2 = sq2;
        if (sq3 != null) this.sq3 = sq3;
        if (f != null) this.f = f;
        if (sq != null) this.sq = sq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InterfaceItem(i, sq1, sq2, sq3, f, sq);
    }
}
/**
    // The same struct without interfaces
    
    
**/
@:structInit class NoInterfaceItem {
    public var i : stdgo.StdGoTypes.GoInt = 0;
    public var f : stdgo.StdGoTypes.GoFloat64 = 0;
    public function new(?i:stdgo.StdGoTypes.GoInt, ?f:stdgo.StdGoTypes.GoFloat64) {
        if (i != null) this.i = i;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NoInterfaceItem(i, f);
    }
}
/**
    // A struct with all basic types, stored in interfaces.
    
    
**/
@:structInit class BasicInterfaceItem {
    public var int_ : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var int8 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var int16 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var int32 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var int64 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var uint : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var uint8 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var uint16 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var uint32 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var uint64 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var float32 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var float64 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var complex64 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var complex128 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var bool_ : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var string : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var bytes : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?int_:stdgo.StdGoTypes.AnyInterface, ?int8:stdgo.StdGoTypes.AnyInterface, ?int16:stdgo.StdGoTypes.AnyInterface, ?int32:stdgo.StdGoTypes.AnyInterface, ?int64:stdgo.StdGoTypes.AnyInterface, ?uint:stdgo.StdGoTypes.AnyInterface, ?uint8:stdgo.StdGoTypes.AnyInterface, ?uint16:stdgo.StdGoTypes.AnyInterface, ?uint32:stdgo.StdGoTypes.AnyInterface, ?uint64:stdgo.StdGoTypes.AnyInterface, ?float32:stdgo.StdGoTypes.AnyInterface, ?float64:stdgo.StdGoTypes.AnyInterface, ?complex64:stdgo.StdGoTypes.AnyInterface, ?complex128:stdgo.StdGoTypes.AnyInterface, ?bool_:stdgo.StdGoTypes.AnyInterface, ?string:stdgo.StdGoTypes.AnyInterface, ?bytes:stdgo.StdGoTypes.AnyInterface) {
        if (int_ != null) this.int_ = int_;
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint != null) this.uint = uint;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (complex64 != null) this.complex64 = complex64;
        if (complex128 != null) this.complex128 = complex128;
        if (bool_ != null) this.bool_ = bool_;
        if (string != null) this.string = string;
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BasicInterfaceItem(
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
    }
}
/**
    
    
    
**/
@:structInit class PtrInterfaceItem {
    public var str1 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var str2 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?str1:stdgo.StdGoTypes.AnyInterface, ?str2:stdgo.StdGoTypes.AnyInterface) {
        if (str1 != null) this.str1 = str1;
        if (str2 != null) this.str2 = str2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PtrInterfaceItem(str1, str2);
    }
}
/**
    
    
    
**/
@:structInit class U {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var _c : stdgo.StdGoTypes.GoFloat64 = 0;
    public var d : stdgo.StdGoTypes.GoUInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.GoString, ?_c:stdgo.StdGoTypes.GoFloat64, ?d:stdgo.StdGoTypes.GoUInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (_c != null) this._c = _c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(a, b, _c, d);
    }
}
/**
    // A type that won't be defined in the gob until we send it in an interface value.
    
    
**/
@:structInit class OnTheFly {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OnTheFly(a);
    }
}
/**
    
    
    
**/
@:structInit class DT {
    /**
        //	X OnTheFly
    **/
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var c : stdgo.StdGoTypes.GoFloat64 = 0;
    public var i : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var j : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var i_nil : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
    public var t : stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)]);
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.GoString, ?c:stdgo.StdGoTypes.GoFloat64, ?i:stdgo.StdGoTypes.AnyInterface, ?j:stdgo.StdGoTypes.AnyInterface, ?i_nil:stdgo.StdGoTypes.AnyInterface, ?m:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>, ?t:stdgo.GoArray<stdgo.StdGoTypes.GoInt>, ?s:stdgo.Slice<stdgo.GoString>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (i != null) this.i = i;
        if (j != null) this.j = j;
        if (i_nil != null) this.i_nil = i_nil;
        if (m != null) this.m = m;
        if (t != null) this.t = t;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DT(a, b, c, i, j, i_nil, m, t, s);
    }
}
/**
    
    
    
**/
@:structInit class LargeSliceByte {
    public var s : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?s:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceByte(s);
    }
}
/**
    
    
    
**/
@:structInit class LargeSliceInt8 {
    public var s : stdgo.Slice<stdgo.StdGoTypes.GoInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>);
    public function new(?s:stdgo.Slice<stdgo.StdGoTypes.GoInt8>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceInt8(s);
    }
}
/**
    
    
    
**/
@:structInit class StringPair {
    public var a : stdgo.GoString = "";
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoString, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringPair(a, b);
    }
}
/**
    
    
    
**/
@:structInit class LargeSliceStruct {
    public var s : stdgo.Slice<stdgo.encoding.gob.Gob.StringPair> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.StringPair>);
    public function new(?s:stdgo.Slice<stdgo.encoding.gob.Gob.StringPair>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceStruct(s);
    }
}
/**
    
    
    
**/
@:structInit class LargeSliceString {
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?s:stdgo.Slice<stdgo.GoString>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceString(s);
    }
}
/**
    // decoderState is the execution state of an instance of the decoder. A new state
    // is created for nested objects.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_decoderState_static_extension) class T_decoderState {
    public var _dec : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Decoder> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Decoder>);
    /**
        // The buffer is stored with an extra indirection because it may be replaced
        // if we load a type during decode (when reading an interface value).
    **/
    public var _b : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>);
    public var _fieldnum : stdgo.StdGoTypes.GoInt = 0;
    public var _next : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>);
    public function new(?_dec:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Decoder>, ?_b:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>, ?_fieldnum:stdgo.StdGoTypes.GoInt, ?_next:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>) {
        if (_dec != null) this._dec = _dec;
        if (_b != null) this._b = _b;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoderState(_dec, _b, _fieldnum, _next);
    }
}
/**
    // decBuffer is an extremely simple, fast implementation of a read-only byte buffer.
    // It is initialized by calling Size and then copying the data into the slice returned by Bytes().
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_decBuffer_static_extension) class T_decBuffer {
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _offset : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_offset:stdgo.StdGoTypes.GoInt) {
        if (_data != null) this._data = _data;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decBuffer(_data, _offset);
    }
}
/**
    // The 'instructions' of the decoding machine
    
    
**/
@:structInit @:private class T_decInstr {
    public var _op : stdgo.encoding.gob.Gob.T_decOp = (null : stdgo.encoding.gob.Gob.T_decOp);
    public var _field : stdgo.StdGoTypes.GoInt = 0;
    public var _index : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var _ovfl : stdgo.Error = (null : stdgo.Error);
    public function new(?_op:stdgo.encoding.gob.Gob.T_decOp, ?_field:stdgo.StdGoTypes.GoInt, ?_index:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?_ovfl:stdgo.Error) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_ovfl != null) this._ovfl = _ovfl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decInstr(_op, _field, _index, _ovfl);
    }
}
/**
    // The encoder engine is an array of instructions indexed by field number of the incoming
    // decoder. It is executed with random access according to field number.
    
    
**/
@:structInit @:private class T_decEngine {
    public var _instr : stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr>);
    public var _numInstr : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_instr:stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr>, ?_numInstr:stdgo.StdGoTypes.GoInt) {
        if (_instr != null) this._instr = _instr;
        if (_numInstr != null) this._numInstr = _numInstr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decEngine(_instr, _numInstr);
    }
}
/**
    // emptyStruct is the type we compile into when ignoring a struct value.
    
    
**/
@:structInit @:private class T_emptyStruct {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyStruct();
    }
}
/**
    // A Decoder manages the receipt of type and data information read from the
    // remote side of a connection.  It is safe for concurrent use by multiple
    // goroutines.
    //
    // The Decoder does only basic sanity checking on decoded input sizes,
    // and its limits are not configurable. Take caution when decoding gob data
    // from untrusted sources.
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.Decoder_static_extension) class Decoder {
    public var _mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _buf : stdgo.encoding.gob.Gob.T_decBuffer = ({} : stdgo.encoding.gob.Gob.T_decBuffer);
    public var _wireType : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>> = (null : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>>);
    public var _decoderCache : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>> = (null : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>>);
    public var _ignorerCache : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>> = (null : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>);
    public var _freeList : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>);
    public var _countBuf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_r:stdgo.io.Io.Reader, ?_buf:stdgo.encoding.gob.Gob.T_decBuffer, ?_wireType:stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>>, ?_decoderCache:stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>>, ?_ignorerCache:stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>, ?_freeList:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>, ?_countBuf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_wireType != null) this._wireType = _wireType;
        if (_decoderCache != null) this._decoderCache = _decoderCache;
        if (_ignorerCache != null) this._ignorerCache = _ignorerCache;
        if (_freeList != null) this._freeList = _freeList;
        if (_countBuf != null) this._countBuf = _countBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_mutex, _r, _buf, _wireType, _decoderCache, _ignorerCache, _freeList, _countBuf, _err);
    }
}
/**
    // encoderState is the global execution state of an instance of the encoder.
    // Field numbers are delta encoded and always increase. The field
    // number is initialized to -1 so 0 comes out as delta(1). A delta of
    // 0 terminates the structure.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_encoderState_static_extension) class T_encoderState {
    public var _enc : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Encoder> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Encoder>);
    public var _b : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>);
    public var _sendZero : Bool = false;
    public var _fieldnum : stdgo.StdGoTypes.GoInt = 0;
    public var _buf : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 9) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var _next : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>);
    public function new(?_enc:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Encoder>, ?_b:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>, ?_sendZero:Bool, ?_fieldnum:stdgo.StdGoTypes.GoInt, ?_buf:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?_next:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>) {
        if (_enc != null) this._enc = _enc;
        if (_b != null) this._b = _b;
        if (_sendZero != null) this._sendZero = _sendZero;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_buf != null) this._buf = _buf;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoderState(_enc, _b, _sendZero, _fieldnum, _buf, _next);
    }
}
/**
    // encBuffer is an extremely simple, fast implementation of a write-only byte buffer.
    // It never returns a non-nil error, but Write returns an error value so it matches io.Writer.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_encBuffer_static_extension) class T_encBuffer {
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _scratch : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 64) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?_data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_scratch:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (_data != null) this._data = _data;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encBuffer(_data, _scratch);
    }
}
/**
    // The 'instructions' of the encoding machine
    
    
**/
@:structInit @:private class T_encInstr {
    public var _op : stdgo.encoding.gob.Gob.T_encOp = (null : stdgo.encoding.gob.Gob.T_encOp);
    public var _field : stdgo.StdGoTypes.GoInt = 0;
    public var _index : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var _indir : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_op:stdgo.encoding.gob.Gob.T_encOp, ?_field:stdgo.StdGoTypes.GoInt, ?_index:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?_indir:stdgo.StdGoTypes.GoInt) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_indir != null) this._indir = _indir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encInstr(_op, _field, _index, _indir);
    }
}
/**
    // encEngine an array of instructions indexed by field number of the encoding
    // data, typically a struct. It is executed top to bottom, walking the struct.
    
    
**/
@:structInit @:private class T_encEngine {
    public var _instr : stdgo.Slice<stdgo.encoding.gob.Gob.T_encInstr> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_encInstr>);
    public function new(?_instr:stdgo.Slice<stdgo.encoding.gob.Gob.T_encInstr>) {
        if (_instr != null) this._instr = _instr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encEngine(_instr);
    }
}
/**
    // An Encoder manages the transmission of type and data information to the
    // other side of a connection.  It is safe for concurrent use by multiple
    // goroutines.
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.Encoder_static_extension) class Encoder {
    public var _mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _w : stdgo.Slice<stdgo.io.Io.Writer> = (null : stdgo.Slice<stdgo.io.Io.Writer>);
    public var _sent : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId> = (null : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>);
    public var _countState : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>);
    public var _freeList : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>);
    public var _byteBuf : stdgo.encoding.gob.Gob.T_encBuffer = ({} : stdgo.encoding.gob.Gob.T_encBuffer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_w:stdgo.Slice<stdgo.io.Io.Writer>, ?_sent:stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>, ?_countState:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>, ?_freeList:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>, ?_byteBuf:stdgo.encoding.gob.Gob.T_encBuffer, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_w != null) this._w = _w;
        if (_sent != null) this._sent = _sent;
        if (_countState != null) this._countState = _countState;
        if (_freeList != null) this._freeList = _freeList;
        if (_byteBuf != null) this._byteBuf = _byteBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_mutex, _w, _sent, _countState, _freeList, _byteBuf, _err);
    }
}
/**
    
    
    
**/
@:structInit class ET0 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET0(a, b);
    }
}
/**
    
    
    
**/
@:structInit class ET2 {
    public var x : stdgo.GoString = "";
    public function new(?x:stdgo.GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET2(x);
    }
}
/**
    
    
    
**/
@:structInit class ET1 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var et2 : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>);
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?et2:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET1(a, et2, next);
    }
}
/**
    // Like ET1 but with a different name for a field
    
    
**/
@:structInit class ET3 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var et2 : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>);
    public var differentNext : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?et2:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>, ?differentNext:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (differentNext != null) this.differentNext = differentNext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET3(a, et2, differentNext);
    }
}
/**
    // Like ET1 but with a different type for a field
    
    
**/
@:structInit class ET4 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var et2 : stdgo.StdGoTypes.GoFloat64 = 0;
    public var next : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt, ?et2:stdgo.StdGoTypes.GoFloat64, ?next:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET4(a, et2, next);
    }
}
/**
    
    
    
**/
@:structInit class SingleTest {
    public var _in : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _out : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _err : stdgo.GoString = "";
    public function new(?_in:stdgo.StdGoTypes.AnyInterface, ?_out:stdgo.StdGoTypes.AnyInterface, ?_err:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SingleTest(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension) class T_interfaceIndirectTestT {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_interfaceIndirectTestT();
    }
}
/**
    
    
    
**/
@:structInit class Struct0 {
    public var i : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?i:stdgo.StdGoTypes.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Struct0(i);
    }
}
/**
    
    
    
**/
@:structInit class NewType0 {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NewType0(s);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_ignoreTest {
    public var _in : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _out : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_in:stdgo.StdGoTypes.AnyInterface, ?_out:stdgo.StdGoTypes.AnyInterface) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ignoreTest(_in, _out);
    }
}
/**
    // Another bug from golang-nuts, involving nested interfaces.
    
    
**/
@:structInit class Bug0Outer {
    public var bug0Field : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?bug0Field:stdgo.StdGoTypes.AnyInterface) {
        if (bug0Field != null) this.bug0Field = bug0Field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug0Outer(bug0Field);
    }
}
/**
    
    
    
**/
@:structInit class Bug0Inner {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug0Inner(a);
    }
}
/**
    
    
    
**/
@:structInit class Bug1Elem {
    public var name : stdgo.GoString = "";
    public var id : stdgo.StdGoTypes.GoInt = 0;
    public function new(?name:stdgo.GoString, ?id:stdgo.StdGoTypes.GoInt) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug1Elem(name, id);
    }
}
/**
    // Should be able to have unrepresentable fields (chan, func, *chan etc.); we just ignore them.
    
    
**/
@:structInit class Bug2 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var c : stdgo.Chan<stdgo.StdGoTypes.GoInt> = (null : stdgo.Chan<stdgo.StdGoTypes.GoInt>);
    public var cp : stdgo.StdGoTypes.Ref<stdgo.Chan<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.Chan<stdgo.StdGoTypes.GoInt>>);
    public var f : () -> Void = null;
    public var fpp : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<() -> Void>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<() -> Void>>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?c:stdgo.Chan<stdgo.StdGoTypes.GoInt>, ?cp:stdgo.StdGoTypes.Ref<stdgo.Chan<stdgo.StdGoTypes.GoInt>>, ?f:() -> Void, ?fpp:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<() -> Void>>) {
        if (a != null) this.a = a;
        if (c != null) this.c = c;
        if (cp != null) this.cp = cp;
        if (f != null) this.f = f;
        if (fpp != null) this.fpp = fpp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug2(a, c, cp, f, fpp);
    }
}
/**
    // Mutually recursive slices of structs caused problems.
    
    
**/
@:structInit class Bug3 {
    public var num : stdgo.StdGoTypes.GoInt = 0;
    public var children : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>);
    public function new(?num:stdgo.StdGoTypes.GoInt, ?children:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>) {
        if (num != null) this.num = num;
        if (children != null) this.children = children;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug3(num, children);
    }
}
/**
    
    
    
**/
@:structInit class Bug4Public {
    public var name : stdgo.GoString = "";
    public var secret : stdgo.encoding.gob.Gob.Bug4Secret = ({} : stdgo.encoding.gob.Gob.Bug4Secret);
    public function new(?name:stdgo.GoString, ?secret:stdgo.encoding.gob.Gob.Bug4Secret) {
        if (name != null) this.name = name;
        if (secret != null) this.secret = secret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug4Public(name, secret);
    }
}
/**
    
    
    
**/
@:structInit class Bug4Secret {
    public var _a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_a:stdgo.StdGoTypes.GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug4Secret(_a);
    }
}
/**
    
    
    
**/
@:structInit class Z {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Z();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_badDataTest {
    public var _input : stdgo.GoString = "";
    public var _error : stdgo.GoString = "";
    public var _data : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_input:stdgo.GoString, ?_error:stdgo.GoString, ?_data:stdgo.StdGoTypes.AnyInterface) {
        if (_input != null) this._input = _input;
        if (_error != null) this._error = _error;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badDataTest(_input, _error, _data);
    }
}
/**
    // A gobError is used to distinguish errors (panics) generated in this package.
    
    
**/
@:structInit @:private class T_gobError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gobError(_err);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.ByteStruct_static_extension) class ByteStruct {
    public var _a : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?_a:stdgo.StdGoTypes.GoUInt8) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ByteStruct(_a);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.StringStruct_static_extension) class StringStruct {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringStruct(_s);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.ArrayStruct_static_extension) class ArrayStruct {
    public var _a : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 8192) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?_a:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArrayStruct(_a);
    }
}
/**
    
    
    
**/
@:structInit class GobTest0 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest0(x, g);
    }
}
/**
    
    
    
**/
@:structInit class GobTest1 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest1(x, g);
    }
}
/**
    
    
    
**/
@:structInit class GobTest2 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.GoString = "";
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.GoString) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest2(x, g);
    }
}
/**
    
    
    
**/
@:structInit class GobTest3 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.Pointer<stdgo.encoding.gob.Gob.Gobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.Gobber>);
    public var b : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryGobber>);
    public var t : stdgo.Pointer<stdgo.encoding.gob.Gob.TextGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.TextGobber>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.Pointer<stdgo.encoding.gob.Gob.Gobber>, ?b:stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryGobber>, ?t:stdgo.Pointer<stdgo.encoding.gob.Gob.TextGobber>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest3(x, g, b, t);
    }
}
/**
    
    
    
**/
@:structInit class GobTest4 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var v : stdgo.encoding.gob.Gob.ValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber);
    public var bv : stdgo.encoding.gob.Gob.BinaryValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber);
    public var tv : stdgo.encoding.gob.Gob.TextValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?v:stdgo.encoding.gob.Gob.ValueGobber, ?bv:stdgo.encoding.gob.Gob.BinaryValueGobber, ?tv:stdgo.encoding.gob.Gob.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bv != null) this.bv = bv;
        if (tv != null) this.tv = tv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest4(x, v, bv, tv);
    }
}
/**
    
    
    
**/
@:structInit class GobTest5 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var v : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>);
    public var bv : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>);
    public var tv : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?v:stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>, ?bv:stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>, ?tv:stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bv != null) this.bv = bv;
        if (tv != null) this.tv = tv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest5(x, v, bv, tv);
    }
}
/**
    
    
    
**/
@:structInit class GobTest6 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var v : stdgo.encoding.gob.Gob.ValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber);
    public var w : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>);
    public var bv : stdgo.encoding.gob.Gob.BinaryValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber);
    public var bw : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>);
    public var tv : stdgo.encoding.gob.Gob.TextValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber);
    public var tw : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?v:stdgo.encoding.gob.Gob.ValueGobber, ?w:stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>, ?bv:stdgo.encoding.gob.Gob.BinaryValueGobber, ?bw:stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>, ?tv:stdgo.encoding.gob.Gob.TextValueGobber, ?tw:stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bv != null) this.bv = bv;
        if (bw != null) this.bw = bw;
        if (tv != null) this.tv = tv;
        if (tw != null) this.tw = tw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest6(x, v, w, bv, bw, tv, tw);
    }
}
/**
    
    
    
**/
@:structInit class GobTest7 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var v : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>);
    public var w : stdgo.encoding.gob.Gob.ValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber);
    public var bv : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>);
    public var bw : stdgo.encoding.gob.Gob.BinaryValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber);
    public var tv : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber> = (null : stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>);
    public var tw : stdgo.encoding.gob.Gob.TextValueGobber = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?v:stdgo.Pointer<stdgo.encoding.gob.Gob.ValueGobber>, ?w:stdgo.encoding.gob.Gob.ValueGobber, ?bv:stdgo.Pointer<stdgo.encoding.gob.Gob.BinaryValueGobber>, ?bw:stdgo.encoding.gob.Gob.BinaryValueGobber, ?tv:stdgo.Pointer<stdgo.encoding.gob.Gob.TextValueGobber>, ?tw:stdgo.encoding.gob.Gob.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bv != null) this.bv = bv;
        if (bw != null) this.bw = bw;
        if (tv != null) this.tv = tv;
        if (tw != null) this.tw = tw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest7(x, v, w, bv, bw, tv, tw);
    }
}
/**
    
    
    
**/
@:structInit class GobTestIgnoreEncoder {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestIgnoreEncoder(x);
    }
}
/**
    
    
    
**/
@:structInit class GobTestValueEncDec {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.encoding.gob.Gob.StringStruct = ({} : stdgo.encoding.gob.Gob.StringStruct);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.encoding.gob.Gob.StringStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestValueEncDec(x, g);
    }
}
/**
    
    
    
**/
@:structInit class GobTestIndirectEncDec {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var g : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?g:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestIndirectEncDec(x, g);
    }
}
/**
    
    
    
**/
@:structInit class GobTestArrayEncDec {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var a : stdgo.encoding.gob.Gob.ArrayStruct = ({} : stdgo.encoding.gob.Gob.ArrayStruct);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?a:stdgo.encoding.gob.Gob.ArrayStruct) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestArrayEncDec(x, a);
    }
}
/**
    
    
    
**/
@:structInit class GobTestIndirectArrayEncDec {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>>);
    public function new(?x:stdgo.StdGoTypes.GoInt, ?a:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>>) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestIndirectArrayEncDec(x, a);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_gobDecoderBug0_static_extension) class T_gobDecoderBug0 {
    public var _foo : stdgo.GoString = "";
    public var _bar : stdgo.GoString = "";
    public function new(?_foo:stdgo.GoString, ?_bar:stdgo.GoString) {
        if (_foo != null) this._foo = _foo;
        if (_bar != null) this._bar = _bar;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gobDecoderBug0(_foo, _bar);
    }
}
/**
    // Another bug: this caused a crash with the new Go1 Time type.
    // We throw in a gob-encoding array, to test another case of isZero,
    // and a struct containing a nil interface, to test a third.
    
    
**/
@:structInit @:private class T_isZeroBug {
    public var t : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var s : stdgo.GoString = "";
    public var i : stdgo.StdGoTypes.GoInt = 0;
    public var a : stdgo.encoding.gob.Gob.T_isZeroBugArray = new stdgo.encoding.gob.Gob.T_isZeroBugArray(...[for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var f : stdgo.encoding.gob.Gob.T_isZeroBugInterface = ({} : stdgo.encoding.gob.Gob.T_isZeroBugInterface);
    public function new(?t:stdgo.time.Time.Time, ?s:stdgo.GoString, ?i:stdgo.StdGoTypes.GoInt, ?a:stdgo.encoding.gob.Gob.T_isZeroBugArray, ?f:stdgo.encoding.gob.Gob.T_isZeroBugInterface) {
        if (t != null) this.t = t;
        if (s != null) this.s = s;
        if (i != null) this.i = i;
        if (a != null) this.a = a;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBug(t, s, i, a, f);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_isZeroBugInterface_static_extension) class T_isZeroBugInterface {
    public var i : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?i:stdgo.StdGoTypes.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBugInterface(i);
    }
}
/**
    
    
    
**/
@:structInit class Bench {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.StdGoTypes.GoFloat64 = 0;
    public var c : stdgo.GoString = "";
    public var d : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.StdGoTypes.GoFloat64, ?c:stdgo.GoString, ?d:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bench(a, b, c, d);
    }
}
/**
    // benchmarkBuf is a read buffer we can reset
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_benchmarkBuf_static_extension) class T_benchmarkBuf {
    public var _offset : stdgo.StdGoTypes.GoInt = 0;
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_offset:stdgo.StdGoTypes.GoInt, ?_data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_offset != null) this._offset = _offset;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkBuf(_offset, _data);
    }
}
/**
    // userTypeInfo stores the information associated with a type the user has handed
    // to the package. It's computed once and stored in a map keyed by reflection
    // type.
    
    
**/
@:structInit @:private class T_userTypeInfo {
    public var _user : stdgo.reflect.Reflect.Type = (null : stdgo.reflect.Reflect.Type);
    public var _base : stdgo.reflect.Reflect.Type = (null : stdgo.reflect.Reflect.Type);
    public var _indir : stdgo.StdGoTypes.GoInt = 0;
    public var _externalEnc : stdgo.StdGoTypes.GoInt = 0;
    public var _externalDec : stdgo.StdGoTypes.GoInt = 0;
    public var _encIndir : stdgo.StdGoTypes.GoInt8 = 0;
    public var _decIndir : stdgo.StdGoTypes.GoInt8 = 0;
    public function new(?_user:stdgo.reflect.Reflect.Type, ?_base:stdgo.reflect.Reflect.Type, ?_indir:stdgo.StdGoTypes.GoInt, ?_externalEnc:stdgo.StdGoTypes.GoInt, ?_externalDec:stdgo.StdGoTypes.GoInt, ?_encIndir:stdgo.StdGoTypes.GoInt8, ?_decIndir:stdgo.StdGoTypes.GoInt8) {
        if (_user != null) this._user = _user;
        if (_base != null) this._base = _base;
        if (_indir != null) this._indir = _indir;
        if (_externalEnc != null) this._externalEnc = _externalEnc;
        if (_externalDec != null) this._externalDec = _externalDec;
        if (_encIndir != null) this._encIndir = _encIndir;
        if (_decIndir != null) this._decIndir = _decIndir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_userTypeInfo(_user, _base, _indir, _externalEnc, _externalDec, _encIndir, _decIndir);
    }
}
/**
    // CommonType holds elements of all types.
    // It is a historical artifact, kept for binary compatibility and exported
    // only for the benefit of the package's encoding of type descriptors. It is
    // not intended for direct use by clients.
    
    
**/
@:structInit @:using(stdgo.encoding.gob.Gob.CommonType_static_extension) class CommonType {
    public var name : stdgo.GoString = "";
    public var id : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public function new(?name:stdgo.GoString, ?id:stdgo.encoding.gob.Gob.T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommonType(name, id);
    }
}
/**
    // Array type
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_arrayType_static_extension) class T_arrayType {
    @:embedded
    public var commonType : stdgo.encoding.gob.Gob.CommonType = ({} : stdgo.encoding.gob.Gob.CommonType);
    public var elem : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public var len : stdgo.StdGoTypes.GoInt = 0;
    public function new(?commonType:stdgo.encoding.gob.Gob.CommonType, ?elem:stdgo.encoding.gob.Gob.T_typeId, ?len:stdgo.StdGoTypes.GoInt) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo.encoding.gob.Gob.T_typeId return commonType._id();
    @:embedded
    public function _name():stdgo.GoString return commonType._name();
    @:embedded
    public function _setId(__0:stdgo.encoding.gob.Gob.T_typeId) commonType._setId(__0);
    public function __copy__() {
        return new T_arrayType(commonType, elem, len);
    }
}
/**
    // GobEncoder type (something that implements the GobEncoder interface)
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_gobEncoderType_static_extension) class T_gobEncoderType {
    @:embedded
    public var commonType : stdgo.encoding.gob.Gob.CommonType = ({} : stdgo.encoding.gob.Gob.CommonType);
    public function new(?commonType:stdgo.encoding.gob.Gob.CommonType) {
        if (commonType != null) this.commonType = commonType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo.encoding.gob.Gob.T_typeId return commonType._id();
    @:embedded
    public function _name():stdgo.GoString return commonType._name();
    @:embedded
    public function _setId(__0:stdgo.encoding.gob.Gob.T_typeId) commonType._setId(__0);
    public function __copy__() {
        return new T_gobEncoderType(commonType);
    }
}
/**
    // Map type
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_mapType_static_extension) class T_mapType {
    @:embedded
    public var commonType : stdgo.encoding.gob.Gob.CommonType = ({} : stdgo.encoding.gob.Gob.CommonType);
    public var key : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public var elem : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public function new(?commonType:stdgo.encoding.gob.Gob.CommonType, ?key:stdgo.encoding.gob.Gob.T_typeId, ?elem:stdgo.encoding.gob.Gob.T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo.encoding.gob.Gob.T_typeId return commonType._id();
    @:embedded
    public function _name():stdgo.GoString return commonType._name();
    @:embedded
    public function _setId(__0:stdgo.encoding.gob.Gob.T_typeId) commonType._setId(__0);
    public function __copy__() {
        return new T_mapType(commonType, key, elem);
    }
}
/**
    // Slice type
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_sliceType_static_extension) class T_sliceType {
    @:embedded
    public var commonType : stdgo.encoding.gob.Gob.CommonType = ({} : stdgo.encoding.gob.Gob.CommonType);
    public var elem : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public function new(?commonType:stdgo.encoding.gob.Gob.CommonType, ?elem:stdgo.encoding.gob.Gob.T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo.encoding.gob.Gob.T_typeId return commonType._id();
    @:embedded
    public function _name():stdgo.GoString return commonType._name();
    @:embedded
    public function _setId(__0:stdgo.encoding.gob.Gob.T_typeId) commonType._setId(__0);
    public function __copy__() {
        return new T_sliceType(commonType, elem);
    }
}
/**
    // Struct type
    
    
**/
@:structInit @:private class T_fieldType {
    public var name : stdgo.GoString = "";
    public var id : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public function new(?name:stdgo.GoString, ?id:stdgo.encoding.gob.Gob.T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldType(name, id);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_structType_static_extension) class T_structType {
    @:embedded
    public var commonType : stdgo.encoding.gob.Gob.CommonType = ({} : stdgo.encoding.gob.Gob.CommonType);
    public var field : stdgo.Slice<stdgo.encoding.gob.Gob.T_fieldType> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_fieldType>);
    public function new(?commonType:stdgo.encoding.gob.Gob.CommonType, ?field:stdgo.Slice<stdgo.encoding.gob.Gob.T_fieldType>) {
        if (commonType != null) this.commonType = commonType;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _id():stdgo.encoding.gob.Gob.T_typeId return commonType._id();
    @:embedded
    public function _name():stdgo.GoString return commonType._name();
    @:embedded
    public function _setId(__0:stdgo.encoding.gob.Gob.T_typeId) commonType._setId(__0);
    public function __copy__() {
        return new T_structType(commonType, field);
    }
}
/**
    // Representation of the information we send and receive about this type.
    // Each value we send is preceded by its type definition: an encoded int.
    // However, the very first time we send the value, we first send the pair
    // (-id, wireType).
    // For bootstrapping purposes, we assume that the recipient knows how
    // to decode a wireType; it is exactly the wireType struct here, interpreted
    // using the gob rules for sending a structure, except that we assume the
    // ids for wireType and structType etc. are known. The relevant pieces
    // are built in encode.go's init() function.
    // To maintain binary compatibility, if you extend this type, always put
    // the new fields last.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.gob.Gob.T_wireType_static_extension) class T_wireType {
    public var arrayT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_arrayType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_arrayType>);
    public var sliceT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>);
    public var structT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>);
    public var mapT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_mapType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_mapType>);
    public var gobEncoderT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>);
    public var binaryMarshalerT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>);
    public var textMarshalerT : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>);
    public function new(?arrayT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_arrayType>, ?sliceT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>, ?structT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>, ?mapT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_mapType>, ?gobEncoderT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>, ?binaryMarshalerT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>, ?textMarshalerT:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>) {
        if (arrayT != null) this.arrayT = arrayT;
        if (sliceT != null) this.sliceT = sliceT;
        if (structT != null) this.structT = structT;
        if (mapT != null) this.mapT = mapT;
        if (gobEncoderT != null) this.gobEncoderT = gobEncoderT;
        if (binaryMarshalerT != null) this.binaryMarshalerT = binaryMarshalerT;
        if (textMarshalerT != null) this.textMarshalerT = textMarshalerT;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wireType(arrayT, sliceT, structT, mapT, gobEncoderT, binaryMarshalerT, textMarshalerT);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_typeInfo {
    public var _id : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public var _encInit : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _encoder : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.encoding.gob.Gob.T_encEngine> = ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.encoding.gob.Gob.T_encEngine>);
    public var _wire : stdgo.encoding.gob.Gob.T_wireType = ({} : stdgo.encoding.gob.Gob.T_wireType);
    public function new(?_id:stdgo.encoding.gob.Gob.T_typeId, ?_encInit:stdgo.sync.Sync.Mutex, ?_encoder:stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.encoding.gob.Gob.T_encEngine>, ?_wire:stdgo.encoding.gob.Gob.T_wireType) {
        if (_id != null) this._id = _id;
        if (_encInit != null) this._encInit = _encInit;
        if (_encoder != null) this._encoder = _encoder;
        if (_wire != null) this._wire = _wire;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_id, _encInit, _encoder, _wire);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_typeT {
    public var _id : stdgo.encoding.gob.Gob.T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
    public var _str : stdgo.GoString = "";
    public function new(?_id:stdgo.encoding.gob.Gob.T_typeId, ?_str:stdgo.GoString) {
        if (_id != null) this._id = _id;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeT(_id, _str);
    }
}
/**
    
    
    
**/
@:structInit class Bar {
    public var x : stdgo.GoString = "";
    public function new(?x:stdgo.GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bar(x);
    }
}
/**
    // This structure has pointers and refers to itself, making it a good test case.
    
    
**/
@:structInit class Foo {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.StdGoTypes.GoInt32 = 0;
    public var c : stdgo.GoString = "";
    public var d : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var e : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>);
    public var f : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>>);
    public var g : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar>);
    public var h : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar>);
    public var i : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Foo> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Foo>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.StdGoTypes.GoInt32, ?c:stdgo.GoString, ?d:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?e:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>, ?f:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>>, ?g:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar>, ?h:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bar>, ?i:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Foo>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (f != null) this.f = f;
        if (g != null) this.g = g;
        if (h != null) this.h = h;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Foo(a, b, c, d, e, f, g, h, i);
    }
}
/**
    
    
    
**/
@:structInit class N1 {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new N1();
    }
}
/**
    
    
    
**/
@:structInit class N2 {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new N2();
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_0_static_extension) typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_1_static_extension) typedef T__struct_1 = {
    public var a : stdgo.StdGoTypes.GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _value : stdgo.StdGoTypes.AnyInterface;
    public var _mustPanic : Bool;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_3_static_extension) typedef T__struct_3 = {
    public var i : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_4_static_extension) typedef T__struct_4 = {
    public var hello : stdgo.StdGoTypes.GoInt;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _r7 : stdgo.StdGoTypes.GoInt;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _r6 : stdgo.StdGoTypes.GoInt;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _r5 : stdgo.StdGoTypes.GoInt;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _r4 : stdgo.StdGoTypes.GoInt;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _r3 : stdgo.StdGoTypes.GoInt;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _r2 : stdgo.StdGoTypes.GoInt;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _r1 : stdgo.StdGoTypes.GoInt;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.encoding.gob.Gob.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _t : stdgo.StdGoTypes.AnyInterface;
    public var _name : stdgo.GoString;
};
@:named @:using(stdgo.encoding.gob.Gob.Int__static_extension) typedef Int_ = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.gob.Gob.Float__static_extension) typedef Float_ = stdgo.StdGoTypes.GoFloat64;
@:named @:using(stdgo.encoding.gob.Gob.Vector_static_extension) typedef Vector = stdgo.Slice<stdgo.StdGoTypes.GoInt>;
@:named typedef String_ = stdgo.GoString;
@:named typedef T_decHelper = (stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>, stdgo.reflect.Reflect.Value, stdgo.StdGoTypes.GoInt, stdgo.Error) -> Bool;
/**
    // decOp is the signature of a decoding operator for a given type.
**/
@:named typedef T_decOp = (stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>, stdgo.reflect.Reflect.Value) -> Void;
@:named typedef T_encHelper = (stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>, stdgo.reflect.Reflect.Value) -> Bool;
/**
    // encOp is the signature of an encoding operator for a given type.
**/
@:named typedef T_encOp = (stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>, stdgo.reflect.Reflect.Value) -> Void;
@:named typedef Bug1StructMap = stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.Bug1Elem>;
@:named @:using(stdgo.encoding.gob.Gob.Gobber_static_extension) typedef Gobber = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.gob.Gob.ValueGobber_static_extension) typedef ValueGobber = stdgo.GoString;
@:named @:using(stdgo.encoding.gob.Gob.BinaryGobber_static_extension) typedef BinaryGobber = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.gob.Gob.BinaryValueGobber_static_extension) typedef BinaryValueGobber = stdgo.GoString;
@:named @:using(stdgo.encoding.gob.Gob.TextGobber_static_extension) typedef TextGobber = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.gob.Gob.TextValueGobber_static_extension) typedef TextValueGobber = stdgo.GoString;
@:named @:using(stdgo.encoding.gob.Gob.T_isZeroBugArray_static_extension) typedef T_isZeroBugArray = stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>;
/**
    // A typeId represents a gob Type as an integer that can be passed on the wire.
    // Internally, typeIds are used as keys to a map to recover the underlying type info.
**/
@:named @:using(stdgo.encoding.gob.Gob.T_typeId_static_extension) typedef T_typeId = stdgo.StdGoTypes.GoInt32;
/**
    // testError is meant to be used as a deferred function to turn a panic(gobError) into a
    // plain test.Error call.
**/
function _testError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _e:stdgo.StdGoTypes.AnyInterface = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_e != null) {
                _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_e : T_gobError)) : T_gobError)._err));
            };
        };
    }
function _newDecBuffer(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.Ref<T_decBuffer> {
        return (stdgo.Go.setRef(({ _data : _data } : stdgo.encoding.gob.Gob.T_decBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>);
    }
/**
    // Test basic encode/decode routines for unsigned integers
**/
function testUintCodec(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _b = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>);
            var _encState = _newEncoderState(_b);
            for (__0 => _tt in _encodeT) {
                _b.reset();
                _encState._encodeUint(_tt._x);
                if (!stdgo.bytes.Bytes.equal(_tt._b, _b.bytes())) {
                    _t.errorf(("encodeUint: %#x encode: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_tt._x), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_b.bytes()));
                };
            };
            {
                var _u:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
                stdgo.Go.cfor(true, _u = (_u + (1i64 : stdgo.StdGoTypes.GoUInt64)) * (7i64 : stdgo.StdGoTypes.GoUInt64), {
                    _b.reset();
                    _encState._encodeUint(_u);
                    var _decState = _newDecodeState(_newDecBuffer(_b.bytes()));
                    var _v:stdgo.StdGoTypes.GoUInt64 = _decState._decodeUint();
                    if (_u != (_v)) {
                        _t.errorf(("Encode/Decode: sent %#x received %#x" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_v));
                    };
                    if (_u & (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
                        break;
                    };
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _verifyInt(_i:stdgo.StdGoTypes.GoInt64, _t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _b:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer> = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>);
            var _encState = _newEncoderState(_b);
            _encState._encodeInt(_i);
            var _decState = _newDecodeState(_newDecBuffer(_b.bytes()));
            var _j:stdgo.StdGoTypes.GoInt64 = _decState._decodeInt();
            if (_i != (_j)) {
                _t.errorf(("Encode/Decode: sent %#x received %#x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface((_j : stdgo.StdGoTypes.GoUInt64)));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // Test basic encode/decode routines for signed integers
**/
function testIntCodec(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _u:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor(true, _u = (_u + (1i64 : stdgo.StdGoTypes.GoUInt64)) * (7i64 : stdgo.StdGoTypes.GoUInt64), {
                var _i:stdgo.StdGoTypes.GoInt64 = (_u : stdgo.StdGoTypes.GoInt64);
                _verifyInt(_i, _t);
                _verifyInt(-_i, _t);
                _verifyInt((-1 ^ _i), _t);
                if (_u & (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
                    break;
                };
            });
        };
        _verifyInt((-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), _t);
    }
function _newDecodeState(_buf:stdgo.StdGoTypes.Ref<T_decBuffer>):stdgo.StdGoTypes.Ref<T_decoderState> {
        var _d = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_decoderState)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>);
        _d._b = _buf;
        return _d;
    }
function _newEncoderState(_b:stdgo.StdGoTypes.Ref<T_encBuffer>):stdgo.StdGoTypes.Ref<T_encoderState> {
        _b.reset();
        var _state = (stdgo.Go.setRef(({ _enc : null, _b : _b } : stdgo.encoding.gob.Gob.T_encoderState)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>);
        _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
        return _state;
    }
/**
    // Test instruction execution for encoding.
    // Do not run the machine yet; instead do individual instructions crafted by hand.
**/
function testScalarEncInstructions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer> = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>);
        {
            var _data:Bool = true;
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encBool, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_boolResult, _b.bytes())) {
                _t.errorf(("bool enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_boolResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoInt = (17 : stdgo.StdGoTypes.GoInt);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encInt, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(("int enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoUInt = (17u32 : stdgo.StdGoTypes.GoUInt);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(("uint enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoInt8 = (17 : stdgo.StdGoTypes.GoInt8);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encInt, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(("int8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoUInt8 = (17 : stdgo.StdGoTypes.GoUInt8);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(("uint8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoInt16 = (17 : stdgo.StdGoTypes.GoInt16);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encInt, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(("int16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoUInt16 = (17 : stdgo.StdGoTypes.GoUInt16);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(("uint16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoInt32 = (17 : stdgo.StdGoTypes.GoInt32);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encInt, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(("int32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoUInt32 = (17u32 : stdgo.StdGoTypes.GoUInt32);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(("uint32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoInt64 = (17i64 : stdgo.StdGoTypes.GoInt64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encInt, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(("int64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoUInt64 = (17i64 : stdgo.StdGoTypes.GoUInt64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(("uint64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoFloat32 = (17 : stdgo.StdGoTypes.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encFloat, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_floatResult, _b.bytes())) {
                _t.errorf(("float32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_floatResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.StdGoTypes.GoFloat64 = (17 : stdgo.StdGoTypes.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encFloat, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_floatResult, _b.bytes())) {
                _t.errorf(("float64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_floatResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encUint8Array, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_bytesResult, _b.bytes())) {
                _t.errorf(("bytes enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_bytesResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:stdgo.GoString = ("hello" : stdgo.GoString);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_encInstr(_encString, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            var _state = _newEncoderState(_b);
            _instr._op(_instr, _state, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo.bytes.Bytes.equal(_bytesResult, _b.bytes())) {
                _t.errorf(("string enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(_bytesResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
    }
function _execDec(_instr:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _value:stdgo.reflect.Reflect.Value):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _v:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
            if (_v + _state._fieldnum != ((6 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("decoding field number %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((6 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_v + _state._fieldnum));
            };
            _instr._op(_instr, _state, _value.elem()?.__copy__());
            _state._fieldnum = (6 : stdgo.StdGoTypes.GoInt);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _newDecodeStateFromData(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.Ref<T_decoderState> {
        var _b = _newDecBuffer(_data);
        var _state = _newDecodeState(_b);
        _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
        return _state;
    }
/**
    // Test instruction execution for decoding.
    // Do not run the machine yet; instead do individual instructions crafted by hand.
**/
function testScalarDecInstructions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _ovfl:stdgo.Error = stdgo.errors.Errors.new_(("overflow" : stdgo.GoString));
        {
            var _data:Bool = false;
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decBool, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_boolResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (true)) {
                _t.errorf(("bool a = %v not true" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decOpTable[((2u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)], (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("int a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUInt = (0 : stdgo.StdGoTypes.GoUInt);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decOpTable[((7u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)], (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17u32 : stdgo.StdGoTypes.GoUInt))) {
                _t.errorf(("uint a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoInt8 = (0 : stdgo.StdGoTypes.GoInt8);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decInt8, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoInt8))) {
                _t.errorf(("int8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUInt8 = (0 : stdgo.StdGoTypes.GoUInt8);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decUint8, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoUInt8))) {
                _t.errorf(("uint8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoInt16 = (0 : stdgo.StdGoTypes.GoInt16);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decInt16, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoInt16))) {
                _t.errorf(("int16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUInt16 = (0 : stdgo.StdGoTypes.GoUInt16);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decUint16, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoUInt16))) {
                _t.errorf(("uint16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decInt32, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoInt32))) {
                _t.errorf(("int32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decUint32, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17u32 : stdgo.StdGoTypes.GoUInt32))) {
                _t.errorf(("uint32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decOpTable[((12u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)], (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17 : stdgo.StdGoTypes.GoUIntptr))) {
                _t.errorf(("uintptr a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decInt64, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17i64 : stdgo.StdGoTypes.GoInt64))) {
                _t.errorf(("int64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decUint64, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != ((17i64 : stdgo.StdGoTypes.GoUInt64))) {
                _t.errorf(("uint64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoFloat32 = (0 : stdgo.StdGoTypes.GoFloat32);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decFloat32, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_floatResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (17 : stdgo.StdGoTypes.GoFloat64)) {
                _t.errorf(("float32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decFloat64, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_floatResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (17 : stdgo.StdGoTypes.GoFloat64)) {
                _t.errorf(("float64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoComplex64 = new stdgo.StdGoTypes.GoComplex64(0, 0);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decOpTable[((15u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)], (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_complexResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (((17f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 19f64)))) {
                _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(0, 0);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decOpTable[((16u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)], (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_complexResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (((17f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 19f64)))) {
                _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decUint8Slice, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_bytesResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>)))?.__copy__());
            if ((_data : stdgo.GoString) != (("hello" : stdgo.GoString))) {
                _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface((_data : stdgo.GoString)));
            };
        };
        {
            var _data:stdgo.GoString = ("" : stdgo.GoString);
            var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_decString, (6 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            var _state = _newDecodeStateFromData(_bytesResult);
            _execDec(_instr, _state, _t, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_data)))?.__copy__());
            if (_data != (("hello" : stdgo.GoString))) {
                _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testEndToEnd_50___localname___T2 {
    public var t : stdgo.GoString = "";
    public function new(?t:stdgo.GoString) {
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEndToEnd_50___localname___T2(t);
    }
}
/**
    
    
    
**/
@:structInit class T_testEndToEnd_51___localname___T3 {
    public var x : stdgo.StdGoTypes.GoFloat64 = 0;
    public var z : stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
    public function new(?x:stdgo.StdGoTypes.GoFloat64, ?z:stdgo.Pointer<stdgo.StdGoTypes.GoInt>) {
        if (x != null) this.x = x;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEndToEnd_51___localname___T3(x, z);
    }
}
/**
    
    
    
**/
@:structInit class T_testEndToEnd_52___localname___T1 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public var b : stdgo.StdGoTypes.GoInt = 0;
    public var c : stdgo.StdGoTypes.GoInt = 0;
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>);
    public var m2 : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3>);
    public var mstring : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var mintptr : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.Pointer<stdgo.StdGoTypes.GoInt>> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
    public var mcomp : stdgo.GoMap<stdgo.StdGoTypes.GoComplex128, stdgo.StdGoTypes.GoComplex128> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoComplex128, stdgo.StdGoTypes.GoComplex128>);
    public var marr : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>> = (null : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>);
    public var emptyMap : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
    public var n : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>> = (null : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>>);
    public var strs : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.GoString>> = (null : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.GoString>>);
    public var int64s : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>>);
    public var ri : stdgo.StdGoTypes.GoComplex64 = new stdgo.StdGoTypes.GoComplex64(0, 0);
    public var s : stdgo.GoString = "";
    public var y : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var t : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.StdGoTypes.GoInt, ?c:stdgo.StdGoTypes.GoInt, ?m:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>, ?m2:stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3>, ?mstring:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?mintptr:stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.Pointer<stdgo.StdGoTypes.GoInt>>, ?mcomp:stdgo.GoMap<stdgo.StdGoTypes.GoComplex128, stdgo.StdGoTypes.GoComplex128>, ?marr:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>, ?n:stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>>, ?strs:stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.GoString>>, ?int64s:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>>, ?ri:stdgo.StdGoTypes.GoComplex64, ?s:stdgo.GoString, ?y:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?t:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (m2 != null) this.m2 = m2;
        if (mstring != null) this.mstring = mstring;
        if (mintptr != null) this.mintptr = mintptr;
        if (mcomp != null) this.mcomp = mcomp;
        if (marr != null) this.marr = marr;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (n != null) this.n = n;
        if (strs != null) this.strs = strs;
        if (int64s != null) this.int64s = int64s;
        if (ri != null) this.ri = ri;
        if (s != null) this.s = s;
        if (y != null) this.y = y;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEndToEnd_52___localname___T1(
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
y,
t);
    }
}
function testEndToEnd(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        {};
        var _pi:stdgo.StdGoTypes.GoFloat64 = (3.14159 : stdgo.StdGoTypes.GoFloat64);
        var _e:stdgo.StdGoTypes.GoFloat64 = (2.71828 : stdgo.StdGoTypes.GoFloat64);
        var _two:stdgo.StdGoTypes.GoFloat64 = (2 : stdgo.StdGoTypes.GoFloat64);
        var _meaning:stdgo.StdGoTypes.GoInt = (42 : stdgo.StdGoTypes.GoInt);
        var _fingers:stdgo.StdGoTypes.GoInt = (5 : stdgo.StdGoTypes.GoInt);
        var _s1:stdgo.GoString = ("string1" : stdgo.GoString);
        var _s2:stdgo.GoString = ("string2" : stdgo.GoString);
        var _comp1:stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128((1 : stdgo.StdGoTypes.GoFloat64), (1 : stdgo.StdGoTypes.GoFloat64));
        var _comp2:stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128((1 : stdgo.StdGoTypes.GoFloat64), (1 : stdgo.StdGoTypes.GoFloat64));
        var _arr1:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
        _arr1[(0 : stdgo.StdGoTypes.GoInt)] = _s1?.__copy__();
        _arr1[(1 : stdgo.StdGoTypes.GoInt)] = _s2?.__copy__();
        var _arr2:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
        _arr2[(0 : stdgo.StdGoTypes.GoInt)] = _s2?.__copy__();
        _arr2[(1 : stdgo.StdGoTypes.GoInt)] = _s1?.__copy__();
        var _floatArr1:stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>(...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>)]);
        _floatArr1[(0 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.pointer(_pi);
        _floatArr1[(1 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.pointer(_e);
        var _floatArr2:stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>(...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>)]);
        _floatArr2[(0 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.pointer(_e);
        _floatArr2[(1 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.pointer(_two);
        var _t1 = (stdgo.Go.setRef(({ a : (17 : stdgo.StdGoTypes.GoInt), b : (18 : stdgo.StdGoTypes.GoInt), c : (-5 : stdgo.StdGoTypes.GoInt), m : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>);
            @:mergeBlock {
                x.set(("pi" : stdgo.GoString), stdgo.Go.pointer(_pi));
                x.set(("e" : stdgo.GoString), stdgo.Go.pointer(_e));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>), m2 : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3>();
            x.__defaultValue__ = () -> ({} : stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3);
            @:mergeBlock {
                x.set((4 : stdgo.StdGoTypes.GoInt), ({ x : _pi, z : stdgo.Go.pointer(_meaning) } : stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3));
                x.set((10 : stdgo.StdGoTypes.GoInt), ({ x : _e, z : stdgo.Go.pointer(_fingers) } : stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3));
            };
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.encoding.gob.Gob.T_testEndToEnd_51___localname___T3>), mstring : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set(("pi" : stdgo.GoString), ("3.14" : stdgo.GoString));
                x.set(("e" : stdgo.GoString), ("2.71" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), mintptr : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
            @:mergeBlock {
                x.set(_meaning, stdgo.Go.pointer(_fingers));
                x.set(_fingers, stdgo.Go.pointer(_meaning));
            };
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.Pointer<stdgo.StdGoTypes.GoInt>>), mcomp : ({
            final x = new stdgo.GoMap.GoComplex128Map<stdgo.StdGoTypes.GoComplex128>();
            x.__defaultValue__ = () -> new stdgo.StdGoTypes.GoComplex128(0, 0);
            @:mergeBlock {
                x.set(_comp1, _comp2);
                x.set(_comp2, _comp1);
            };
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoComplex128, stdgo.StdGoTypes.GoComplex128>), marr : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, 2));
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>(...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>)]);
            @:mergeBlock {
                x.set(_arr1, _floatArr1);
                x.set(_arr2, _floatArr2);
            };
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>), emptyMap : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>), n : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>((1.5 : stdgo.StdGoTypes.GoFloat64), (2.5 : stdgo.StdGoTypes.GoFloat64), (3.5 : stdgo.StdGoTypes.GoFloat64)) : stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoFloat64>>), strs : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoString>(_s1?.__copy__(), _s2?.__copy__()) : stdgo.GoArray<stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.GoString>>), int64s : (stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(3, 3, (77i64 : stdgo.StdGoTypes.GoInt64), (89i64 : stdgo.StdGoTypes.GoInt64), (123412342134i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>>), ri : ((17f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -23f64)), s : ("Now is the time" : stdgo.GoString), y : (("hello, sailor" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), t : (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2(("this is T2" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_50___localname___T2>) } : stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1>);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_t1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __t1:T_testEndToEnd_52___localname___T1 = ({} : stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(__t1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_t1), stdgo.Go.toInterface((stdgo.Go.setRef(__t1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1>)))) {
            _t.errorf(("encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_t1 : stdgo.encoding.gob.Gob.T_testEndToEnd_52___localname___T1)), stdgo.Go.toInterface(__t1));
        };
        if (_t1.emptyMap == null) {
            _t.errorf(("nil map sent" : stdgo.GoString));
        };
        if (__t1.emptyMap == null) {
            _t.errorf(("nil map received" : stdgo.GoString));
        };
    }
/**
    
    
    
**/
@:structInit class T_testOverflow_53___localname___inputT {
    public var maxi : stdgo.StdGoTypes.GoInt64 = 0;
    public var mini : stdgo.StdGoTypes.GoInt64 = 0;
    public var maxu : stdgo.StdGoTypes.GoUInt64 = 0;
    public var maxf : stdgo.StdGoTypes.GoFloat64 = 0;
    public var minf : stdgo.StdGoTypes.GoFloat64 = 0;
    public var maxc : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(0, 0);
    public var minc : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(0, 0);
    public function new(?maxi:stdgo.StdGoTypes.GoInt64, ?mini:stdgo.StdGoTypes.GoInt64, ?maxu:stdgo.StdGoTypes.GoUInt64, ?maxf:stdgo.StdGoTypes.GoFloat64, ?minf:stdgo.StdGoTypes.GoFloat64, ?maxc:stdgo.StdGoTypes.GoComplex128, ?minc:stdgo.StdGoTypes.GoComplex128) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
        if (maxu != null) this.maxu = maxu;
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_53___localname___inputT(maxi, mini, maxu, maxf, minf, maxc, minc);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_54___localname___outi8 {
    public var maxi : stdgo.StdGoTypes.GoInt8 = 0;
    public var mini : stdgo.StdGoTypes.GoInt8 = 0;
    public function new(?maxi:stdgo.StdGoTypes.GoInt8, ?mini:stdgo.StdGoTypes.GoInt8) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_54___localname___outi8(maxi, mini);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_55___localname___outi16 {
    public var maxi : stdgo.StdGoTypes.GoInt16 = 0;
    public var mini : stdgo.StdGoTypes.GoInt16 = 0;
    public function new(?maxi:stdgo.StdGoTypes.GoInt16, ?mini:stdgo.StdGoTypes.GoInt16) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_55___localname___outi16(maxi, mini);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_56___localname___outi32 {
    public var maxi : stdgo.StdGoTypes.GoInt32 = 0;
    public var mini : stdgo.StdGoTypes.GoInt32 = 0;
    public function new(?maxi:stdgo.StdGoTypes.GoInt32, ?mini:stdgo.StdGoTypes.GoInt32) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_56___localname___outi32(maxi, mini);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_57___localname___outu8 {
    public var maxu : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?maxu:stdgo.StdGoTypes.GoUInt8) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_57___localname___outu8(maxu);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_58___localname___outu16 {
    public var maxu : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?maxu:stdgo.StdGoTypes.GoUInt16) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_58___localname___outu16(maxu);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_59___localname___outu32 {
    public var maxu : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?maxu:stdgo.StdGoTypes.GoUInt32) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_59___localname___outu32(maxu);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_60___localname___outf32 {
    public var maxf : stdgo.StdGoTypes.GoFloat32 = 0;
    public var minf : stdgo.StdGoTypes.GoFloat32 = 0;
    public function new(?maxf:stdgo.StdGoTypes.GoFloat32, ?minf:stdgo.StdGoTypes.GoFloat32) {
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_60___localname___outf32(maxf, minf);
    }
}
/**
    
    
    
**/
@:structInit class T_testOverflow_61___localname___outc64 {
    public var maxc : stdgo.StdGoTypes.GoComplex64 = new stdgo.StdGoTypes.GoComplex64(0, 0);
    public var minc : stdgo.StdGoTypes.GoComplex64 = new stdgo.StdGoTypes.GoComplex64(0, 0);
    public function new(?maxc:stdgo.StdGoTypes.GoComplex64, ?minc:stdgo.StdGoTypes.GoComplex64) {
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow_61___localname___outc64(maxc, minc);
    }
}
function testOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _it:T_testOverflow_53___localname___inputT = ({} : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        _b.reset();
        _it = ({ maxi : (128i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o1:T_testOverflow_54___localname___outi8 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_54___localname___outi8);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_54___localname___outi8>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-129i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_54___localname___outi8>)));
        if ((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxi : (32768i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o2:T_testOverflow_55___localname___outi16 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_55___localname___outi16);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_55___localname___outi16>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-32769i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_55___localname___outi16>)));
        if ((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxi : (2147483648i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o3:T_testOverflow_56___localname___outi32 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_56___localname___outi32);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o3) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_56___localname___outi32>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-2147483649i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o3) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_56___localname___outi32>)));
        if ((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (256i64 : stdgo.StdGoTypes.GoUInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o4:T_testOverflow_57___localname___outu8 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_57___localname___outu8);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o4) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_57___localname___outu8>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (65536i64 : stdgo.StdGoTypes.GoUInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o5:T_testOverflow_58___localname___outu16 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_58___localname___outu16);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o5) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_58___localname___outu16>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (4294967296i64 : stdgo.StdGoTypes.GoUInt64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o6:T_testOverflow_59___localname___outu32 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_59___localname___outu32);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o6) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_59___localname___outu32>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxf : (6.805646932770577e+38 : stdgo.StdGoTypes.GoFloat64) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o7:T_testOverflow_60___localname___outf32 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_60___localname___outf32);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o7) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_60___localname___outf32>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxf\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for float32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxc : new stdgo.StdGoTypes.GoComplex128((6.805646932770577e+38 : stdgo.StdGoTypes.GoFloat64), (6.805646932770577e+38 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.gob.Gob.T_testOverflow_53___localname___inputT);
        {};
        var _o8:T_testOverflow_61___localname___outc64 = ({} : stdgo.encoding.gob.Gob.T_testOverflow_61___localname___outc64);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_o8) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testOverflow_61___localname___outc64>)));
        if ((_err == null) || (_err.error() != ("value for \"Maxc\" out of range" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for complex64:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
/**
    
    
    
**/
@:structInit class T_testNesting_62___localname___RT {
    public var a : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT>);
    public function new(?a:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT>) {
        if (a != null) this.a = a;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNesting_62___localname___RT(a, next);
    }
}
function testNesting(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _rt = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT>);
        _rt.a = ("level1" : stdgo.GoString);
        _rt.next = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT>);
        _rt.next.a = ("level2" : stdgo.GoString);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_rt));
        var _drt:T_testNesting_62___localname___RT = ({} : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT);
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_drt) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decoder error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_drt.a != (_rt.a)) {
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_rt : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT)), stdgo.Go.toInterface(_drt));
        };
        if (_drt.next == null || (_drt.next : Dynamic).__nil__) {
            _t.errorf(("nesting: recursion failed" : stdgo.GoString));
        };
        if (_drt.next.a != (_rt.next.a)) {
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_rt.next : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT)), stdgo.Go.toInterface((_drt.next : stdgo.encoding.gob.Gob.T_testNesting_62___localname___RT)));
        };
    }
function testAutoIndirection(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _t1:T1 = ({} : stdgo.encoding.gob.Gob.T1);
        _t1.a = (17 : stdgo.StdGoTypes.GoInt);
        _t1.b = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        _t1.b.value = (177 : stdgo.StdGoTypes.GoInt);
        _t1.c = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
        _t1.c = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        (_t1.c : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (1777 : stdgo.StdGoTypes.GoInt);
        _t1.d = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>);
        _t1.d = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
        (_t1.d : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        ((_t1.d : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (17777 : stdgo.StdGoTypes.GoInt);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        _enc.encode(stdgo.Go.toInterface(_t1));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _t0:T0 = ({} : stdgo.encoding.gob.Gob.T0);
        _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t0) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T0>)));
        if ((((_t0.a != (17 : stdgo.StdGoTypes.GoInt)) || (_t0.b != (177 : stdgo.StdGoTypes.GoInt))) || (_t0.c != (1777 : stdgo.StdGoTypes.GoInt))) || (_t0.d != (17777 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("t1->t0: expected {17 177 1777 17777}; got %v" : stdgo.GoString), stdgo.Go.toInterface(_t0));
        };
        var _t2:T2 = ({} : stdgo.encoding.gob.Gob.T2);
        _t2.d = (17777 : stdgo.StdGoTypes.GoInt);
        _t2.c = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        _t2.c.value = (1777 : stdgo.StdGoTypes.GoInt);
        _t2.b = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
        _t2.b = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        (_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (177 : stdgo.StdGoTypes.GoInt);
        _t2.a = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>>);
        _t2.a = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
        (_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        ((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (17 : stdgo.StdGoTypes.GoInt);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_t2));
        _t0 = (new stdgo.encoding.gob.Gob.T0() : stdgo.encoding.gob.Gob.T0);
        _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t0) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T0>)));
        if ((((_t0.a != (17 : stdgo.StdGoTypes.GoInt)) || (_t0.b != (177 : stdgo.StdGoTypes.GoInt))) || (_t0.c != (1777 : stdgo.StdGoTypes.GoInt))) || (_t0.d != (17777 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("t2->t0 expected {17 177 1777 17777}; got %v" : stdgo.GoString), stdgo.Go.toInterface(_t0));
        };
        _t0 = (new stdgo.encoding.gob.Gob.T0((17 : stdgo.StdGoTypes.GoInt), (177 : stdgo.StdGoTypes.GoInt), (1777 : stdgo.StdGoTypes.GoInt), (17777 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T0);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_t0));
        _t1 = (new stdgo.encoding.gob.Gob.T1() : stdgo.encoding.gob.Gob.T1);
        _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T1>)));
        if ((((_t1.a != (17 : stdgo.StdGoTypes.GoInt)) || (_t1.b.value != (177 : stdgo.StdGoTypes.GoInt))) || ((_t1.c : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (1777 : stdgo.StdGoTypes.GoInt))) || (((_t1.d : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (17777 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("t0->t1 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(_t1.a), stdgo.Go.toInterface(_t1.b.value), stdgo.Go.toInterface((_t1.c : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value), stdgo.Go.toInterface(((_t1.d : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value));
        };
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_t0));
        _t2 = (new stdgo.encoding.gob.Gob.T2() : stdgo.encoding.gob.Gob.T2);
        _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T2>)));
        if ((((((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (17 : stdgo.StdGoTypes.GoInt)) || ((_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (177 : stdgo.StdGoTypes.GoInt))) || (_t2.c.value != (1777 : stdgo.StdGoTypes.GoInt))) || (_t2.d != (17777 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value), stdgo.Go.toInterface((_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value), stdgo.Go.toInterface(_t2.c.value), stdgo.Go.toInterface(_t2.d));
        };
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_t0));
        ((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (0 : stdgo.StdGoTypes.GoInt);
        (_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value = (0 : stdgo.StdGoTypes.GoInt);
        _t2.c.value = (0 : stdgo.StdGoTypes.GoInt);
        _t2.d = (0 : stdgo.StdGoTypes.GoInt);
        _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T2>)));
        if ((((((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (17 : stdgo.StdGoTypes.GoInt)) || ((_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value != (177 : stdgo.StdGoTypes.GoInt))) || (_t2.c.value != (1777 : stdgo.StdGoTypes.GoInt))) || (_t2.d != (17777 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(((_t2.a : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value), stdgo.Go.toInterface((_t2.b : stdgo.Pointer<stdgo.StdGoTypes.GoInt>).value), stdgo.Go.toInterface(_t2.c.value), stdgo.Go.toInterface(_t2.d));
        };
    }
function testReorderedFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _rt0:RT0 = ({} : stdgo.encoding.gob.Gob.RT0);
        _rt0.a = (17 : stdgo.StdGoTypes.GoInt);
        _rt0.b = ("hello" : stdgo.GoString);
        _rt0.c = (3.14159 : stdgo.StdGoTypes.GoFloat64);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_rt0));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:RT1 = ({} : stdgo.encoding.gob.Gob.RT1);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rt1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_rt0.a != _rt1.a) || (_rt0.b != _rt1.b)) || (_rt0.c != _rt1.c)) {
            _t.errorf(("rt1->rt0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_rt0), stdgo.Go.toInterface(_rt1));
        };
    }
function testIgnoredFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _it0:IT0 = ({} : stdgo.encoding.gob.Gob.IT0);
        _it0.a = (17i64 : stdgo.StdGoTypes.GoInt64);
        _it0.b = ("hello" : stdgo.GoString);
        _it0.c = (3.14159 : stdgo.StdGoTypes.GoFloat64);
        _it0.ignore_d = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        _it0.ignore_e[(0 : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoFloat64);
        _it0.ignore_e[(1 : stdgo.StdGoTypes.GoInt)] = (2 : stdgo.StdGoTypes.GoFloat64);
        _it0.ignore_e[(2 : stdgo.StdGoTypes.GoInt)] = (3 : stdgo.StdGoTypes.GoFloat64);
        _it0.ignore_f = true;
        _it0.ignore_g = ("pay no attention" : stdgo.GoString);
        _it0.ignore_h = (("to the curtain" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _it0.ignore_i = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.RT1((3.1 : stdgo.StdGoTypes.GoFloat64), ("hi" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt), ("hello" : stdgo.GoString)) : stdgo.encoding.gob.Gob.RT1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1>);
        _it0.ignore_m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set(("one" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                x.set(("two" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_it0));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:RT1 = ({} : stdgo.encoding.gob.Gob.RT1);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rt1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.RT1>)));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((_it0.a : stdgo.StdGoTypes.GoInt) != _rt1.a) || (_it0.b != _rt1.b)) || (_it0.c != _rt1.c)) {
            _t.errorf(("rt0->rt1: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_it0), stdgo.Go.toInterface(_rt1));
        };
    }
@:named typedef T_testBadRecursiveType_63___localname___Rec = stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testBadRecursiveType_63___localname___Rec>>>;
function testBadRecursiveType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _rec:T_testBadRecursiveType_63___localname___Rec = new stdgo.encoding.gob.Gob.T_testBadRecursiveType_63___localname___Rec();
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface((stdgo.Go.setRef(_rec) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testBadRecursiveType_63___localname___Rec>)));
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("recursive" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("expected recursive type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
function testIndirectSliceMapArray(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _i = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Indirect)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Indirect>);
        _i.a = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>>);
        _i.a = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>);
        (_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)])) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>);
        ((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) = (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>);
        _i.s = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>>);
        _i.s = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>);
        (_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) = (stdgo.Go.setRef((null : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>);
        ((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>).__setData__((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (4 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>));
        _i.m = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>>);
        _i.m = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>);
        (_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>);
        ((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) = (stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>);
        (((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>).__setData__(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set(("one" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                x.set(("two" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt));
                x.set(("three" : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>));
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_i));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _d:Direct = ({} : stdgo.encoding.gob.Gob.Direct);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_d) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Direct>)));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((false || (_d.a[(0 : stdgo.StdGoTypes.GoInt)] != (1 : stdgo.StdGoTypes.GoInt))) || (_d.a[(1 : stdgo.StdGoTypes.GoInt)] != (2 : stdgo.StdGoTypes.GoInt))) || (_d.a[(2 : stdgo.StdGoTypes.GoInt)] != (3 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("indirect to direct: d.A is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.a), stdgo.Go.toInterface((((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)));
        };
        if ((((_d.s.length != (3 : stdgo.StdGoTypes.GoInt)) || (_d.s[(0 : stdgo.StdGoTypes.GoInt)] != (4 : stdgo.StdGoTypes.GoInt))) || (_d.s[(1 : stdgo.StdGoTypes.GoInt)] != (5 : stdgo.StdGoTypes.GoInt))) || (_d.s[(2 : stdgo.StdGoTypes.GoInt)] != (6 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("indirect to direct: d.S is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.s), stdgo.Go.toInterface((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)));
        };
        if ((((_d.m.length != (3 : stdgo.StdGoTypes.GoInt)) || ((_d.m[("one" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (1 : stdgo.StdGoTypes.GoInt))) || ((_d.m[("two" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (2 : stdgo.StdGoTypes.GoInt))) || ((_d.m[("three" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (3 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("indirect to direct: d.M is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.m), stdgo.Go.toInterface((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>)));
        };
        _d.a = (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((11 : stdgo.StdGoTypes.GoInt), (22 : stdgo.StdGoTypes.GoInt), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>);
        _d.s = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (44 : stdgo.StdGoTypes.GoInt), (55 : stdgo.StdGoTypes.GoInt), (66 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        _d.m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set(("four" : stdgo.GoString), (4 : stdgo.StdGoTypes.GoInt));
                x.set(("five" : stdgo.GoString), (5 : stdgo.StdGoTypes.GoInt));
                x.set(("six" : stdgo.GoString), (6 : stdgo.StdGoTypes.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        _i = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Indirect)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Indirect>);
        _b.reset();
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_d));
        _dec = newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_i) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Indirect>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((false || (((((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>))[(0 : stdgo.StdGoTypes.GoInt)] != (11 : stdgo.StdGoTypes.GoInt))) || (((((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>))[(1 : stdgo.StdGoTypes.GoInt)] != (22 : stdgo.StdGoTypes.GoInt))) || (((((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>))[(2 : stdgo.StdGoTypes.GoInt)] != (33 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("direct to indirect: ***i.A is %v not %v" : stdgo.GoString), stdgo.Go.toInterface((((_i.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface(_d.a));
        };
        if (((((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>).length != (3 : stdgo.StdGoTypes.GoInt)) || (((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>))[(0 : stdgo.StdGoTypes.GoInt)] != (44 : stdgo.StdGoTypes.GoInt))) || (((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>))[(1 : stdgo.StdGoTypes.GoInt)] != (55 : stdgo.StdGoTypes.GoInt))) || (((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>))[(2 : stdgo.StdGoTypes.GoInt)] != (66 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("direct to indirect: ***i.S is %v not %v" : stdgo.GoString), stdgo.Go.toInterface((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface((((_i.s : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)));
        };
        if ((((((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>).length != (3 : stdgo.StdGoTypes.GoInt)) || (((((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>))[("four" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (4 : stdgo.StdGoTypes.GoInt))) || (((((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>))[("five" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (5 : stdgo.StdGoTypes.GoInt))) || (((((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>))[("six" : stdgo.GoString)] ?? (0 : stdgo.StdGoTypes.GoInt)) != (6 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("direct to indirect: ****i.M is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(((((_i.m : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>>) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface(_d.m));
        };
    }
function testInterface(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _iVal:stdgo.encoding.gob.Gob.Int_ = ((3 : stdgo.encoding.gob.Gob.Int_) : Int_);
        var _fVal:stdgo.encoding.gob.Gob.Float_ = ((5 : stdgo.StdGoTypes.GoFloat64) : Float_);
        var _vVal:stdgo.encoding.gob.Gob.Vector = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Vector);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.InterfaceItem((1 : stdgo.StdGoTypes.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_vVal), (11.5 : stdgo.StdGoTypes.GoFloat64), (new stdgo.Slice<stdgo.encoding.gob.Gob.Squarer>(4, 4, stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), (null : stdgo.encoding.gob.Gob.Squarer), stdgo.Go.asInterface(_vVal)) : stdgo.Slice<stdgo.encoding.gob.Gob.Squarer>)) : stdgo.encoding.gob.Gob.InterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.InterfaceItem>);
        register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.encoding.gob.Gob.Int_) : Int_))));
        register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.StdGoTypes.GoFloat64) : Float_))));
        register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(0, 0) : stdgo.encoding.gob.Gob.Vector))));
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2:stdgo.encoding.gob.Gob.InterfaceItem = (new stdgo.encoding.gob.Gob.InterfaceItem() : stdgo.encoding.gob.Gob.InterfaceItem);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.InterfaceItem>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_item2.i != (_item1.i)) {
            _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        if ((_item2.sq1 == null) || (_item2.sq1.square() != _iVal.square())) {
            _t.error(stdgo.Go.toInterface(("Int did not decode correctly" : stdgo.GoString)));
        };
        if ((_item2.sq2 == null) || (_item2.sq2.square() != _fVal.square())) {
            _t.error(stdgo.Go.toInterface(("Float did not decode correctly" : stdgo.GoString)));
        };
        if ((_item2.sq3 == null) || (_item2.sq3.square() != _vVal.square())) {
            _t.error(stdgo.Go.toInterface(("Vector did not decode correctly" : stdgo.GoString)));
        };
        if (_item2.f != (_item1.f)) {
            _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
        if ((_item1.sq.length) != ((_item2.sq.length))) {
            _t.fatalf(("[]Squarer length wrong: got %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface((_item2.sq.length)), stdgo.Go.toInterface((_item1.sq.length)));
        };
        for (_i => _v1 in _item1.sq) {
            var _v2:stdgo.encoding.gob.Gob.Squarer = _item2.sq[(_i : stdgo.StdGoTypes.GoInt)];
            if ((_v1 == null) || (_v2 == null)) {
                if ((_v1 != null) || (_v2 != null)) {
                    _t.errorf(("item %d inconsistent nils" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            } else if (_v1.square() != (_v2.square())) {
                _t.errorf(("item %d inconsistent values: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
            };
        };
    }
function testInterfaceBasic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.BasicInterfaceItem(
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt8)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt16)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt32)),
stdgo.Go.toInterface((1i64 : stdgo.StdGoTypes.GoInt64)),
stdgo.Go.toInterface((1u32 : stdgo.StdGoTypes.GoUInt)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoUInt8)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoUInt16)),
stdgo.Go.toInterface((1u32 : stdgo.StdGoTypes.GoUInt32)),
stdgo.Go.toInterface((1i64 : stdgo.StdGoTypes.GoUInt64)),
stdgo.Go.toInterface(((1 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)),
stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64) : stdgo.StdGoTypes.GoComplex64)),
stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64) : stdgo.StdGoTypes.GoComplex128)),
stdgo.Go.toInterface(true),
stdgo.Go.toInterface(("hello" : stdgo.GoString)),
stdgo.Go.toInterface((("sailor" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))) : stdgo.encoding.gob.Gob.BasicInterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.BasicInterfaceItem>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.BasicInterfaceItem() : stdgo.encoding.gob.Gob.BasicInterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.BasicInterfaceItem>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.BasicInterfaceItem>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_item1), stdgo.Go.toInterface(_item2))) {
            _t.errorf(("encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_item1), stdgo.Go.toInterface(_item2));
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_item2.bool_ : Bool)) : Bool), ok : true };
            } catch(_) {
                { value : false, ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || !_v) {
                _t.error(stdgo.Go.toInterface(("boolean should be true" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_item2.string : stdgo.GoString)) : stdgo.GoString), ok : true };
            } catch(_) {
                { value : ("" : stdgo.GoString), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != (stdgo.Go.typeAssert((_item1.string : stdgo.GoString)) : stdgo.GoString))) {
                _t.errorf(("string should be %v is %v" : stdgo.GoString), _item1.string, stdgo.Go.toInterface(_v));
            };
        };
    }
/**
    // We'll send pointers; should receive values.
    // Also check that we can register T but send *T.
**/
function testInterfacePointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _str1:stdgo.GoString = ("howdy" : stdgo.GoString);
        var _str2:stdgo.encoding.gob.Gob.String_ = ((("kiddo" : stdgo.GoString) : stdgo.encoding.gob.Gob.String_) : String_);
        var _item1 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.PtrInterfaceItem(stdgo.Go.toInterface(stdgo.Go.pointer(_str1)), stdgo.Go.toInterface(stdgo.Go.pointer(_str2))) : stdgo.encoding.gob.Gob.PtrInterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.PtrInterfaceItem>);
        register(stdgo.Go.toInterface(_str2));
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.PtrInterfaceItem() : stdgo.encoding.gob.Gob.PtrInterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.PtrInterfaceItem>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.PtrInterfaceItem>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_item2.str1 : stdgo.GoString)) : stdgo.GoString), ok : true };
            } catch(_) {
                { value : ("" : stdgo.GoString), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != _str1)) {
                _t.errorf(("basic string failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str1));
            };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_item2.str2 : String_)) : String_), ok : true };
            } catch(_) {
                { value : (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.String_), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != _str2)) {
                _t.errorf(("derived type String failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str2));
            };
        };
    }
function testIgnoreInterface(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _iVal:stdgo.encoding.gob.Gob.Int_ = ((3 : stdgo.encoding.gob.Gob.Int_) : Int_);
        var _fVal:stdgo.encoding.gob.Gob.Float_ = ((5 : stdgo.StdGoTypes.GoFloat64) : Float_);
        var _pVal:stdgo.encoding.gob.Gob.Point = (new stdgo.encoding.gob.Gob.Point((2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Point);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.InterfaceItem((1 : stdgo.StdGoTypes.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_pVal), (11.5 : stdgo.StdGoTypes.GoFloat64), (null : stdgo.Slice<stdgo.encoding.gob.Gob.Squarer>)) : stdgo.encoding.gob.Gob.InterfaceItem)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.InterfaceItem>);
        register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.encoding.gob.Gob.Int_) : Int_))));
        register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.StdGoTypes.GoFloat64) : Float_))));
        register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.encoding.gob.Gob.Point() : stdgo.encoding.gob.Gob.Point))));
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2:stdgo.encoding.gob.Gob.NoInterfaceItem = (new stdgo.encoding.gob.Gob.NoInterfaceItem() : stdgo.encoding.gob.Gob.NoInterfaceItem);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NoInterfaceItem>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_item2.i != (_item1.i)) {
            _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        if (_item2.f != (_item1.f)) {
            _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
    }
function testUnexportedFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _u0:U = ({} : stdgo.encoding.gob.Gob.U);
        _u0.a = (17 : stdgo.StdGoTypes.GoInt);
        _u0.b = ("hello" : stdgo.GoString);
        _u0._c = (3.14159 : stdgo.StdGoTypes.GoFloat64);
        _u0.d = (23u32 : stdgo.StdGoTypes.GoUInt);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_u0));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _u1:U = ({} : stdgo.encoding.gob.Gob.U);
        _u1._c = (1234 : stdgo.StdGoTypes.GoFloat64);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_u1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.U>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_u0.a != _u1.a) || (_u0.b != _u1.b)) || (_u0.d != _u1.d)) {
            _t.errorf(("u1->u0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_u0), stdgo.Go.toInterface(_u1));
        };
        if (_u1._c != (1234 : stdgo.StdGoTypes.GoFloat64)) {
            _t.error(stdgo.Go.toInterface(("u1.c modified" : stdgo.GoString)));
        };
    }
function testDebugSingleton(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (_debugFunc == null) {
            return;
        };
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        for (__0 => _x in _singletons) {
            var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(_x);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        _debugFunc(stdgo.Go.asInterface(_b));
    }
function _newDT():DT {
        var _dt:DT = ({} : stdgo.encoding.gob.Gob.DT);
        _dt.a = (17 : stdgo.StdGoTypes.GoInt);
        _dt.b = ("hello" : stdgo.GoString);
        _dt.c = (3.14159 : stdgo.StdGoTypes.GoFloat64);
        _dt.i = stdgo.Go.toInterface((271828 : stdgo.StdGoTypes.GoInt));
        _dt.j = stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.OnTheFly((3 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.OnTheFly));
        _dt.i_nil = (null : stdgo.StdGoTypes.AnyInterface);
        _dt.m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set(("one" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                x.set(("two" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        _dt.t = (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((11 : stdgo.StdGoTypes.GoInt), (22 : stdgo.StdGoTypes.GoInt), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>);
        _dt.s = (new stdgo.Slice<stdgo.GoString>(2, 2, ("hi" : stdgo.GoString), ("joe" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        return _dt?.__copy__();
    }
function testDebugStruct(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (_debugFunc == null) {
            return;
        };
        register(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.OnTheFly() : stdgo.encoding.gob.Gob.OnTheFly)));
        var _dt:stdgo.encoding.gob.Gob.DT = _newDT()?.__copy__();
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_dt));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _debugBuffer = stdgo.bytes.Bytes.newBuffer(_b.bytes());
        var _dt2 = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.DT() : stdgo.encoding.gob.Gob.DT)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.DT>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_dt2) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.DT>>)));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _debugFunc(stdgo.Go.asInterface(_debugBuffer));
    }
function _encFuzzDec(_rng:stdgo.StdGoTypes.Ref<stdgo.math.rand.Rand.Rand>, _in:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                return _err;
            };
        };
        var _b = _buf.bytes();
        for (_i => _bi in _b) {
            if (_rng.intn((10 : stdgo.StdGoTypes.GoInt)) < (3 : stdgo.StdGoTypes.GoInt)) {
                _b[(_i : stdgo.StdGoTypes.GoInt)] = _bi + (_rng.intn((256 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUInt8);
            };
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_buf));
        var _e:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        {
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
/**
    // This does some "fuzz testing" by attempting to decode a sequence of random bytes.
**/
function testFuzz(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        var _input = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(8, 8, stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat32))), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), stdgo.Go.toInterface(stdgo.Go.pointer(new stdgo.StdGoTypes.GoComplex128(0, 0))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ByteStruct((255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ArrayStruct() : stdgo.encoding.gob.Gob.ArrayStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.StringStruct(("hello" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>))), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.GobTest1((0 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.StringStruct(("hello" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>)) : stdgo.encoding.gob.Gob.GobTest1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest1>))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        _testFuzz(_t, stdgo.time.Time.now().unixNano(), (100 : stdgo.StdGoTypes.GoInt), ..._input.__toArray__());
    }
function testFuzzRegressions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        _testFuzz(_t, (1328492090837718000i64 : stdgo.StdGoTypes.GoInt64), (100 : stdgo.StdGoTypes.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat32))));
        _testFuzz(_t, (1330522872628565000i64 : stdgo.StdGoTypes.GoInt64), (100 : stdgo.StdGoTypes.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))));
    }
function _testFuzz(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _seed:stdgo.StdGoTypes.GoInt64, _n:stdgo.StdGoTypes.GoInt, _input:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Void {
        var _input = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_input.length, 0, ..._input);
        for (__0 => _e in _input) {
            _t.logf(("seed=%d n=%d e=%T" : stdgo.GoString), stdgo.Go.toInterface(_seed), stdgo.Go.toInterface(_n), _e);
            var _rng = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_seed));
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _n, _i++, {
                    _encFuzzDec(_rng, _e);
                });
            };
        };
    }
/**
    // TestFuzzOneByte tries to decode corrupted input sequences
    // and checks that no panic occurs.
**/
function testFuzzOneByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo.strings.Strings.Builder)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>);
        register(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.OnTheFly() : stdgo.encoding.gob.Gob.OnTheFly)));
        var _dt:stdgo.encoding.gob.Gob.DT = _newDT()?.__copy__();
        {
            var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_dt));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        var _indices = new stdgo.Slice<stdgo.StdGoTypes.GoInt>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (_s.length)).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                {
                    final __value__ = _i;
                    if (__value__ == ((14 : stdgo.StdGoTypes.GoInt)) || __value__ == ((167 : stdgo.StdGoTypes.GoInt)) || __value__ == ((231 : stdgo.StdGoTypes.GoInt)) || __value__ == ((265 : stdgo.StdGoTypes.GoInt))) {
                        continue;
                    } else if (__value__ == ((248 : stdgo.StdGoTypes.GoInt))) {
                        continue;
                    };
                };
                _indices = (_indices.__append__(_i));
            });
        };
        if (stdgo.testing.Testing.short()) {
            _indices = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (111 : stdgo.StdGoTypes.GoInt), (178 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        };
        for (__0 => _i in _indices) {
            {
                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_j < (256 : stdgo.StdGoTypes.GoInt), _j = _j + ((3 : stdgo.StdGoTypes.GoInt)), {
                    var _b = (_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
                    _b[(_i : stdgo.StdGoTypes.GoInt)] = _b[(_i : stdgo.StdGoTypes.GoInt)] ^ ((_j : stdgo.StdGoTypes.GoByte));
                    var _e:DT = ({} : stdgo.encoding.gob.Gob.DT);
                    {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> {
                                    var a = function():Void {
                                        {
                                            var _p:stdgo.StdGoTypes.AnyInterface = ({
                                                final r = stdgo.Go.recover_exception;
                                                stdgo.Go.recover_exception = null;
                                                r;
                                            });
                                            if (_p != null) {
                                                _t.errorf(("crash for b[%d] ^= 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                                                throw stdgo.Go.toInterface(_p);
                                            };
                                        };
                                    };
                                    a();
                                });
                                var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_b))).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.DT>)));
                                _err;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a();
                    };
                });
            };
        };
    }
/**
    // Don't crash, just give error with invalid type id.
    // Issue 9649.
**/
function testErrorInvalidTypeId(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _data = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (1 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _d = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_data)));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                var _foo:T__struct_0 = ({} : T_emptyStruct);
                var _err:stdgo.Error = _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_foo) : stdgo.StdGoTypes.Ref<T_emptyStruct>)));
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errBadType))) {
                    _t.fatalf(("decode: expected %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_errBadType), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function _testEncodeDecode(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _in:stdgo.StdGoTypes.AnyInterface, _out:stdgo.StdGoTypes.AnyInterface):Void {
        _t.helper();
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).encode(_in);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).decode(_out);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(_in, _out)) {
            _t.errorf(("output mismatch" : stdgo.GoString));
        };
    }
function testLargeSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _t.run(("byte" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            _t.parallel();
            var _s = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((20971520 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            for (_i in 0 ... _s.length.toBasic()) {
                _s[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo.encoding.gob.Gob.LargeSliceByte)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceByte>);
            var _rt = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.LargeSliceByte() : stdgo.encoding.gob.Gob.LargeSliceByte)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceByte>);
            _testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("int8" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            _t.parallel();
            var _s = new stdgo.Slice<stdgo.StdGoTypes.GoInt8>((20971520 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            for (_i in 0 ... _s.length.toBasic()) {
                _s[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo.encoding.gob.Gob.LargeSliceInt8)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceInt8>);
            var _rt = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.LargeSliceInt8() : stdgo.encoding.gob.Gob.LargeSliceInt8)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceInt8>);
            _testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("struct" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            _t.parallel();
            var _s = new stdgo.Slice<stdgo.encoding.gob.Gob.StringPair>((2097152 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2097152 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (2097152 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.gob.Gob.StringPair)]);
            for (_i in 0 ... _s.length.toBasic()) {
                _s[(_i : stdgo.StdGoTypes.GoInt)].a = ((_i : stdgo.StdGoTypes.GoRune) : stdgo.GoString)?.__copy__();
                _s[(_i : stdgo.StdGoTypes.GoInt)].b = _s[(_i : stdgo.StdGoTypes.GoInt)].a?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo.encoding.gob.Gob.LargeSliceStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceStruct>);
            var _rt = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.LargeSliceStruct() : stdgo.encoding.gob.Gob.LargeSliceStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceStruct>);
            _testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("string" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            _t.parallel();
            var _s = new stdgo.Slice<stdgo.GoString>((2097152 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
            for (_i in 0 ... _s.length.toBasic()) {
                _s[(_i : stdgo.StdGoTypes.GoInt)] = ((_i : stdgo.StdGoTypes.GoRune) : stdgo.GoString)?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo.encoding.gob.Gob.LargeSliceString)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceString>);
            var _rt = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.LargeSliceString() : stdgo.encoding.gob.Gob.LargeSliceString)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.LargeSliceString>);
            _testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
    }
function testLocalRemoteTypesMismatch(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testData = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
14,
14,
(9 : stdgo.StdGoTypes.GoUInt8),
(127 : stdgo.StdGoTypes.GoUInt8),
(3 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(3 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _v:stdgo.Slice<stdgo.StdGoTypes.Ref<T__struct_0>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<T_emptyStruct>>);
        var _buf = stdgo.bytes.Bytes.newBuffer(_testData);
        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<T_emptyStruct>>>)));
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Encode/Decode: expected error but got err == nil" : stdgo.GoString)));
        };
    }
function _decBoolArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decBoolSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decBoolSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<Bool>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding bool array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice(false, _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<Bool>>), _length);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = _state._decodeUint() != ((0i64 : stdgo.StdGoTypes.GoUInt64));
            });
        };
        return true;
    }
function _decComplex64Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decComplex64Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>)) : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding complex64 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice(new stdgo.StdGoTypes.GoComplex64(0, 0), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoComplex64>>), _length);
                };
                var _real:stdgo.StdGoTypes.GoFloat64 = _float32FromBits(_state._decodeUint(), _ovfl);
                var _imag:stdgo.StdGoTypes.GoFloat64 = _float32FromBits(_state._decodeUint(), _ovfl);
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = new stdgo.StdGoTypes.GoComplex128((_real : stdgo.StdGoTypes.GoFloat32), (_imag : stdgo.StdGoTypes.GoFloat32));
            });
        };
        return true;
    }
function _decComplex128Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex128Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decComplex128Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>)) : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding complex128 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice(new stdgo.StdGoTypes.GoComplex128(0, 0), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoComplex128>>), _length);
                };
                var _real:stdgo.StdGoTypes.GoFloat64 = _float64FromBits(_state._decodeUint());
                var _imag:stdgo.StdGoTypes.GoFloat64 = _float64FromBits(_state._decodeUint());
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = new stdgo.StdGoTypes.GoComplex128(_real, _imag);
            });
        };
        return true;
    }
function _decFloat32Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decFloat32Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding float32 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoFloat32), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoFloat32>>), _length);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_float32FromBits(_state._decodeUint(), _ovfl) : stdgo.StdGoTypes.GoFloat32);
            });
        };
        return true;
    }
function _decFloat64Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decFloat64Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding float64 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoFloat64), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoFloat64>>), _length);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = _float64FromBits(_state._decodeUint());
            });
        };
        return true;
    }
function _decIntArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decIntSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decIntSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding int array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoInt), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
                if ((_x < (-2147483648i64 : stdgo.StdGoTypes.GoInt64)) || (((2147483647u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoInt64) < _x)) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoInt);
            });
        };
        return true;
    }
function _decInt16Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt16Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decInt16Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt16>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt16>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding int16 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoInt16), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt16>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
                if ((_x < (-32768i64 : stdgo.StdGoTypes.GoInt64)) || ((32767i64 : stdgo.StdGoTypes.GoInt64) < _x)) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoInt16);
            });
        };
        return true;
    }
function _decInt32Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decInt32Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding int32 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoInt32), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
                if ((_x < (-2147483648i64 : stdgo.StdGoTypes.GoInt64)) || ((2147483647i64 : stdgo.StdGoTypes.GoInt64) < _x)) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoInt32);
            });
        };
        return true;
    }
function _decInt64Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decInt64Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding int64 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoInt64), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>>), _length);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = _state._decodeInt();
            });
        };
        return true;
    }
function _decInt8Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt8Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decInt8Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt8>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt8>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding int8 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoInt8), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt8>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
                if ((_x < (-128i64 : stdgo.StdGoTypes.GoInt64)) || ((127i64 : stdgo.StdGoTypes.GoInt64) < _x)) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoInt8);
            });
        };
        return true;
    }
function _decStringArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decStringSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decStringSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.GoString>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding string array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice(("" : stdgo.GoString), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.GoString>>), _length);
                };
                var _u:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
                var _n:stdgo.StdGoTypes.GoInt = (_u : stdgo.StdGoTypes.GoInt);
                if (((_n < (0 : stdgo.StdGoTypes.GoInt)) || ((_n : stdgo.StdGoTypes.GoUInt64) != _u)) || (_n > _state._b.len())) {
                    _errorf(("length of string exceeds input size (%d bytes)" : stdgo.GoString), stdgo.Go.toInterface(_u));
                };
                if (_n > _state._b.len()) {
                    _errorf(("string data too long for buffer: %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
                var _data = _state._b.bytes();
                if ((_data.length) < _n) {
                    _errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = ((_data.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
                _state._b.drop(_n);
            });
        };
        return true;
    }
function _decUintArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decUintSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding uint array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoUInt), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoUInt);
            });
        };
        return true;
    }
function _decUint16Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint16Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decUint16Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding uint16 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoUInt16), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt16>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
                if ((65535i64 : stdgo.StdGoTypes.GoUInt64) < _x) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoUInt16);
            });
        };
        return true;
    }
function _decUint32Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decUint32Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding uint32 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoUInt32), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt32>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
                if ((4294967295i64 : stdgo.StdGoTypes.GoUInt64) < _x) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoUInt32);
            });
        };
        return true;
    }
function _decUint64Array(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decUint64Slice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding uint64 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoUInt64), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt64>>), _length);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = _state._decodeUint();
            });
        };
        return true;
    }
function _decUintptrArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintptrSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__(), _length, _ovfl);
    }
function _decUintptrSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>)) : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding uintptr array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= (_slice.length)) {
                    _growSlice((0 : stdgo.StdGoTypes.GoUIntptr), _v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>>), _length);
                };
                var _x:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
                if (((4294967295 : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoUInt64) < _x) {
                    _error_(_ovfl);
                };
                _slice[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoUIntptr);
            });
        };
        return true;
    }
/**
    // growSlice is called for a slice that we only partially allocated,
    // to grow it up to length.
**/
macro function _growSlice<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _v:haxe.macro.Expr.ExprOf<stdgo.reflect.Reflect.Value>, _ps:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<stdgo.Slice<E>>>, _length:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.GoInt>):haxe.macro.Expr.ExprOf<Void>;
function _overflow(_name:stdgo.GoString):stdgo.Error {
        return stdgo.errors.Errors.new_(("value for \"" : stdgo.GoString) + _name?.__copy__() + ("\" out of range" : stdgo.GoString)?.__copy__()?.__copy__());
    }
/**
    // decodeUintReader reads an encoded unsigned integer from an io.Reader.
    // Used only by the Decoder to read the message length.
**/
function _decodeUintReader(_r:stdgo.io.Io.Reader, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } {
        var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), _width:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _width = (1 : stdgo.StdGoTypes.GoInt);
        var __tmp__ = stdgo.io.Io.readFull(_r, (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _width) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        var _b:stdgo.StdGoTypes.GoUInt8 = _buf[(0 : stdgo.StdGoTypes.GoInt)];
        if (_b <= (127 : stdgo.StdGoTypes.GoUInt8)) {
            return { _0 : (_b : stdgo.StdGoTypes.GoUInt64), _1 : _width, _2 : (null : stdgo.Error) };
        };
        _n = -((_b : stdgo.StdGoTypes.GoInt8) : stdgo.StdGoTypes.GoInt);
        if (_n > (8 : stdgo.StdGoTypes.GoInt)) {
            _err = _errBadUint;
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _width = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        for (__0 => _b in (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _width) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) {
            _x = (_x << (8i64 : stdgo.StdGoTypes.GoUInt64)) | (_b : stdgo.StdGoTypes.GoUInt64);
        };
        _width++;
        return { _0 : _x, _1 : _width, _2 : _err };
    }
/**
    // ignoreUint discards a uint value with no destination.
**/
function _ignoreUint(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state._decodeUint();
    }
/**
    // ignoreTwoUints discards a uint value with no destination. It's used to skip
    // complex values.
**/
function _ignoreTwoUints(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state._decodeUint();
        _state._decodeUint();
    }
/**
    // decAlloc takes a value and returns a settable value that can
    // be assigned to. If the value is a pointer, decAlloc guarantees it points to storage.
    // The callers to the individual decoders are expected to have used decAlloc.
    // The individual decoders don't need to it.
**/
function _decAlloc(_v:stdgo.reflect.Reflect.Value):stdgo.reflect.Reflect.Value {
        while (_v.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
            if (_v.isNil()) {
                _v.set(stdgo.reflect.Reflect.new_(_v.type().elem())?.__copy__());
            };
            _v = _v.elem()?.__copy__();
        };
        return _v?.__copy__();
    }
/**
    // decBool decodes a uint and stores it as a boolean in value.
**/
function _decBool(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setBool(_state._decodeUint() != ((0i64 : stdgo.StdGoTypes.GoUInt64)));
    }
/**
    // decInt8 decodes an integer and stores it as an int8 in value.
**/
function _decInt8(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
        if ((_v < (-128i64 : stdgo.StdGoTypes.GoInt64)) || ((127i64 : stdgo.StdGoTypes.GoInt64) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint8 decodes an unsigned integer and stores it as a uint8 in value.
**/
function _decUint8(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        if ((255i64 : stdgo.StdGoTypes.GoUInt64) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt16 decodes an integer and stores it as an int16 in value.
**/
function _decInt16(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
        if ((_v < (-32768i64 : stdgo.StdGoTypes.GoInt64)) || ((32767i64 : stdgo.StdGoTypes.GoInt64) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint16 decodes an unsigned integer and stores it as a uint16 in value.
**/
function _decUint16(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        if ((65535i64 : stdgo.StdGoTypes.GoUInt64) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt32 decodes an integer and stores it as an int32 in value.
**/
function _decInt32(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
        if ((_v < (-2147483648i64 : stdgo.StdGoTypes.GoInt64)) || ((2147483647i64 : stdgo.StdGoTypes.GoInt64) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint32 decodes an unsigned integer and stores it as a uint32 in value.
**/
function _decUint32(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        if ((4294967295i64 : stdgo.StdGoTypes.GoUInt64) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt64 decodes an integer and stores it as an int64 in value.
**/
function _decInt64(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoInt64 = _state._decodeInt();
        _value.setInt(_v);
    }
/**
    // decUint64 decodes an unsigned integer and stores it as a uint64 in value.
**/
function _decUint64(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        _value.setUint(_v);
    }
/**
    // Floating-point numbers are transmitted as uint64s holding the bits
    // of the underlying representation. They are sent byte-reversed, with
    // the exponent end coming out first, so integer floating point numbers
    // (for example) transmit more compactly. This routine does the
    // unswizzling.
**/
function _float64FromBits(_u:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoFloat64 {
        var _v:stdgo.StdGoTypes.GoUInt64 = stdgo.math.bits.Bits.reverseBytes64(_u);
        return stdgo.math.Math.float64frombits(_v);
    }
/**
    // float32FromBits decodes an unsigned integer, treats it as a 32-bit floating-point
    // number, and returns it. It's a helper function for float32 and complex64.
    // It returns a float64 because that's what reflection needs, but its return
    // value is known to be accurately representable in a float32.
**/
function _float32FromBits(_u:stdgo.StdGoTypes.GoUInt64, _ovfl:stdgo.Error):stdgo.StdGoTypes.GoFloat64 {
        var _v:stdgo.StdGoTypes.GoFloat64 = _float64FromBits(_u);
        var _av:stdgo.StdGoTypes.GoFloat64 = _v;
        if (_av < (0 : stdgo.StdGoTypes.GoFloat64)) {
            _av = -_av;
        };
        if (((3.4028234663852886e+38 : stdgo.StdGoTypes.GoFloat64) < _av) && (_av <= (1.7976931348623157e+308 : stdgo.StdGoTypes.GoFloat64))) {
            _error_(_ovfl);
        };
        return _v;
    }
/**
    // decFloat32 decodes an unsigned integer, treats it as a 32-bit floating-point
    // number, and stores it in value.
**/
function _decFloat32(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float32FromBits(_state._decodeUint(), _i._ovfl));
    }
/**
    // decFloat64 decodes an unsigned integer, treats it as a 64-bit floating-point
    // number, and stores it in value.
**/
function _decFloat64(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float64FromBits(_state._decodeUint()));
    }
/**
    // decComplex64 decodes a pair of unsigned integers, treats them as a
    // pair of floating point numbers, and stores them as a complex64 in value.
    // The real part comes first.
**/
function _decComplex64(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:stdgo.StdGoTypes.GoFloat64 = _float32FromBits(_state._decodeUint(), _i._ovfl);
        var _imag:stdgo.StdGoTypes.GoFloat64 = _float32FromBits(_state._decodeUint(), _i._ovfl);
        _value.setComplex(new stdgo.StdGoTypes.GoComplex128(_real, _imag));
    }
/**
    // decComplex128 decodes a pair of unsigned integers, treats them as a
    // pair of floating point numbers, and stores them as a complex128 in value.
    // The real part comes first.
**/
function _decComplex128(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:stdgo.StdGoTypes.GoFloat64 = _float64FromBits(_state._decodeUint());
        var _imag:stdgo.StdGoTypes.GoFloat64 = _float64FromBits(_state._decodeUint());
        _value.setComplex(new stdgo.StdGoTypes.GoComplex128(_real, _imag));
    }
/**
    // decUint8Slice decodes a byte slice and stores in value a slice header
    // describing the data.
    // uint8 slices are encoded as an unsigned count followed by the raw bytes.
**/
function _decUint8Slice(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        if (_value.cap() < _n) {
            var _safe:stdgo.StdGoTypes.GoInt = internal.saferio.Saferio.sliceCap(stdgo.Go.toInterface(((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>)), (_n : stdgo.StdGoTypes.GoUInt64));
            if (_safe < (0 : stdgo.StdGoTypes.GoInt)) {
                _errorf(("%s slice too big: %d elements" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
            };
            _value.set(stdgo.reflect.Reflect.makeSlice(_value.type(), _safe, _safe)?.__copy__());
            var _ln:stdgo.StdGoTypes.GoInt = _safe;
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_i < _n) {
                if (_i >= _ln) {
                    _value.grow((1 : stdgo.StdGoTypes.GoInt));
                };
                _ln = _value.cap();
                if (_ln > _n) {
                    _ln = _n;
                };
                _value.setLen(_ln);
                var _sub:stdgo.reflect.Reflect.Value = _value.slice(_i, _ln)?.__copy__();
                {
                    var __tmp__ = _state._b.read(_sub.bytes()), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _errorf(("error decoding []byte at %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i = _ln;
            };
        } else {
            _value.setLen(_n);
            {
                var __tmp__ = _state._b.read(_value.bytes()), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _errorf(("error decoding []byte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
/**
    // decString decodes byte array and stores in value a string header
    // describing the data.
    // Strings are encoded as an unsigned count followed by the raw bytes.
**/
function _decString(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        var _data = _state._b.bytes();
        if ((_data.length) < _n) {
            _errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        var _s:stdgo.GoString = ((_data.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
        _state._b.drop(_n);
        _value.setString(_s?.__copy__());
    }
/**
    // ignoreUint8Array skips over the data for a byte slice value with no destination.
**/
function _ignoreUint8Array(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("slice length too large" : stdgo.GoString));
        };
        var _bn:stdgo.StdGoTypes.GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(("invalid slice length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
/**
    // decodeIntoValue is a helper for map decoding.
**/
function _decodeIntoValue(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _op:T_decOp, _isPtr:Bool, _value:stdgo.reflect.Reflect.Value, _instr:stdgo.StdGoTypes.Ref<T_decInstr>):stdgo.reflect.Reflect.Value {
        var _v:stdgo.reflect.Reflect.Value = _value?.__copy__();
        if (_isPtr) {
            _v = _decAlloc(_value?.__copy__())?.__copy__();
        };
        _op(_instr, _state, _v?.__copy__());
        return _value?.__copy__();
    }
/**
    // Gob depends on being able to take the address
    // of zeroed Values it creates, so use this wrapper instead
    // of the standard reflect.Zero.
    // Each call allocates once.
**/
function _allocValue(_t:stdgo.reflect.Reflect.Type):stdgo.reflect.Reflect.Value {
        return stdgo.reflect.Reflect.new_(_t).elem()?.__copy__();
    }
/**
    // NewDecoder returns a new decoder that reads from the io.Reader.
    // If r does not also implement io.ByteReader, it will be wrapped in a
    // bufio.Reader.
**/
function newDecoder(_r:stdgo.io.Io.Reader):stdgo.StdGoTypes.Ref<Decoder> {
        var _dec = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Decoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Decoder>);
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.io.Io.ByteReader)) : stdgo.io.Io.ByteReader), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.ByteReader), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _r = stdgo.Go.asInterface(stdgo.bufio.Bufio.newReader(_r));
            };
        };
        _dec._r = _r;
        _dec._wireType = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>>);
        _dec._decoderCache = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>>);
        _dec._ignorerCache = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>);
        _dec._countBuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        return _dec;
    }
/**
    // toInt turns an encoded uint64 into an int, according to the marshaling rules.
**/
function _toInt(_x:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoInt64 {
        var _i:stdgo.StdGoTypes.GoInt64 = (_x >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64);
        if (_x & (1i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
            _i = (-1 ^ _i);
        };
        return _i;
    }
function _encBoolArray(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encBoolSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encBoolSlice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<Bool>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != false) || _state._sendZero) {
                if (_x) {
                    _state._encodeUint((1i64 : stdgo.StdGoTypes.GoUInt64));
                } else {
                    _state._encodeUint((0i64 : stdgo.StdGoTypes.GoUInt64));
                };
            };
        };
        return true;
    }
function _encComplex64Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encComplex64Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>)) : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))) || _state._sendZero) {
                var _rpart:stdgo.StdGoTypes.GoUInt64 = _floatBits((_x.real : stdgo.StdGoTypes.GoFloat64));
                var _ipart:stdgo.StdGoTypes.GoUInt64 = _floatBits((_x.imag : stdgo.StdGoTypes.GoFloat64));
                _state._encodeUint(_rpart);
                _state._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encComplex128Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex128Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encComplex128Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>)) : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))) || _state._sendZero) {
                var _rpart:stdgo.StdGoTypes.GoUInt64 = _floatBits(_x.real);
                var _ipart:stdgo.StdGoTypes.GoUInt64 = _floatBits(_x.imag);
                _state._encodeUint(_rpart);
                _state._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encFloat32Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encFloat32Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoFloat64)) || _state._sendZero) {
                var _bits:stdgo.StdGoTypes.GoUInt64 = _floatBits((_x : stdgo.StdGoTypes.GoFloat64));
                _state._encodeUint(_bits);
            };
        };
        return true;
    }
function _encFloat64Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encFloat64Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoFloat64)) || _state._sendZero) {
                var _bits:stdgo.StdGoTypes.GoUInt64 = _floatBits(_x);
                _state._encodeUint(_bits);
            };
        };
        return true;
    }
function _encIntArray(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encIntSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encIntSlice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoInt)) || _state._sendZero) {
                _state._encodeInt((_x : stdgo.StdGoTypes.GoInt64));
            };
        };
        return true;
    }
function _encInt16Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt16Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encInt16Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt16>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt16>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoInt16)) || _state._sendZero) {
                _state._encodeInt((_x : stdgo.StdGoTypes.GoInt64));
            };
        };
        return true;
    }
function _encInt32Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encInt32Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoInt32)) || _state._sendZero) {
                _state._encodeInt((_x : stdgo.StdGoTypes.GoInt64));
            };
        };
        return true;
    }
function _encInt64Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encInt64Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0i64 : stdgo.StdGoTypes.GoInt64)) || _state._sendZero) {
                _state._encodeInt(_x);
            };
        };
        return true;
    }
function _encInt8Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt8Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encInt8Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoInt8>)) : stdgo.Slice<stdgo.StdGoTypes.GoInt8>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoInt8)) || _state._sendZero) {
                _state._encodeInt((_x : stdgo.StdGoTypes.GoInt64));
            };
        };
        return true;
    }
function _encStringArray(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encStringSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encStringSlice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.GoString>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != stdgo.Go.str()) || _state._sendZero) {
                _state._encodeUint((_x.length : stdgo.StdGoTypes.GoUInt64));
                _state._b.writeString(_x?.__copy__());
            };
        };
        return true;
    }
function _encUintArray(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encUintSlice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0u32 : stdgo.StdGoTypes.GoUInt)) || _state._sendZero) {
                _state._encodeUint((_x : stdgo.StdGoTypes.GoUInt64));
            };
        };
        return true;
    }
function _encUint16Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint16Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encUint16Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoUInt16)) || _state._sendZero) {
                _state._encodeUint((_x : stdgo.StdGoTypes.GoUInt64));
            };
        };
        return true;
    }
function _encUint32Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint32Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encUint32Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0u32 : stdgo.StdGoTypes.GoUInt32)) || _state._sendZero) {
                _state._encodeUint((_x : stdgo.StdGoTypes.GoUInt64));
            };
        };
        return true;
    }
function _encUint64Array(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint64Slice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encUint64Slice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0i64 : stdgo.StdGoTypes.GoUInt64)) || _state._sendZero) {
                _state._encodeUint(_x);
            };
        };
        return true;
    }
function _encUintptrArray(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintptrSlice(_state, _v.slice((0 : stdgo.StdGoTypes.GoInt), _v.len())?.__copy__());
    }
function _encUintptrSlice(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>)) : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>), ok : true };
        } catch(_) {
            { value : (null : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (__0 => _x in _slice) {
            if ((_x != (0 : stdgo.StdGoTypes.GoUIntptr)) || _state._sendZero) {
                _state._encodeUint((_x : stdgo.StdGoTypes.GoUInt64));
            };
        };
        return true;
    }
/**
    // encIndirect dereferences pv indir times and returns the result.
**/
function _encIndirect(_pv:stdgo.reflect.Reflect.Value, _indir:stdgo.StdGoTypes.GoInt):stdgo.reflect.Reflect.Value {
        stdgo.Go.cfor(_indir > (0 : stdgo.StdGoTypes.GoInt), _indir--, {
            if (_pv.isNil()) {
                break;
            };
            _pv = _pv.elem()?.__copy__();
        });
        return _pv?.__copy__();
    }
/**
    // encBool encodes the bool referenced by v as an unsigned 0 or 1.
**/
function _encBool(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _b:Bool = _v.bool_();
        if (_b || _state._sendZero) {
            _state._update(_i);
            if (_b) {
                _state._encodeUint((1i64 : stdgo.StdGoTypes.GoUInt64));
            } else {
                _state._encodeUint((0i64 : stdgo.StdGoTypes.GoUInt64));
            };
        };
    }
/**
    // encInt encodes the signed integer (int int8 int16 int32 int64) referenced by v.
**/
function _encInt(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:stdgo.StdGoTypes.GoInt64 = _v.int_();
        if ((_value != (0i64 : stdgo.StdGoTypes.GoInt64)) || _state._sendZero) {
            _state._update(_i);
            _state._encodeInt(_value);
        };
    }
/**
    // encUint encodes the unsigned integer (uint uint8 uint16 uint32 uint64 uintptr) referenced by v.
**/
function _encUint(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:stdgo.StdGoTypes.GoUInt64 = _v.uint();
        if ((_value != (0i64 : stdgo.StdGoTypes.GoUInt64)) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint(_value);
        };
    }
/**
    // floatBits returns a uint64 holding the bits of a floating-point number.
    // Floating-point numbers are transmitted as uint64s holding the bits
    // of the underlying representation. They are sent byte-reversed, with
    // the exponent end coming out first, so integer floating point numbers
    // (for example) transmit more compactly. This routine does the
    // swizzling.
**/
function _floatBits(_f:stdgo.StdGoTypes.GoFloat64):stdgo.StdGoTypes.GoUInt64 {
        var _u:stdgo.StdGoTypes.GoUInt64 = stdgo.math.Math.float64bits(_f);
        return stdgo.math.bits.Bits.reverseBytes64(_u);
    }
/**
    // encFloat encodes the floating point value (float32 float64) referenced by v.
**/
function _encFloat(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _f:stdgo.StdGoTypes.GoFloat64 = _v.float_();
        if ((_f != (0 : stdgo.StdGoTypes.GoFloat64)) || _state._sendZero) {
            var _bits:stdgo.StdGoTypes.GoUInt64 = _floatBits(_f);
            _state._update(_i);
            _state._encodeUint(_bits);
        };
    }
/**
    // encComplex encodes the complex value (complex64 complex128) referenced by v.
    // Complex numbers are just a pair of floating-point numbers, real part first.
**/
function _encComplex(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _c:stdgo.StdGoTypes.GoComplex128 = _v.complex();
        if ((_c != ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))) || _state._sendZero) {
            var _rpart:stdgo.StdGoTypes.GoUInt64 = _floatBits(_c.real);
            var _ipart:stdgo.StdGoTypes.GoUInt64 = _floatBits(_c.imag);
            _state._update(_i);
            _state._encodeUint(_rpart);
            _state._encodeUint(_ipart);
        };
    }
/**
    // encUint8Array encodes the byte array referenced by v.
    // Byte arrays are encoded as an unsigned count followed by the raw bytes.
**/
function _encUint8Array(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _b = _v.bytes();
        if ((_b.length > (0 : stdgo.StdGoTypes.GoInt)) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint((_b.length : stdgo.StdGoTypes.GoUInt64));
            _state._b.write(_b);
        };
    }
/**
    // encString encodes the string referenced by v.
    // Strings are encoded as an unsigned count followed by the raw bytes.
**/
function _encString(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _s:stdgo.GoString = (_v.string() : stdgo.GoString)?.__copy__();
        if ((_s.length > (0 : stdgo.StdGoTypes.GoInt)) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint((_s.length : stdgo.StdGoTypes.GoUInt64));
            _state._b.writeString(_s?.__copy__());
        };
    }
/**
    // encStructTerminator encodes the end of an encoded struct
    // as delta field number of 0.
**/
function _encStructTerminator(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state._encodeUint((0i64 : stdgo.StdGoTypes.GoUInt64));
    }
/**
    // valid reports whether the value is valid and a non-nil pointer.
    // (Slices, maps, and chans take care of themselves.)
**/
function _valid(_v:stdgo.reflect.Reflect.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((0u32 : stdgo.reflect.Reflect.Kind))) {
                return false;
            } else if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                return !_v.isNil();
            };
        };
        return true;
    }
/**
    // encodeReflectValue is a helper for maps. It encodes the value v.
**/
function _encodeReflectValue(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value, _op:T_encOp, _indir:stdgo.StdGoTypes.GoInt):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor((_i < _indir) && _v.isValid(), _i++, {
                _v = stdgo.reflect.Reflect.indirect(_v?.__copy__())?.__copy__();
            });
        };
        if (!_v.isValid()) {
            _errorf(("encodeReflectValue: nil element" : stdgo.GoString));
        };
        _op(null, _state, _v?.__copy__());
    }
/**
    // encOpFor returns (a pointer to) the encoding op for the base type under rt and
    // the indirection count to reach it.
**/
function _encOpFor(_rt:stdgo.reflect.Reflect.Type, _inProgress:stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_encOp>>, _building:stdgo.GoMap<stdgo.StdGoTypes.Ref<T_typeInfo>, Bool>):{ var _0 : stdgo.StdGoTypes.Ref<T_encOp>; var _1 : stdgo.StdGoTypes.GoInt; } {
        var _ut = _userType(_rt);
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            return _gobEncodeOpFor(_ut);
        };
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>));
            if (_opPtr != null && ((_opPtr : Dynamic).__nil__ == null || !(_opPtr : Dynamic).__nil__)) {
                return { _0 : _opPtr, _1 : _ut._indir };
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut._base;
        var _indir:stdgo.StdGoTypes.GoInt = _ut._indir;
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        var _op:T_encOp = (null : stdgo.encoding.gob.Gob.T_encOp);
        if ((_k : stdgo.StdGoTypes.GoInt) < (_encOpTable.length)) {
            _op = _encOpTable[(_k : stdgo.StdGoTypes.GoInt)];
        };
        if (_op == null) {
            _inProgress[_rt] = (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>);
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t.kind();
                            if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                    _op = _encUint8Array;
                                    break;
                                };
                                var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _elemIndir:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                var _helper:stdgo.encoding.gob.Gob.T_encHelper = (_encSliceHelper[_t.elem().kind()] ?? (null : stdgo.encoding.gob.Gob.T_encHelper));
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _slice:stdgo.reflect.Reflect.Value):Void {
                                    if (!_state._sendZero && (_slice.len() == (0 : stdgo.StdGoTypes.GoInt))) {
                                        return;
                                    };
                                    _state._update(_i);
                                    _state._enc._encodeArray(_state._b, _slice?.__copy__(), (_elemOp : stdgo.encoding.gob.Gob.T_encOp), _elemIndir, _slice.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                                var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _elemIndir:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                var _helper:stdgo.encoding.gob.Gob.T_encHelper = (_encArrayHelper[_t.elem().kind()] ?? (null : stdgo.encoding.gob.Gob.T_encHelper));
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _array:stdgo.reflect.Reflect.Value):Void {
                                    _state._update(_i);
                                    _state._enc._encodeArray(_state._b, _array?.__copy__(), (_elemOp : stdgo.encoding.gob.Gob.T_encOp), _elemIndir, _array.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                                var __tmp__ = _encOpFor(_t.key(), _inProgress, _building), _keyOp:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _keyIndir:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _elemIndir:stdgo.StdGoTypes.GoInt = __tmp__._1;
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _mv:stdgo.reflect.Reflect.Value):Void {
                                    if (!_state._sendZero && _mv.isNil()) {
                                        return;
                                    };
                                    _state._update(_i);
                                    _state._enc._encodeMap(_state._b, _mv?.__copy__(), (_keyOp : stdgo.encoding.gob.Gob.T_encOp), (_elemOp : stdgo.encoding.gob.Gob.T_encOp), _keyIndir, _elemIndir);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                                _getEncEngine(_userType(_typ), _building);
                                var _info = _mustGetTypeInfo(_typ);
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _sv:stdgo.reflect.Reflect.Value):Void {
                                    _state._update(_i);
                                    var _enc = _info._encoder.load(({} : stdgo.encoding.gob.Gob.T_encEngine));
                                    _state._enc._encodeStruct(_state._b, _enc, _sv?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _iv:stdgo.reflect.Reflect.Value):Void {
                                    if (!_state._sendZero && (!_iv.isValid() || _iv.isNil())) {
                                        return;
                                    };
                                    _state._update(_i);
                                    _state._enc._encodeInterface(_state._b, _iv?.__copy__());
                                };
                                break;
                            };
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            _errorf(("can\'t happen: encode type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
        };
        return { _0 : (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>), _1 : _indir };
    }
/**
    // gobEncodeOpFor returns the op for a type that is known to implement GobEncoder.
**/
function _gobEncodeOpFor(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_encOp>; var _1 : stdgo.StdGoTypes.GoInt; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        if (_ut._encIndir == ((-1 : stdgo.StdGoTypes.GoInt8))) {
            _rt = stdgo.reflect.Reflect.pointerTo(_rt);
        } else if (_ut._encIndir > (0 : stdgo.StdGoTypes.GoInt8)) {
            {
                var _i:stdgo.StdGoTypes.GoInt8 = (0 : stdgo.StdGoTypes.GoInt8);
                stdgo.Go.cfor(_i < _ut._encIndir, _i++, {
                    _rt = _rt.elem();
                });
            };
        };
        var _op:T_encOp = (null : stdgo.encoding.gob.Gob.T_encOp);
        _op = function(_i:stdgo.StdGoTypes.Ref<T_encInstr>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
            if (_ut._encIndir == ((-1 : stdgo.StdGoTypes.GoInt8))) {
                if (!_v.canAddr()) {
                    _errorf(("unaddressable value of type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
                };
                _v = _v.addr()?.__copy__();
            };
            if (!_state._sendZero && _v.isZero()) {
                return;
            };
            _state._update(_i);
            _state._enc._encodeGobEncoder(_state._b, _ut, _v?.__copy__());
        };
        return { _0 : (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>), _1 : (_ut._encIndir : stdgo.StdGoTypes.GoInt) };
    }
/**
    // compileEnc returns the engine to compile the type.
**/
function _compileEnc(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.StdGoTypes.Ref<T_typeInfo>, Bool>):stdgo.StdGoTypes.Ref<T_encEngine> {
        var _srt:stdgo.reflect.Reflect.Type = _ut._base;
        var _engine = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encEngine)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encEngine>);
        var _seen = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp>>);
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            _rt = _ut._user;
        };
        if ((_ut._externalEnc == (0 : stdgo.StdGoTypes.GoInt)) && (_srt.kind() == (25u32 : stdgo.reflect.Reflect.Kind))) {
            {
                var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _wireFieldNum:stdgo.StdGoTypes.GoInt = __1, _fieldNum:stdgo.StdGoTypes.GoInt = __0;
                stdgo.Go.cfor(_fieldNum < _srt.numField(), _fieldNum++, {
                    var _f:stdgo.reflect.Reflect.StructField = _srt.field(_fieldNum)?.__copy__();
                    if (!_isSent((stdgo.Go.setRef(_f) : stdgo.StdGoTypes.Ref<stdgo.reflect.Reflect.StructField>))) {
                        continue;
                    };
                    var __tmp__ = _encOpFor(_f.type, _seen, _building), _op:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt = __tmp__._1;
                    _engine._instr = (_engine._instr.__append__((new stdgo.encoding.gob.Gob.T_encInstr((_op : stdgo.encoding.gob.Gob.T_encOp), _wireFieldNum, _f.index, _indir) : stdgo.encoding.gob.Gob.T_encInstr)));
                    _wireFieldNum++;
                });
            };
            if ((_srt.numField() > (0 : stdgo.StdGoTypes.GoInt)) && (_engine._instr.length == (0 : stdgo.StdGoTypes.GoInt))) {
                _errorf(("type %s has no exported fields" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            _engine._instr = (_engine._instr.__append__((new stdgo.encoding.gob.Gob.T_encInstr(_encStructTerminator, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_encInstr)));
        } else {
            _engine._instr = new stdgo.Slice<stdgo.encoding.gob.Gob.T_encInstr>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (1 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.gob.Gob.T_encInstr)]);
            var __tmp__ = _encOpFor(_rt, _seen, _building), _op:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encOp> = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt = __tmp__._1;
            _engine._instr[(0 : stdgo.StdGoTypes.GoInt)] = (new stdgo.encoding.gob.Gob.T_encInstr((_op : stdgo.encoding.gob.Gob.T_encOp), (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _indir) : stdgo.encoding.gob.Gob.T_encInstr);
        };
        return _engine;
    }
/**
    // getEncEngine returns the engine to compile the type.
**/
function _getEncEngine(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.StdGoTypes.Ref<T_typeInfo>, Bool>):stdgo.StdGoTypes.Ref<T_encEngine> {
        var __tmp__ = _getTypeInfo(_ut), _info:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        var _enc = _info._encoder.load(({} : stdgo.encoding.gob.Gob.T_encEngine));
        if (_enc == null || (_enc : Dynamic).__nil__) {
            _enc = _buildEncEngine(_info, _ut, _building);
        };
        return _enc;
    }
function _buildEncEngine(_info:stdgo.StdGoTypes.Ref<T_typeInfo>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.StdGoTypes.Ref<T_typeInfo>, Bool>):stdgo.StdGoTypes.Ref<T_encEngine> {
        var __deferstack__:Array<Void -> Void> = [];
        if ((_building != null) && (_building[_info] ?? false)) {
            return null;
        };
        try {
            _info._encInit.lock();
            __deferstack__.unshift(() -> _info._encInit.unlock());
            var _enc = _info._encoder.load(({} : stdgo.encoding.gob.Gob.T_encEngine));
            if (_enc == null || (_enc : Dynamic).__nil__) {
                if (_building == null) {
                    _building = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>, Bool>();
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>, Bool>);
                };
                _building[_info] = true;
                _enc = _compileEnc(_ut, _building);
                _info._encoder.store(({} : stdgo.encoding.gob.Gob.T_encEngine), _enc);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _enc;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encEngine>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encEngine>);
        };
    }
/**
    // NewEncoder returns a new encoder that will transmit on the io.Writer.
**/
function newEncoder(_w:stdgo.io.Io.Writer):stdgo.StdGoTypes.Ref<Encoder> {
        var _enc = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Encoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Encoder>);
        _enc._w = (new stdgo.Slice<stdgo.io.Io.Writer>(1, 1, _w) : stdgo.Slice<stdgo.io.Io.Writer>);
        _enc._sent = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>);
        _enc._countState = _enc._newEncoderState((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encBuffer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>));
        return _enc;
    }
/**
    // Test basic operations in a safe manner.
**/
function testBasicEncoderDecoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _values:stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(
18,
18,
stdgo.Go.toInterface(true),
stdgo.Go.toInterface((123 : stdgo.StdGoTypes.GoInt)),
stdgo.Go.toInterface((123 : stdgo.StdGoTypes.GoInt8)),
stdgo.Go.toInterface((-12345 : stdgo.StdGoTypes.GoInt16)),
stdgo.Go.toInterface((123456 : stdgo.StdGoTypes.GoInt32)),
stdgo.Go.toInterface((-1234567i64 : stdgo.StdGoTypes.GoInt64)),
stdgo.Go.toInterface((123u32 : stdgo.StdGoTypes.GoUInt)),
stdgo.Go.toInterface((123 : stdgo.StdGoTypes.GoUInt8)),
stdgo.Go.toInterface((12345 : stdgo.StdGoTypes.GoUInt16)),
stdgo.Go.toInterface((123456u32 : stdgo.StdGoTypes.GoUInt32)),
stdgo.Go.toInterface((1234567i64 : stdgo.StdGoTypes.GoUInt64)),
stdgo.Go.toInterface((12345678 : stdgo.StdGoTypes.GoUIntptr)),
stdgo.Go.toInterface(((1.2345 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)),
stdgo.Go.toInterface((1.2345678 : stdgo.StdGoTypes.GoFloat64)),
stdgo.Go.toInterface(((1.2345f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2.3456f64) : stdgo.StdGoTypes.GoComplex64)),
stdgo.Go.toInterface(((1.2345678f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2.3456789f64) : stdgo.StdGoTypes.GoComplex128)),
stdgo.Go.toInterface((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)),
stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        for (__0 => _value in _values) {
            var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
            var _enc = newEncoder(stdgo.Go.asInterface(_b));
            var _err:stdgo.Error = _enc.encode(_value);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _dec = newDecoder(stdgo.Go.asInterface(_b));
            var _result:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(_value))?.__copy__();
            _err = _dec.decode(_result.interface_());
            if (_err != null) {
                _t.fatalf(("error decoding %T: %v:" : stdgo.GoString), stdgo.Go.toInterface(stdgo.reflect.Reflect.typeOf(_value)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(_value, _result.elem().interface_())) {
                _t.fatalf(("%T: expected %v got %v" : stdgo.GoString), _value, _value, _result.elem().interface_());
            };
        };
    }
function testEncodeIntSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _s8 = (new stdgo.Slice<stdgo.StdGoTypes.GoInt8>(
9,
9,
(1 : stdgo.StdGoTypes.GoInt8),
(5 : stdgo.StdGoTypes.GoInt8),
(12 : stdgo.StdGoTypes.GoInt8),
(22 : stdgo.StdGoTypes.GoInt8),
(35 : stdgo.StdGoTypes.GoInt8),
(51 : stdgo.StdGoTypes.GoInt8),
(70 : stdgo.StdGoTypes.GoInt8),
(92 : stdgo.StdGoTypes.GoInt8),
(117 : stdgo.StdGoTypes.GoInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoInt8>);
        var _s16 = (new stdgo.Slice<stdgo.StdGoTypes.GoInt16>(
9,
9,
(145 : stdgo.StdGoTypes.GoInt16),
(176 : stdgo.StdGoTypes.GoInt16),
(210 : stdgo.StdGoTypes.GoInt16),
(247 : stdgo.StdGoTypes.GoInt16),
(287 : stdgo.StdGoTypes.GoInt16),
(330 : stdgo.StdGoTypes.GoInt16),
(376 : stdgo.StdGoTypes.GoInt16),
(425 : stdgo.StdGoTypes.GoInt16),
(477 : stdgo.StdGoTypes.GoInt16)) : stdgo.Slice<stdgo.StdGoTypes.GoInt16>);
        var _s32 = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(
9,
9,
(532 : stdgo.StdGoTypes.GoInt32),
(590 : stdgo.StdGoTypes.GoInt32),
(651 : stdgo.StdGoTypes.GoInt32),
(715 : stdgo.StdGoTypes.GoInt32),
(782 : stdgo.StdGoTypes.GoInt32),
(852 : stdgo.StdGoTypes.GoInt32),
(925 : stdgo.StdGoTypes.GoInt32),
(1001 : stdgo.StdGoTypes.GoInt32),
(1080 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        var _s64 = (new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(
9,
9,
(1162i64 : stdgo.StdGoTypes.GoInt64),
(1247i64 : stdgo.StdGoTypes.GoInt64),
(1335i64 : stdgo.StdGoTypes.GoInt64),
(1426i64 : stdgo.StdGoTypes.GoInt64),
(1520i64 : stdgo.StdGoTypes.GoInt64),
(1617i64 : stdgo.StdGoTypes.GoInt64),
(1717i64 : stdgo.StdGoTypes.GoInt64),
(1820i64 : stdgo.StdGoTypes.GoInt64),
(1926i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>);
        _t.run(("int8" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            _enc.encode(stdgo.Go.toInterface(_s8));
            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            var _res = new stdgo.Slice<stdgo.StdGoTypes.GoInt8>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt8>>)));
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s8), stdgo.Go.toInterface(_res))) {
                _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s8), stdgo.Go.toInterface(_res));
            };
        });
        _t.run(("int16" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            _enc.encode(stdgo.Go.toInterface(_s16));
            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            var _res = new stdgo.Slice<stdgo.StdGoTypes.GoInt16>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt16>>)));
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_res))) {
                _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_res));
            };
        });
        _t.run(("int32" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            _enc.encode(stdgo.Go.toInterface(_s32));
            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            var _res = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>)));
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_res))) {
                _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_res));
            };
        });
        _t.run(("int64" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            _enc.encode(stdgo.Go.toInterface(_s64));
            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            var _res = new stdgo.Slice<stdgo.StdGoTypes.GoInt64>((9 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber64__();
            _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt64>>)));
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_res))) {
                _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_res));
            };
        });
    }
function testEncoderDecoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _et0 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET0>);
        _et0.a = (7 : stdgo.StdGoTypes.GoInt);
        _et0.b = ("gobs of fun" : stdgo.GoString);
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_et0));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _newEt0 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET0>);
        _err = _dec.decode(stdgo.Go.toInterface(_newEt0));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error decoding ET0:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_et0), stdgo.Go.toInterface(_newEt0))) {
            _t.fatalf(("invalid data for et0: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et0 : stdgo.encoding.gob.Gob.ET0)), stdgo.Go.toInterface((_newEt0 : stdgo.encoding.gob.Gob.ET0)));
        };
        if (_b.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
        _et1.a = (7 : stdgo.StdGoTypes.GoInt);
        _et1.et2 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>);
        _err = _enc.encode(stdgo.Go.toInterface(_et1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _newEt1 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
        _err = _dec.decode(stdgo.Go.toInterface(_newEt1));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_et1), stdgo.Go.toInterface(_newEt1))) {
            _t.fatalf(("invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et1 : stdgo.encoding.gob.Gob.ET1)), stdgo.Go.toInterface((_newEt1 : stdgo.encoding.gob.Gob.ET1)));
        };
        if (_b.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _enc.encode(stdgo.Go.toInterface(_et1));
        _newEt1 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
        _err = _dec.decode(stdgo.Go.toInterface(_newEt1));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("round 2: error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_et1), stdgo.Go.toInterface(_newEt1))) {
            _t.fatalf(("round 2: invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et1 : stdgo.encoding.gob.Gob.ET1)), stdgo.Go.toInterface((_newEt1 : stdgo.encoding.gob.Gob.ET1)));
        };
        if (_b.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("round 2: not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _err = _enc.encode(stdgo.Go.toInterface(_et1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("round 3: encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newEt2 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>);
        _err = _dec.decode(stdgo.Go.toInterface(_newEt2));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("round 3: expected `bad type\' error decoding ET2" : stdgo.GoString)));
        };
    }
/**
    // Run one value through the encoder/decoder, but use the wrong type.
    // Input is always an ET1; we compare it to whatever is under 'e'.
**/
function _badTypeCheck(_e:stdgo.StdGoTypes.AnyInterface, _shouldFail:Bool, _msg:stdgo.GoString, _t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET1>);
        _et1.a = (7 : stdgo.StdGoTypes.GoInt);
        _et1.et2 = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>);
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_et1));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_e);
        if (_shouldFail && (_err == null)) {
            _t.error(stdgo.Go.toInterface(("expected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg));
        };
        if (!_shouldFail && (_err != null)) {
            _t.error(stdgo.Go.toInterface(("unexpected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Test that we recognize a bad type the first time.
**/
function testWrongTypeDecoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _badTypeCheck(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET2>)), true, ("no fields in common" : stdgo.GoString), _t);
        _badTypeCheck(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET3)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET3>)), false, ("different name of field" : stdgo.GoString), _t);
        _badTypeCheck(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ET4)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ET4>)), true, ("different type of field" : stdgo.GoString), _t);
    }
function testUnsupported(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        for (__0 => _v in _unsupportedValues) {
            var _err:stdgo.Error = _enc.encode(_v);
            if (_err == null) {
                _t.errorf(("expected error for %T; got none" : stdgo.GoString), _v);
            };
        };
    }
function _encAndDec(_in:stdgo.StdGoTypes.AnyInterface, _out:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(_in);
        if (_err != null) {
            return _err;
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_out);
        if (_err != null) {
            return _err;
        };
        return (null : stdgo.Error);
    }
/**
    // Encode a T, decode a *T
    
    
**/
@:structInit class T_testTypeToPtrType_64___localname___Type0 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeToPtrType_64___localname___Type0(a);
    }
}
function testTypeToPtrType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t0:stdgo.encoding.gob.Gob.T_testTypeToPtrType_64___localname___Type0 = (new stdgo.encoding.gob.Gob.T_testTypeToPtrType_64___localname___Type0((7 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_testTypeToPtrType_64___localname___Type0);
        var _t0p = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testTypeToPtrType_64___localname___Type0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrType_64___localname___Type0>);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t0), stdgo.Go.toInterface(_t0p));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // Encode a *T, decode a T
    
    
**/
@:structInit class T_testPtrTypeToType_65___localname___Type1 {
    public var a : stdgo.StdGoTypes.GoUInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoUInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPtrTypeToType_65___localname___Type1(a);
    }
}
function testPtrTypeToType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t1p = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_testPtrTypeToType_65___localname___Type1((17u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.encoding.gob.Gob.T_testPtrTypeToType_65___localname___Type1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testPtrTypeToType_65___localname___Type1>);
        var _t1:T_testPtrTypeToType_65___localname___Type1 = ({} : stdgo.encoding.gob.Gob.T_testPtrTypeToType_65___localname___Type1);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t1p));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testTypeToPtrPtrPtrPtrType_66___localname___Type2 {
    public var a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>>);
    public function new(?a:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeToPtrPtrPtrPtrType_66___localname___Type2(a);
    }
}
function testTypeToPtrPtrPtrPtrType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t2:stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2 = (new stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2() : stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2);
        _t2.a = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>>);
        _t2.a = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>);
        (_t2.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>);
        ((_t2.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64));
        (((_t2.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>).value = (27.4 : stdgo.StdGoTypes.GoFloat64);
        var _t2pppp = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>>>);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t2), stdgo.Go.toInterface(_t2pppp));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if ((((((((_t2pppp : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>) : stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2).a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>).value != ((((_t2.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>).value)) {
            _t.errorf(("wrong value after decode: %g not %g" : stdgo.GoString), stdgo.Go.toInterface((((((((_t2pppp : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>>) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>>) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2>) : stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_66___localname___Type2).a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>).value), stdgo.Go.toInterface((((_t2.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>>) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>>) : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>).value));
        };
    }
/**
    
    
    
**/
@:structInit class T_testSlice_67___localname___Type3 {
    public var a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?a:stdgo.Slice<stdgo.GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSlice_67___localname___Type3(a);
    }
}
function testSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t3p = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_testSlice_67___localname___Type3((new stdgo.Slice<stdgo.GoString>(2, 2, ("hello" : stdgo.GoString), ("world" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.encoding.gob.Gob.T_testSlice_67___localname___Type3)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testSlice_67___localname___Type3>);
        var _t3:T_testSlice_67___localname___Type3 = ({} : stdgo.encoding.gob.Gob.T_testSlice_67___localname___Type3);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t3), stdgo.Go.toInterface(_t3p));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // Encode a *T, decode a T
    
    
**/
@:structInit class T_testValueError_68___localname___Type4 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testValueError_68___localname___Type4(a);
    }
}
function testValueError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t4p = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_testValueError_68___localname___Type4((3 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_testValueError_68___localname___Type4)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testValueError_68___localname___Type4>);
        var _t4:T_testValueError_68___localname___Type4 = ({} : stdgo.encoding.gob.Gob.T_testValueError_68___localname___Type4);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t4p), stdgo.Go.toInterface(_t4));
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString))) {
                _t.error(stdgo.Go.toInterface(("expected error about pointer; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testArray_69___localname___Type5 {
    public var a : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 3) ("" : stdgo.GoString)]);
    public var b : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?a:stdgo.GoArray<stdgo.GoString>, ?b:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArray_69___localname___Type5(a, b);
    }
}
/**
    
    
    
**/
@:structInit class T_testArray_70___localname___Type6 {
    public var a : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
    public function new(?a:stdgo.GoArray<stdgo.GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArray_70___localname___Type6(a);
    }
}
function testArray(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _t5:stdgo.encoding.gob.Gob.T_testArray_69___localname___Type5 = (new stdgo.encoding.gob.Gob.T_testArray_69___localname___Type5((new stdgo.GoArray<stdgo.GoString>(("hello" : stdgo.GoString), ("," : stdgo.GoString), ("world" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>), (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.T_testArray_69___localname___Type5);
        var _t5p:T_testArray_69___localname___Type5 = ({} : stdgo.encoding.gob.Gob.T_testArray_69___localname___Type5);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t5), stdgo.Go.toInterface((stdgo.Go.setRef(_t5p) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testArray_69___localname___Type5>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _t6:T_testArray_70___localname___Type6 = ({} : stdgo.encoding.gob.Gob.T_testArray_70___localname___Type6);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t5), stdgo.Go.toInterface((stdgo.Go.setRef(_t6) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testArray_70___localname___Type6>)));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("should fail with mismatched array sizes" : stdgo.GoString)));
            };
        };
    }
@:named typedef T_testRecursiveMapType_71___localname___recursiveMap = stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>;
function testRecursiveMapType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _r1:stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>();
            x.__defaultValue__ = () -> new stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap();
            @:mergeBlock {
                x.set(("A" : stdgo.GoString), @:invalid_compositelit null);
                x.set(("D" : stdgo.GoString), null);
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>);
        var _r2:stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>();
            x.__defaultValue__ = () -> new stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap();
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_r1), stdgo.Go.toInterface((stdgo.Go.setRef(_r2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testRecursiveMapType_71___localname___recursiveMap>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
@:named typedef T_testRecursiveSliceType_72___localname___recursiveSlice = stdgo.Slice<stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice>;
function testRecursiveSliceType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _r1:stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice = {
            var s = new stdgo.Slice<stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice>(2, 0);
            s[0] = {
                var s = new stdgo.Slice<stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice>(1, 0);
                s[0] = null;
                s;
            };
            s[1] = null;
            s;
        };
        var _r2:stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice = new stdgo.Slice<stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_r1), stdgo.Go.toInterface((stdgo.Go.setRef(_r2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testRecursiveSliceType_72___localname___recursiveSlice>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testDefaultsInArray_73___localname___Type7 {
    public var b : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var i : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var f : stdgo.Slice<stdgo.StdGoTypes.GoFloat64> = (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>);
    public function new(?b:stdgo.Slice<Bool>, ?i:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?s:stdgo.Slice<stdgo.GoString>, ?f:stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) {
        if (b != null) this.b = b;
        if (i != null) this.i = i;
        if (s != null) this.s = s;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDefaultsInArray_73___localname___Type7(b, i, s, f);
    }
}
/**
    // Regression test for bug: must send zero values inside arrays
**/
function testDefaultsInArray(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _t7:stdgo.encoding.gob.Gob.T_testDefaultsInArray_73___localname___Type7 = (new stdgo.encoding.gob.Gob.T_testDefaultsInArray_73___localname___Type7((new stdgo.Slice<Bool>(3, 3, false, false, true) : stdgo.Slice<Bool>), (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (new stdgo.Slice<stdgo.GoString>(3, 3, ("hi" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("there" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.StdGoTypes.GoFloat64>(3, 3, (0 : stdgo.StdGoTypes.GoFloat64), (0 : stdgo.StdGoTypes.GoFloat64), (1 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)) : stdgo.encoding.gob.Gob.T_testDefaultsInArray_73___localname___Type7);
        var _t7p:T_testDefaultsInArray_73___localname___Type7 = ({} : stdgo.encoding.gob.Gob.T_testDefaultsInArray_73___localname___Type7);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_t7), stdgo.Go.toInterface((stdgo.Go.setRef(_t7p) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDefaultsInArray_73___localname___Type7>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
function testSingletons(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        for (__0 => _test in _singleTests) {
            _b.reset();
            var _err:stdgo.Error = _enc.encode(_test._in);
            if (_err != null) {
                _t.errorf(("error encoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            };
            _err = _dec.decode(_test._out);
            if ((_err != null) && (_test._err == stdgo.Go.str())) {
                _t.errorf(("error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            } else if ((_err == null) && (_test._err != stdgo.Go.str())) {
                _t.errorf(("expected error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err));
                continue;
            } else if ((_err != null) && (_test._err != stdgo.Go.str())) {
                if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    _t.errorf(("wrong error decoding %v: wanted %s, got %v" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            var _val:stdgo.StdGoTypes.AnyInterface = stdgo.reflect.Reflect.valueOf(_test._out).elem().interface_();
            if (!stdgo.reflect.Reflect.deepEqual(_test._in, _val)) {
                _t.errorf(("decoding singleton: expected %v got %v" : stdgo.GoString), _test._in, _val);
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testStructNonStruct_74___localname___Struct {
    public var a : stdgo.GoString = "";
    public function new(?a:stdgo.GoString) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructNonStruct_74___localname___Struct(a);
    }
}
@:named typedef T_testStructNonStruct_75___localname___NonStruct = stdgo.GoString;
function testStructNonStruct(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _s:stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct = (new stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct(("hello" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct);
        var _sp:T_testStructNonStruct_74___localname___Struct = ({} : stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_s), stdgo.Go.toInterface((stdgo.Go.setRef(_sp) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _ns:T_testStructNonStruct_75___localname___NonStruct = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.T_testStructNonStruct_75___localname___NonStruct);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.pointer(_ns)));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("should get error for struct/non-struct" : stdgo.GoString)));
            } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
                _t.error(stdgo.Go.toInterface(("for struct/non-struct expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _nsp:T_testStructNonStruct_75___localname___NonStruct = (("" : stdgo.GoString) : stdgo.encoding.gob.Gob.T_testStructNonStruct_75___localname___NonStruct);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_ns), stdgo.Go.toInterface(stdgo.Go.pointer(_nsp)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_ns), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testStructNonStruct_74___localname___Struct>)));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("should get error for non-struct/struct" : stdgo.GoString)));
            } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
                _t.error(stdgo.Go.toInterface(("for non-struct/struct expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // A version of a bug reported on golang-nuts. Also tests top-level
    // slice of interfaces. The issue was registering *T caused T to be
    // stored as the concrete type.
**/
function testInterfaceIndirect(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_interfaceIndirectTestT() : stdgo.encoding.gob.Gob.T_interfaceIndirectTestT)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_interfaceIndirectTestT>))));
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w = (new stdgo.Slice<stdgo.encoding.gob.Gob.T_interfaceIndirectTestI>(1, 1, stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_interfaceIndirectTestT() : stdgo.encoding.gob.Gob.T_interfaceIndirectTestT)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_interfaceIndirectTestT>))) : stdgo.Slice<stdgo.encoding.gob.Gob.T_interfaceIndirectTestI>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_w));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _r:stdgo.Slice<T_interfaceIndirectTestI> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_interfaceIndirectTestI>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.gob.Gob.T_interfaceIndirectTestI>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
function testDecodeIntoNothing(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.NewType0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NewType0>)));
        for (_i => _test in _ignoreTests) {
            var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
            var _enc = newEncoder(stdgo.Go.asInterface(_b));
            var _err:stdgo.Error = _enc.encode(_test._in);
            if (_err != null) {
                _t.errorf(("%d: encode error %s:" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _dec = newDecoder(stdgo.Go.asInterface(_b));
            _err = _dec.decode(_test._out);
            if (_err != null) {
                _t.errorf(("%d: decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _str:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("Value %d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            _err = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.NewType0(_str?.__copy__()) : stdgo.encoding.gob.Gob.NewType0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NewType0>)));
            if (_err != null) {
                _t.fatalf(("%d: NewType0 encode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _ns = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.NewType0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.NewType0>);
            _err = _dec.decode(stdgo.Go.toInterface(_ns));
            if (_err != null) {
                _t.fatalf(("%d: NewType0 decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            if (_ns.s != (_str)) {
                _t.fatalf(("%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_ns.s));
            };
        };
    }
function testIgnoreRecursiveType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _data = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
38,
38,
(29 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(211 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(14 : stdgo.StdGoTypes.GoUInt8),
(114 : stdgo.StdGoTypes.GoUInt8),
(101 : stdgo.StdGoTypes.GoUInt8),
(99 : stdgo.StdGoTypes.GoUInt8),
(117 : stdgo.StdGoTypes.GoUInt8),
(114 : stdgo.StdGoTypes.GoUInt8),
(115 : stdgo.StdGoTypes.GoUInt8),
(105 : stdgo.StdGoTypes.GoUInt8),
(118 : stdgo.StdGoTypes.GoUInt8),
(101 : stdgo.StdGoTypes.GoUInt8),
(83 : stdgo.StdGoTypes.GoUInt8),
(108 : stdgo.StdGoTypes.GoUInt8),
(105 : stdgo.StdGoTypes.GoUInt8),
(99 : stdgo.StdGoTypes.GoUInt8),
(101 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(212 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(212 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(7 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(212 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _dec = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_data)));
        var _err:stdgo.Error = _dec.decode((null : stdgo.StdGoTypes.AnyInterface));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testNestedInterfaces(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _e = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _d = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Bug0Outer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Outer>)));
        register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.Bug0Inner)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Inner>)));
        var _f = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bug0Outer(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bug0Outer(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bug0Inner((7 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Bug0Inner)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Inner>))) : stdgo.encoding.gob.Gob.Bug0Outer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Outer>))) : stdgo.encoding.gob.Gob.Bug0Outer)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Outer>);
        var _v:stdgo.StdGoTypes.AnyInterface = stdgo.Go.toInterface(_f);
        var _err:stdgo.Error = _e.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_v : stdgo.StdGoTypes.Ref<Bug0Outer>)) : stdgo.StdGoTypes.Ref<Bug0Outer>), ok : true };
        } catch(_) {
            { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Outer>), ok : false };
        }, _outer1 = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("v not Bug0Outer: %T" : stdgo.GoString), _v);
        };
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_outer1.bug0Field : stdgo.StdGoTypes.Ref<Bug0Outer>)) : stdgo.StdGoTypes.Ref<Bug0Outer>), ok : true };
        } catch(_) {
            { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Outer>), ok : false };
        }, _outer2 = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("v.Bug0Field not Bug0Outer: %T" : stdgo.GoString), _outer1.bug0Field);
        };
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_outer2.bug0Field : stdgo.StdGoTypes.Ref<Bug0Inner>)) : stdgo.StdGoTypes.Ref<Bug0Inner>), ok : true };
        } catch(_) {
            { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug0Inner>), ok : false };
        }, _inner = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("v.Bug0Field.Bug0Field not Bug0Inner: %T" : stdgo.GoString), _outer2.bug0Field);
        };
        if (_inner.a != ((7 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("final value %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_inner.a), stdgo.Go.toInterface((7 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testMapBug1(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _in:stdgo.encoding.gob.Gob.Bug1StructMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.gob.Gob.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo.encoding.gob.Gob.Bug1Elem);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.Bug1Elem>);
        _in[("val1" : stdgo.GoString)] = (new stdgo.encoding.gob.Gob.Bug1Elem(("elem1" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Bug1Elem);
        _in[("val2" : stdgo.GoString)] = (new stdgo.encoding.gob.Gob.Bug1Elem(("elem2" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Bug1Elem);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_in));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _out:stdgo.encoding.gob.Gob.Bug1StructMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.gob.Gob.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo.encoding.gob.Gob.Bug1Elem);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.gob.Gob.Bug1Elem>);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug1StructMap>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            _t.errorf(("mismatch: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out));
        };
    }
function testGobMapInterfaceEncode(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("up" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUIntptr)));
                x.set(("i0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)));
                x.set(("i1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt8>(1, 1, (-1 : stdgo.StdGoTypes.GoInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoInt8>)));
                x.set(("i2" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt16>(1, 1, (-1 : stdgo.StdGoTypes.GoInt16)) : stdgo.Slice<stdgo.StdGoTypes.GoInt16>)));
                x.set(("i3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(1, 1, (-1 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)));
                x.set(("i4" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(1, 1, (-1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)));
                x.set(("u0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt>(1, 1, (1u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt>)));
                x.set(("u1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
                x.set(("u2" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt16>(1, 1, (1 : stdgo.StdGoTypes.GoUInt16)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>)));
                x.set(("u3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(1, 1, (1u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>)));
                x.set(("u4" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(1, 1, (1i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)));
                x.set(("f0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoFloat32>(1, 1, (1 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>)));
                x.set(("f1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoFloat64>(1, 1, (1 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)));
                x.set(("c0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoComplex64>(1, 1, new stdgo.StdGoTypes.GoComplex128((2i64 : stdgo.StdGoTypes.GoUInt64), (0i64 : stdgo.StdGoTypes.GoUInt64))) : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>)));
                x.set(("c1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoComplex128>(1, 1, new stdgo.StdGoTypes.GoComplex128((2 : stdgo.StdGoTypes.GoFloat64), (-2 : stdgo.StdGoTypes.GoFloat64))) : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>)));
                x.set(("us" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>(1, 1, (0 : stdgo.StdGoTypes.GoUIntptr)) : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>)));
                x.set(("bo" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<Bool>(1, 1, false) : stdgo.Slice<Bool>)));
                x.set(("st" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ("s" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_m));
        if (_err != null) {
            _t.errorf(("encode map: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testSliceReusesMemory(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        {
            var _x = (("abcd" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _enc = newEncoder(stdgo.Go.asInterface(_buf));
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_x));
            if (_err != null) {
                _t.errorf(("bytes: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.StdGoTypes.GoInt)]);
            var _dec = newDecoder(stdgo.Go.asInterface(_buf));
            _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("bytes: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo.bytes.Bytes.equal(_x, _y)) {
                _t.errorf(("bytes: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.StdGoTypes.GoInt)]))) {
                _t.errorf(("bytes: unnecessary reallocation" : stdgo.GoString));
            };
        };
        {
            var _x = (("abcd" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoRune>);
            var _enc = newEncoder(stdgo.Go.asInterface(_buf));
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_x));
            if (_err != null) {
                _t.errorf(("ints: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoRune>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.StdGoTypes.GoInt)]);
            var _dec = newDecoder(stdgo.Go.asInterface(_buf));
            _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("ints: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y))) {
                _t.errorf(("ints: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.StdGoTypes.GoInt)]))) {
                _t.errorf(("ints: unnecessary reallocation" : stdgo.GoString));
            };
        };
    }
/**
    // Used to crash: negative count in recvMessage.
**/
function testBadCount(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(6, 6, (251 : stdgo.StdGoTypes.GoUInt8), (165 : stdgo.StdGoTypes.GoUInt8), (130 : stdgo.StdGoTypes.GoUInt8), (47 : stdgo.StdGoTypes.GoUInt8), (202 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_b))).decode((null : stdgo.StdGoTypes.AnyInterface));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error from bad count" : stdgo.GoString)));
            } else if (_err.error() != (_errBadCount.error())) {
                _t.error(stdgo.Go.toInterface(("expected bad count error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // Verify that sequential Decoders built on a single input will
    // succeed if the input implements ReadByte and there is no
    // type information in the stream.
**/
function testSequentialDecoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                {
                    var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_s));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                var _dec = newDecoder(stdgo.Go.asInterface(_b));
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_s)));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                if (_s != (stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    _t.fatalf(("decode expected %d got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
            });
        };
    }
function testChanFuncIgnored(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _c = new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt));
        var _f:() -> Void = function():Void {};
        var _fp = (stdgo.Go.setRef(_f) : stdgo.StdGoTypes.Ref<() -> Void>);
        var _b0:stdgo.encoding.gob.Gob.Bug2 = (new stdgo.encoding.gob.Gob.Bug2((23 : stdgo.StdGoTypes.GoInt), _c, (stdgo.Go.setRef(_c) : stdgo.StdGoTypes.Ref<stdgo.Chan<stdgo.StdGoTypes.GoInt>>), _f, (stdgo.Go.setRef(_fp) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<() -> Void>>)) : stdgo.encoding.gob.Gob.Bug2);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_b0));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("error encoding:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _b1:Bug2 = ({} : stdgo.encoding.gob.Gob.Bug2);
        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug2>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_b1.a != (_b0.a)) {
            _t.fatalf(("got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_b1.a), stdgo.Go.toInterface(_b0.a));
        };
        if ((((_b1.c != null) || ((_b1.cp != null) && ((_b1.cp : Dynamic).__nil__ == null || !(_b1.cp : Dynamic).__nil__))) || (_b1.f != null)) || ((_b1.fpp != null) && ((_b1.fpp : Dynamic).__nil__ == null || !(_b1.fpp : Dynamic).__nil__))) {
            _t.fatal(stdgo.Go.toInterface(("unexpected value for chan or func" : stdgo.GoString)));
        };
    }
function testSliceIncompatibility(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _in:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(3, 3, (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _out:stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        {
            var _err:stdgo.Error = _encAndDec(stdgo.Go.toInterface(_in), stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected compatibility error" : stdgo.GoString)));
            };
        };
    }
function testGobPtrSlices(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _in = (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>(2, 2, (new stdgo.encoding.gob.Gob.Bug3((1 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>)) : stdgo.encoding.gob.Gob.Bug3), (new stdgo.encoding.gob.Gob.Bug3((2 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>)) : stdgo.encoding.gob.Gob.Bug3)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.StdGoTypes.Ref<Bug3>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bug3>>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            _t.fatalf(("got %v; wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_in));
        };
    }
/**
    // getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
    // a *map and then tried to reuse its engine to decode the inner map.
**/
function testPtrToMapOfMap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        register(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)));
        var _subdata = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        _subdata[("bar" : stdgo.GoString)] = stdgo.Go.toInterface(("baz" : stdgo.GoString));
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        _data[("foo" : stdgo.GoString)] = stdgo.Go.toInterface(_subdata);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newData:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        _err = newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_newData) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData))) {
            _t.fatalf(("expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData));
        };
    }
/**
    // Test that untyped nils generate an error, not a panic.
    // See Issue 16204.
**/
function testCatchInvalidNilValue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = _encodeAndRecover((null : stdgo.StdGoTypes.AnyInterface)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_panicErr != null) {
            _t.fatalf(("panicErr=%v, should not panic encoding untyped nil" : stdgo.GoString), stdgo.Go.toInterface(_panicErr));
        };
        if (_encodeErr == null) {
            _t.errorf(("got err=nil, want non-nil error when encoding untyped nil value" : stdgo.GoString));
        } else if (!stdgo.strings.Strings.contains(_encodeErr.error()?.__copy__(), ("nil value" : stdgo.GoString))) {
            _t.errorf(("expected \'nil value\' error; got err=%v" : stdgo.GoString), stdgo.Go.toInterface(_encodeErr));
        };
    }
/**
    // A top-level nil pointer generates a panic with a helpful string-valued message.
**/
function testTopLevelNilPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _ip:stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
        var __tmp__ = _encodeAndRecover(stdgo.Go.toInterface(_ip)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_encodeErr != null) {
            _t.fatal(stdgo.Go.toInterface(("error in encode:" : stdgo.GoString)), stdgo.Go.toInterface(_encodeErr));
        };
        if (_panicErr == null) {
            _t.fatal(stdgo.Go.toInterface(("top-level nil pointer did not panic" : stdgo.GoString)));
        };
        var _errMsg:stdgo.GoString = _panicErr.error()?.__copy__();
        if (!stdgo.strings.Strings.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected nil pointer error, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
function _encodeAndRecover(_value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _encodeErr:stdgo.Error = (null : stdgo.Error), _panicErr:stdgo.Error = (null : stdgo.Error);
        __deferstack__.unshift(() -> {
            var a = function():Void {
                var _e:stdgo.StdGoTypes.AnyInterface = ({
                    final r = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    r;
                });
                if (_e != null) {
                    {
                        final __type__ = _e;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                            var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                            _panicErr = _err;
                        } else {
                            var _err:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                            _panicErr = stdgo.fmt.Fmt.errorf(("%v" : stdgo.GoString), _err);
                        };
                    };
                };
            };
            a();
        });
        try {
            _encodeErr = newEncoder(stdgo.io.Io.discard).encode(_value);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _encodeErr, _1 : _panicErr };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _encodeErr, _1 : _panicErr };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _encodeErr, _1 : _panicErr };
        };
    }
function testNilPointerPanics(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __0:stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>), __1:stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt> = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>), __2:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>> = (stdgo.Go.setRef(_intMap) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>>), __3:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>>), __4:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.StdGoTypes.Ref<stdgo.Chan<Bool>> = (null : stdgo.StdGoTypes.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = new stdgo.Slice<stdgo.GoString>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__(), __9:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.GoString>>), _nilStringSlicePtr:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.GoString>> = __9, _stringSlice:stdgo.Slice<stdgo.GoString> = __8, _nilStringSlice:stdgo.Slice<stdgo.GoString> = __7, _nilBoolChannelPtr:stdgo.StdGoTypes.Ref<stdgo.Chan<Bool>> = __6, _nilBoolChannel:stdgo.Chan<Bool> = __5, _zero:stdgo.StdGoTypes.GoInt = __4, _nilIntMapPtr:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>> = __3, _intMapPtr:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>> = __2, _intMap:stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt> = __1, _nilStringPtr:stdgo.Pointer<stdgo.GoString> = __0;
        var _testCases = (new stdgo.Slice<T__struct_2>(
10,
10,
({ _value : stdgo.Go.toInterface(_nilStringPtr), _mustPanic : true } : T__struct_2),
({ _value : stdgo.Go.toInterface(_intMap), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_intMapPtr), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_nilIntMapPtr), _mustPanic : true } : T__struct_2),
({ _value : stdgo.Go.toInterface(_zero), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_nilStringSlice), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_stringSlice), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_nilStringSlicePtr), _mustPanic : true } : T__struct_2),
({ _value : stdgo.Go.toInterface(_nilBoolChannel), _mustPanic : false } : T__struct_2),
({ _value : stdgo.Go.toInterface(_nilBoolChannelPtr), _mustPanic : true } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _tt in _testCases) {
            var __tmp__ = _encodeAndRecover(_tt._value), __1:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
            if (_tt._mustPanic) {
                if (_panicErr == null) {
                    _t.errorf(("expected panic with input %#v, did not panic" : stdgo.GoString), _tt._value);
                };
                continue;
            };
            if (_panicErr != null) {
                _t.fatalf(("expected no panic with input %#v, got panic=%v" : stdgo.GoString), _tt._value, stdgo.Go.toInterface(_panicErr));
            };
        };
    }
function testNilPointerInsideInterface(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _ip:stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
        var _si:Struct0 = ({ i : stdgo.Go.toInterface(_ip) } : Struct0);
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_si));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
        var _errMsg:stdgo.GoString = _err.error()?.__copy__();
        if (!stdgo.strings.Strings.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString)) || !stdgo.strings.Strings.contains(_errMsg?.__copy__(), ("interface" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected error about nil pointer and interface, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
/**
    // Test that a failed compilation doesn't leave around an executable encoder.
    // Issue 3723.
**/
function testMutipleEncodingsOfBadType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:stdgo.encoding.gob.Gob.Bug4Public = ({ name : ("name" : stdgo.GoString), secret : (new stdgo.encoding.gob.Gob.Bug4Secret((1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.Bug4Secret) } : stdgo.encoding.gob.Gob.Bug4Public);
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_buf));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("first encoding: expected error" : stdgo.GoString)));
        };
        _buf.reset();
        _enc = newEncoder(stdgo.Go.asInterface(_buf));
        _err = _enc.encode(stdgo.Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("second encoding: expected error" : stdgo.GoString)));
        };
        if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("no exported fields" : stdgo.GoString))) {
            _t.errorf(("expected error about no exported fields; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function test29ElementSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        register(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.Z() : stdgo.encoding.gob.Gob.Z)));
        var _src = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((100 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _src.length.toBasic()) {
            _src[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.Z() : stdgo.encoding.gob.Gob.Z));
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_src));
        if (_err != null) {
            _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        var _dst:stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        _err = newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_dst) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)));
        if (_err != null) {
            _t.errorf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
    }
/**
    // Don't crash, just give error when allocating a huge slice.
    // Issue 8084.
**/
function testErrorForHugeSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _slice = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
10,
10,
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _err:stdgo.Error = newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_slice));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _buf.bytes()[((_buf.len() - _slice.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (250 : stdgo.StdGoTypes.GoUInt8);
        _err = newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("decode: no error" : stdgo.GoString)));
        };
        if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("slice too big" : stdgo.GoString))) {
            _t.fatalf(("decode: expected slice too big error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
/**
    // TestBadData tests that various problems caused by malformed input
    // are caught as errors and do not cause panics.
**/
function testBadData(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _badDataTests) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._input?.__copy__()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("#%d: hex error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _d = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_data)));
            _err = _d.decode(_test._data);
            if (_err == null) {
                _t.errorf(("decode: no error" : stdgo.GoString));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), _test._error?.__copy__())) {
                _t.errorf(("#%d: decode: expected %q error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._error), stdgo.Go.toInterface(_err.error()));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testDecodeErrorMultipleTypes_76___localname___Test {
    public var a : stdgo.GoString = "";
    public var b : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.GoString, ?b:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDecodeErrorMultipleTypes_76___localname___Test(a, b);
    }
}
function testDecodeErrorMultipleTypes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test(("one" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test)));
        var __0:T_testDecodeErrorMultipleTypes_76___localname___Test = ({} : stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test), __1:T_testDecodeErrorMultipleTypes_76___localname___Test = ({} : stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test), _result2:T_testDecodeErrorMultipleTypes_76___localname___Test = __1, _result:T_testDecodeErrorMultipleTypes_76___localname___Test = __0;
        var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_result) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test>)));
        if (_err != null) {
            _t.errorf(("decode: unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test(("two" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test)));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_result2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_76___localname___Test>)));
        if (_err == null) {
            _t.errorf(("decode: expected duplicate type error, got nil" : stdgo.GoString));
        } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("duplicate type" : stdgo.GoString))) {
            _t.errorf(("decode: expected duplicate type error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
/**
    
    
    
**/
@:structInit class T_testMarshalFloatMap_77___localname___mapEntry {
    public var _keyBits : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _value : stdgo.GoString = "";
    public function new(?_keyBits:stdgo.StdGoTypes.GoUInt64, ?_value:stdgo.GoString) {
        if (_keyBits != null) this._keyBits = _keyBits;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalFloatMap_77___localname___mapEntry(_keyBits, _value);
    }
}
/**
    // Issue 24075
**/
function testMarshalFloatMap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _nan1:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.naN();
        var _nan2:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.float64frombits(stdgo.math.Math.float64bits(_nan1) ^ (1i64 : stdgo.StdGoTypes.GoUInt64));
        var _in = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set(_nan1, ("a" : stdgo.GoString));
                x.set(_nan1, ("b" : stdgo.GoString));
                x.set(_nan2, ("c" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoFloat64, stdgo.GoString>);
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_in));
            if (_err != null) {
                _t.errorf(("Encode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _out = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoFloat64, stdgo.GoString>);
        var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        {
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoFloat64, stdgo.GoString>>)));
            if (_err != null) {
                _t.fatalf(("Decode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        var _readMap = function(_m:stdgo.GoMap<stdgo.StdGoTypes.GoFloat64, stdgo.GoString>):stdgo.Slice<T_testMarshalFloatMap_77___localname___mapEntry> {
            var _entries:stdgo.Slice<T_testMarshalFloatMap_77___localname___mapEntry> = (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry>);
            for (_k => _v in _m) {
                _entries = (_entries.__append__((new stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry(stdgo.math.Math.float64bits(_k), _v?.__copy__()) : stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry)));
            };
            stdgo.sort.Sort.slice(stdgo.Go.toInterface(_entries), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
                var __0:stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry = _entries[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry = _entries[(_j : stdgo.StdGoTypes.GoInt)], _ej:stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry = __1, _ei:stdgo.encoding.gob.Gob.T_testMarshalFloatMap_77___localname___mapEntry = __0;
                if (_ei._keyBits != (_ej._keyBits)) {
                    return _ei._keyBits < _ej._keyBits;
                };
                return _ei._value < _ej._value;
            });
            return _entries;
        };
        var _got = _readMap(_out);
        var _want = _readMap(_in);
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
            _t.fatalf(("\nEncode: %v\nDecode: %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
/**
    
    
    
**/
@:structInit class T_testDecodePartial_78___localname___T {
    public var x : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var y : stdgo.GoString = "";
    public function new(?x:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?y:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDecodePartial_78___localname___T(x, y);
    }
}
function testDecodePartial(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _t1:stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T = ({ x : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), y : ("foo" : stdgo.GoString) } : stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T);
        var _t2:stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T = ({ x : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (4 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), y : ("bar" : stdgo.GoString) } : stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _t1start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_t1) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _t2start:stdgo.StdGoTypes.GoInt = _buf.len();
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_t2) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _data = _buf.bytes();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_data.length), _i++, {
                var _bufr = stdgo.bytes.Bytes.newReader((_data.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                var __0:T_testDecodePartial_78___localname___T = ({} : stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T), __1:T_testDecodePartial_78___localname___T = ({} : stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T), _t2b:T_testDecodePartial_78___localname___T = __1, _t1b:T_testDecodePartial_78___localname___T = __0;
                var _dec = newDecoder(stdgo.Go.asInterface(_bufr));
                var _err:stdgo.Error = (null : stdgo.Error);
                _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t1b) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T>)));
                if (_err == null) {
                    _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t2b) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testDecodePartial_78___localname___T>)));
                };
                {
                    final __value__ = _i;
                    if (__value__ == (_t1start) || __value__ == (_t2start)) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                            _t.errorf(("%d/%d: expected io.EOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    } else if (__value__ == ((_data.length))) {
                        if (_err != null) {
                            _t.errorf(("%d/%d: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_t1b), stdgo.Go.toInterface(_t1))) {
                            _t.fatalf(("t1 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_t1b), stdgo.Go.toInterface(_t1));
                        };
                        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_t2b), stdgo.Go.toInterface(_t2))) {
                            _t.fatalf(("t2 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_t2b), stdgo.Go.toInterface(_t2));
                        };
                    } else {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.io.Io.errUnexpectedEOF))) {
                            _t.errorf(("%d/%d: expected io.ErrUnexpectedEOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    };
                };
            });
        };
    }
function testDecoderOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _dec = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
24,
24,
(18 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(248 : stdgo.StdGoTypes.GoUInt8),
(127 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))));
        var _r:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        var _err:stdgo.Error = _dec.decode(_r);
        if (_err == null) {
            _t.fatalf(("expected an error" : stdgo.GoString));
        };
    }
/**
    // errorf is like error_ but takes Printf-style arguments to construct an error.
    // It always prefixes the message with "gob: ".
**/
function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_args.length, 0, ..._args);
        _error_(stdgo.fmt.Fmt.errorf(("gob: " : stdgo.GoString) + _format?.__copy__()?.__copy__(), ..._args.__toArray__()));
    }
/**
    // error_ wraps the argument error and uses it as the argument to panic.
**/
function _error_(_err:stdgo.Error):Void {
        throw stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.T_gobError(_err) : stdgo.encoding.gob.Gob.T_gobError));
    }
/**
    // catchError is meant to be used as a deferred function to turn a panic(gobError) into a
    // plain error. It overwrites the error return of the function that deferred its call.
**/
function _catchError(_err:stdgo.StdGoTypes.Ref<stdgo.Error>):Void {
        {
            var _e:stdgo.StdGoTypes.AnyInterface = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_e != null) {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((_e : T_gobError)) : T_gobError), ok : true };
                } catch(_) {
                    { value : ({} : stdgo.encoding.gob.Gob.T_gobError), ok : false };
                }, _ge = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    throw stdgo.Go.toInterface(_e);
                };
                {
                    var __tmp__ = _ge._err;
                    _err.error = __tmp__.error;
                };
            };
        };
    }
function testGobEncoderField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest0((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ByteStruct((65 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>)) : stdgo.encoding.gob.Gob.GobTest0)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.g._a != ((65 : stdgo.StdGoTypes.GoUInt8))) {
            _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface(_x.g._a));
        };
        _b.reset();
        var _gobber:stdgo.encoding.gob.Gob.Gobber = ((23 : stdgo.encoding.gob.Gob.Gobber) : Gobber);
        var _bgobber:stdgo.encoding.gob.Gob.BinaryGobber = ((24 : stdgo.encoding.gob.Gob.BinaryGobber) : BinaryGobber);
        var _tgobber:stdgo.encoding.gob.Gob.TextGobber = ((25 : stdgo.encoding.gob.Gob.TextGobber) : TextGobber);
        _err = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest3((17 : stdgo.StdGoTypes.GoInt), stdgo.Go.pointer(_gobber), stdgo.Go.pointer(_bgobber), stdgo.Go.pointer(_tgobber)) : stdgo.encoding.gob.Gob.GobTest3)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest3)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest3>);
        _err = _dec.decode(stdgo.Go.toInterface(_y));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_y.g.value != (23 : stdgo.encoding.gob.Gob.Gobber)) || (_y.b.value != (24 : stdgo.encoding.gob.Gob.BinaryGobber))) || (_y.t.value != (25 : stdgo.encoding.gob.Gob.TextGobber))) {
            _t.errorf(("expected \'23 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.g.value)));
        };
    }
/**
    // Even though the field is a value, we can still take its address
    // and should be able to call the methods.
**/
function testGobEncoderValueField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.GobTestValueEncDec((17 : stdgo.StdGoTypes.GoInt), (new stdgo.encoding.gob.Gob.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.encoding.gob.Gob.GobTestValueEncDec)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestValueEncDec>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestValueEncDec)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestValueEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.g._s != (("HIJKL" : stdgo.GoString))) {
            _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface(_x.g._s));
        };
    }
/**
    // GobEncode/Decode should work even if the value is
    // more indirect than the receiver.
**/
function testGobEncoderIndirectField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _s = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>);
        var _sp = (stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>);
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTestIndirectEncDec((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef(_sp) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>>)) : stdgo.encoding.gob.Gob.GobTestIndirectEncDec)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestIndirectEncDec)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestIndirectEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((_x.g : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>) : stdgo.encoding.gob.Gob.StringStruct)._s != (("HIJKL" : stdgo.GoString))) {
            _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface((((_x.g : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>>) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>) : stdgo.encoding.gob.Gob.StringStruct)._s));
        };
    }
/**
    // Test with a large field with methods.
**/
function testGobEncoderArrayField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _a:GobTestArrayEncDec = ({} : stdgo.encoding.gob.Gob.GobTestArrayEncDec);
        _a.x = (17 : stdgo.StdGoTypes.GoInt);
        for (_i in 0 ... _a.a._a.length.toBasic()) {
            _a.a._a[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
        };
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestArrayEncDec>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestArrayEncDec)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestArrayEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_i => _v in _x.a._a) {
            if (_v != ((_i : stdgo.StdGoTypes.GoByte))) {
                _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.StdGoTypes.GoByte)), stdgo.Go.toInterface(_v));
                break;
            };
        };
    }
/**
    // Test an indirection to a large field with methods.
**/
function testGobEncoderIndirectArrayField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _a:GobTestIndirectArrayEncDec = ({} : stdgo.encoding.gob.Gob.GobTestIndirectArrayEncDec);
        _a.x = (17 : stdgo.StdGoTypes.GoInt);
        var _array:ArrayStruct = ({} : stdgo.encoding.gob.Gob.ArrayStruct);
        var _ap = (stdgo.Go.setRef(_array) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>);
        var _app = (stdgo.Go.setRef(_ap) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>);
        _a.a = (stdgo.Go.setRef(_app) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>>);
        for (_i in 0 ... _array._a.length.toBasic()) {
            _array._a[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
        };
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_a));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestIndirectArrayEncDec)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestIndirectArrayEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_i => _v in (((_x.a : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>>) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ArrayStruct>) : stdgo.encoding.gob.Gob.ArrayStruct)._a) {
            if (_v != ((_i : stdgo.StdGoTypes.GoByte))) {
                _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.StdGoTypes.GoByte)), stdgo.Go.toInterface(_v));
                break;
            };
        };
    }
/**
    // As long as the fields have the same name and implement the
    // interface, we can cross-connect them. Not sure it's useful
    // and may even be bad but it works and it's hard to prevent
    // without exposing the contents of the object, which would
    // defeat the purpose.
**/
function testGobEncoderFieldsOfDifferentType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest1((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.StringStruct(("ABC" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>)) : stdgo.encoding.gob.Gob.GobTest1)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.g._a != ((65 : stdgo.StdGoTypes.GoUInt8))) {
            _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface(_x.g._a));
        };
        _b.reset();
        _err = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest0((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ByteStruct((88 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>)) : stdgo.encoding.gob.Gob.GobTest0)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest1>);
        _err = _dec.decode(stdgo.Go.toInterface(_y));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_y.g._s != (("XYZ" : stdgo.GoString))) {
            _t.fatalf(("expected `XYZ` got %q" : stdgo.GoString), stdgo.Go.toInterface(_y.g._s));
        };
    }
/**
    // Test that we can encode a value and decode into a pointer.
**/
function testGobEncoderValueEncoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest4((17 : stdgo.StdGoTypes.GoInt), ((("hello" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber) : ValueGobber), ((("Καλημέρα" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber) : BinaryValueGobber), ((("こんにちは" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber) : TextValueGobber)) : stdgo.encoding.gob.Gob.GobTest4)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest5)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest5>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_x.v.value != (("hello" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber)) || (_x.bv.value != (("Καλημέρα" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber))) || (_x.tv.value != (("こんにちは" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber))) {
            _t.errorf(("expected `hello` got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.v.value)));
        };
    }
/**
    // Test that we can use a value then a pointer type of a GobEncoder
    // in the same encoded value. Bug 4647.
**/
function testGobEncoderValueThenPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:stdgo.encoding.gob.Gob.ValueGobber = ((("forty-two" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber) : ValueGobber);
        var _w:stdgo.encoding.gob.Gob.ValueGobber = ((("six-by-nine" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber) : ValueGobber);
        var _bv:stdgo.encoding.gob.Gob.BinaryValueGobber = ((("1nanocentury" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber) : BinaryValueGobber);
        var _bw:stdgo.encoding.gob.Gob.BinaryValueGobber = ((("πseconds" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber) : BinaryValueGobber);
        var _tv:stdgo.encoding.gob.Gob.TextValueGobber = ((("gravitationalacceleration" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber) : TextValueGobber);
        var _tw:stdgo.encoding.gob.Gob.TextValueGobber = ((("π²ft/s²" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber) : TextValueGobber);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest6((42 : stdgo.StdGoTypes.GoInt), _v, stdgo.Go.pointer(_w), _bv, stdgo.Go.pointer(_bw), _tv, stdgo.Go.pointer(_tw)) : stdgo.encoding.gob.Gob.GobTest6)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest6)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest6>);
        {
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(_x));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.ValueGobber = _x.v, __1:stdgo.encoding.gob.Gob.ValueGobber = _v, _want:stdgo.encoding.gob.Gob.ValueGobber = __1, _got:stdgo.encoding.gob.Gob.ValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("v = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.w, __1:stdgo.encoding.gob.Gob.ValueGobber = _w, _want:stdgo.encoding.gob.Gob.ValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("w = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("w = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.BinaryValueGobber = _x.bv, __1:stdgo.encoding.gob.Gob.BinaryValueGobber = _bv, _want:stdgo.encoding.gob.Gob.BinaryValueGobber = __1, _got:stdgo.encoding.gob.Gob.BinaryValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("bv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.bw, __1:stdgo.encoding.gob.Gob.BinaryValueGobber = _bw, _want:stdgo.encoding.gob.Gob.BinaryValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("bw = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("bw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.TextValueGobber = _x.tv, __1:stdgo.encoding.gob.Gob.TextValueGobber = _tv, _want:stdgo.encoding.gob.Gob.TextValueGobber = __1, _got:stdgo.encoding.gob.Gob.TextValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("tv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.tw, __1:stdgo.encoding.gob.Gob.TextValueGobber = _tw, _want:stdgo.encoding.gob.Gob.TextValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("tw = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("tw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
/**
    // Test that we can use a pointer then a value type of a GobEncoder
    // in the same encoded value.
**/
function testGobEncoderPointerThenValue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:stdgo.encoding.gob.Gob.ValueGobber = ((("forty-two" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber) : ValueGobber);
        var _w:stdgo.encoding.gob.Gob.ValueGobber = ((("six-by-nine" : stdgo.GoString) : stdgo.encoding.gob.Gob.ValueGobber) : ValueGobber);
        var _bv:stdgo.encoding.gob.Gob.BinaryValueGobber = ((("1nanocentury" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber) : BinaryValueGobber);
        var _bw:stdgo.encoding.gob.Gob.BinaryValueGobber = ((("πseconds" : stdgo.GoString) : stdgo.encoding.gob.Gob.BinaryValueGobber) : BinaryValueGobber);
        var _tv:stdgo.encoding.gob.Gob.TextValueGobber = ((("gravitationalacceleration" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber) : TextValueGobber);
        var _tw:stdgo.encoding.gob.Gob.TextValueGobber = ((("π²ft/s²" : stdgo.GoString) : stdgo.encoding.gob.Gob.TextValueGobber) : TextValueGobber);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest7((42 : stdgo.StdGoTypes.GoInt), stdgo.Go.pointer(_v), _w, stdgo.Go.pointer(_bv), _bw, stdgo.Go.pointer(_tv), _tw) : stdgo.encoding.gob.Gob.GobTest7)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest7)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest7>);
        {
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(_x));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = _x.v, __1:stdgo.encoding.gob.Gob.ValueGobber = _v, _want:stdgo.encoding.gob.Gob.ValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("v = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("v = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.ValueGobber = _x.w, __1:stdgo.encoding.gob.Gob.ValueGobber = _w, _want:stdgo.encoding.gob.Gob.ValueGobber = __1, _got:stdgo.encoding.gob.Gob.ValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("w = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.bv, __1:stdgo.encoding.gob.Gob.BinaryValueGobber = _bv, _want:stdgo.encoding.gob.Gob.BinaryValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("bv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("bv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.BinaryValueGobber = _x.bw, __1:stdgo.encoding.gob.Gob.BinaryValueGobber = _bw, _want:stdgo.encoding.gob.Gob.BinaryValueGobber = __1, _got:stdgo.encoding.gob.Gob.BinaryValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("bw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.tv, __1:stdgo.encoding.gob.Gob.TextValueGobber = _tv, _want:stdgo.encoding.gob.Gob.TextValueGobber = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("tv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("tv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0:stdgo.encoding.gob.Gob.TextValueGobber = _x.tw, __1:stdgo.encoding.gob.Gob.TextValueGobber = _tw, _want:stdgo.encoding.gob.Gob.TextValueGobber = __1, _got:stdgo.encoding.gob.Gob.TextValueGobber = __0;
            if (_got != (_want)) {
                _t.errorf(("tw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
function testGobEncoderFieldTypeError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest1((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.StringStruct(("ABC" : stdgo.GoString)) : stdgo.encoding.gob.Gob.StringStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.StringStruct>)) : stdgo.encoding.gob.Gob.GobTest1)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.GobTest2() : stdgo.encoding.gob.Gob.GobTest2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest2>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (encoder to non-decoder)" : stdgo.GoString)));
        };
        if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _err = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest2((17 : stdgo.StdGoTypes.GoInt), ("ABC" : stdgo.GoString)) : stdgo.encoding.gob.Gob.GobTest2)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.GobTest1() : stdgo.encoding.gob.Gob.GobTest1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest1>);
        _err = _dec.decode(stdgo.Go.toInterface(_y));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (non-encoder to decoder)" : stdgo.GoString)));
        };
        if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Even though ByteStruct is a struct, it's treated as a singleton at the top level.
**/
function testGobEncoderStructSingleton(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ByteStruct((65 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>))));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x._a != ((65 : stdgo.StdGoTypes.GoUInt8))) {
            _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface(_x._a));
        };
    }
function testGobEncoderNonStructSingleton(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _g:Gobber = (1234 : stdgo.encoding.gob.Gob.Gobber);
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(stdgo.Go.pointer(_g)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x:Gobber = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.gob.Gob.Gobber);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_x)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x != ((1234 : stdgo.encoding.gob.Gob.Gobber))) {
            _t.errorf(("expected 1234 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
function testGobEncoderIgnoreStructField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest0((17 : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.ByteStruct((65 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.ByteStruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.ByteStruct>)) : stdgo.encoding.gob.Gob.GobTest0)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestIgnoreEncoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestIgnoreEncoder>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.x != ((17 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("expected 17 got %c" : stdgo.GoString), stdgo.Go.toInterface(_x.x));
        };
    }
function testGobEncoderIgnoreNonStructField(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _gobber:stdgo.encoding.gob.Gob.Gobber = ((23 : stdgo.encoding.gob.Gob.Gobber) : Gobber);
        var _bgobber:stdgo.encoding.gob.Gob.BinaryGobber = ((24 : stdgo.encoding.gob.Gob.BinaryGobber) : BinaryGobber);
        var _tgobber:stdgo.encoding.gob.Gob.TextGobber = ((25 : stdgo.encoding.gob.Gob.TextGobber) : TextGobber);
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.GobTest3((17 : stdgo.StdGoTypes.GoInt), stdgo.Go.pointer(_gobber), stdgo.Go.pointer(_bgobber), stdgo.Go.pointer(_tgobber)) : stdgo.encoding.gob.Gob.GobTest3)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTestIgnoreEncoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTestIgnoreEncoder>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.x != ((17 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("expected 17 got %c" : stdgo.GoString), stdgo.Go.toInterface(_x.x));
        };
    }
function testGobEncoderIgnoreNilEncoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(({ x : (18 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.gob.Gob.GobTest0)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.GobTest0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.x != ((18 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("expected x.X = 18, got %v" : stdgo.GoString), stdgo.Go.toInterface(_x.x));
        };
        if (_x.g != null && ((_x.g : Dynamic).__nil__ == null || !(_x.g : Dynamic).__nil__)) {
            _t.errorf(("expected x.G = nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.g)));
        };
    }
/**
    // This was a bug: the receiver has a different indirection level
    // than the variable.
**/
function testGobEncoderExtraIndirect(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _gdb = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_gobDecoderBug0(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo.encoding.gob.Gob.T_gobDecoderBug0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobDecoderBug0>);
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _e = newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err:stdgo.Error = _e.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
            if (_err != null) {
                _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _d = newDecoder(stdgo.Go.asInterface(_buf));
        var _got:stdgo.StdGoTypes.Ref<T_gobDecoderBug0> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobDecoderBug0>);
        {
            var _err:stdgo.Error = _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobDecoderBug0>>)));
            if (_err != null) {
                _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if ((_got._foo != _gdb._foo) || (_got._bar != _gdb._bar)) {
            _t.errorf(("got = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
        };
    }
function testGobEncodeIsZero(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:stdgo.encoding.gob.Gob.T_isZeroBug = (new stdgo.encoding.gob.Gob.T_isZeroBug(stdgo.time.Time.unix((1000000000i64 : stdgo.StdGoTypes.GoInt64), (0i64 : stdgo.StdGoTypes.GoInt64))?.__copy__(), ("hello" : stdgo.GoString), (-55 : stdgo.StdGoTypes.GoInt), (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.encoding.gob.Gob.T_isZeroBugArray), (new stdgo.encoding.gob.Gob.T_isZeroBugInterface() : stdgo.encoding.gob.Gob.T_isZeroBugInterface)) : stdgo.encoding.gob.Gob.T_isZeroBug);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y:T_isZeroBug = ({} : stdgo.encoding.gob.Gob.T_isZeroBug);
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_isZeroBug>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (stdgo.Go.toInterface(_x) != stdgo.Go.toInterface(_y)) {
            _t.fatalf(("%v != %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
function testGobEncodePtrError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _enc = newEncoder(stdgo.Go.asInterface(_b));
        _err = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_err) : stdgo.StdGoTypes.Ref<stdgo.Error>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = newDecoder(stdgo.Go.asInterface(_b));
        var _err2:stdgo.Error = stdgo.fmt.Fmt.errorf(("foo" : stdgo.GoString));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_err2) : stdgo.StdGoTypes.Ref<stdgo.Error>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_err2 != null) {
            _t.fatalf(("expected nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(_err2));
        };
    }
function testNetIP(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _enc = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (7 : stdgo.StdGoTypes.GoUInt8), (10 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_enc))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.StdGoTypes.Ref<stdgo.net.Net.IP>))));
        if (_err != null) {
            _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_ip.string() : stdgo.GoString) != (("1.2.3.4" : stdgo.GoString))) {
            _t.errorf(("decoded to %v, want 1.2.3.4" : stdgo.GoString), stdgo.Go.toInterface((_ip.string() : stdgo.GoString)));
        };
    }
function testIgnoreDepthLimit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _oldNestingDepth:stdgo.StdGoTypes.GoInt = _maxIgnoreNestingDepth;
            _maxIgnoreNestingDepth = (100 : stdgo.StdGoTypes.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _maxIgnoreNestingDepth = _oldNestingDepth;
                };
                a();
            });
            var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
            var _enc = newEncoder(stdgo.Go.asInterface(_b));
            var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
            var _nested:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.arrayOf((1 : stdgo.StdGoTypes.GoInt), _typ);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                    _nested = stdgo.reflect.Reflect.arrayOf((1 : stdgo.StdGoTypes.GoInt), _nested);
                });
            };
            var _badStruct:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.structOf((new stdgo.Slice<stdgo.reflect.Reflect.StructField>(1, 1, ({ name : ("F" : stdgo.GoString), type : _nested } : stdgo.reflect.Reflect.StructField)) : stdgo.Slice<stdgo.reflect.Reflect.StructField>)))?.__copy__();
            _enc.encode(_badStruct.interface_());
            var _dec = newDecoder(stdgo.Go.asInterface(_b));
            var _output:T__struct_4 = ({ hello : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_4);
            var _expectedErr:stdgo.GoString = ("invalid nesting depth" : stdgo.GoString);
            {
                var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_output) : stdgo.StdGoTypes.Ref<T__struct_4>))));
                if ((_err == null) || (_err.error() != _expectedErr)) {
                    _t.errorf(("Decode didn\'t fail with depth limit of 100: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expectedErr), stdgo.Go.toInterface(_err));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _benchmarkEndToEnd(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _ctor:() -> stdgo.StdGoTypes.AnyInterface, _pipe:() -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : stdgo.Error; }):Void {
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var __tmp__ = _pipe(), _r:stdgo.io.Io.Reader = __tmp__._0, _w:stdgo.io.Io.Writer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(("can\'t get pipe:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _v:stdgo.StdGoTypes.AnyInterface = _ctor();
            var _enc = newEncoder(_w);
            var _dec = newDecoder(_r);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = _enc.encode(_v);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _dec.decode(_v);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkEndToEndPipe(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkEndToEnd(_b, function():stdgo.StdGoTypes.AnyInterface {
            return stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bench((7 : stdgo.StdGoTypes.GoInt), (3.2 : stdgo.StdGoTypes.GoFloat64), ("now is the time" : stdgo.GoString), stdgo.bytes.Bytes.repeat((("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (100 : stdgo.StdGoTypes.GoInt))) : stdgo.encoding.gob.Gob.Bench)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>));
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : stdgo.Error; } {
            var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader), _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer), _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo.os.Os.pipe();
                _r = stdgo.Go.asInterface(__tmp__._0);
                _w = stdgo.Go.asInterface(__tmp__._1);
                _err = __tmp__._2;
            };
            return { _0 : _r, _1 : _w, _2 : _err };
        });
    }
function benchmarkEndToEndByteBuffer(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkEndToEnd(_b, function():stdgo.StdGoTypes.AnyInterface {
            return stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bench((7 : stdgo.StdGoTypes.GoInt), (3.2 : stdgo.StdGoTypes.GoFloat64), ("now is the time" : stdgo.GoString), stdgo.bytes.Bytes.repeat((("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (100 : stdgo.StdGoTypes.GoInt))) : stdgo.encoding.gob.Gob.Bench)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>));
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : stdgo.Error; } {
            var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader), _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer), _err:stdgo.Error = (null : stdgo.Error);
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _2 : (null : stdgo.Error) };
        });
    }
function benchmarkEndToEndSliceByteBuffer(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkEndToEnd(_b, function():stdgo.StdGoTypes.AnyInterface {
            var _v = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bench((7 : stdgo.StdGoTypes.GoInt), (3.2 : stdgo.StdGoTypes.GoFloat64), ("now is the time" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.encoding.gob.Gob.Bench)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>);
            register(stdgo.Go.toInterface(_v));
            var _arr = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((100 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
            for (_i in 0 ... _arr.length.toBasic()) {
                _arr[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface(_v);
            };
            return stdgo.Go.toInterface((stdgo.Go.setRef(_arr) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>));
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : stdgo.Error; } {
            var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader), _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer), _err:stdgo.Error = (null : stdgo.Error);
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _2 : (null : stdgo.Error) };
        });
    }
function testCountEncodeMallocs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bench((7 : stdgo.StdGoTypes.GoInt), (3.2 : stdgo.StdGoTypes.GoFloat64), ("now is the time" : stdgo.GoString), (("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.encoding.gob.Gob.Bench)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>);
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : stdgo.StdGoTypes.GoInt), function():Void {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_bench));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        });
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.fatalf(("mallocs per encode of type Bench: %v; wanted 0\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testCountDecodeMallocs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.Bench((7 : stdgo.StdGoTypes.GoInt), (3.2 : stdgo.StdGoTypes.GoFloat64), ("now is the time" : stdgo.GoString), (("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.encoding.gob.Gob.Bench)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>);
        stdgo.testing.Testing.allocsPerRun((1000 : stdgo.StdGoTypes.GoInt), function():Void {
            var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_bench));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        });
        var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : stdgo.StdGoTypes.GoInt), function():Void {
            {
                var __tmp__ = (new stdgo.encoding.gob.Gob.Bench() : stdgo.encoding.gob.Gob.Bench);
                _bench.a = __tmp__.a;
                _bench.b = __tmp__.b;
                _bench.c = __tmp__.c;
                _bench.d = __tmp__.d;
            };
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_bench) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Bench>>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        });
        if (_allocs != (3 : stdgo.StdGoTypes.GoFloat64)) {
            _t.fatalf(("mallocs per decode of type Bench: %v; wanted 3\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function _benchmarkEncodeSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _a:stdgo.StdGoTypes.AnyInterface):Void {
        _b.resetTimer();
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            while (_pb.next()) {
                _buf.reset();
                var _err:stdgo.Error = _enc.encode(_a);
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
function benchmarkEncodeComplex128Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoComplex128>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = ((1.2f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 3.4f64));
        };
        _benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkEncodeFloat64Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoFloat64>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (12300 : stdgo.StdGoTypes.GoFloat64);
        };
        _benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkEncodeInt32Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (_i * (100 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt32);
        };
        _benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkEncodeStringSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.GoString>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = ("now is the time" : stdgo.GoString);
        };
        _benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkEncodeInterfaceSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface(("now is the time" : stdgo.GoString));
        };
        _benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function _benchmarkDecodeSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _a:stdgo.StdGoTypes.AnyInterface):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _enc.encode(_a);
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _ra:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_a)?.__copy__();
        var _rt:stdgo.reflect.Reflect.Type = _ra.type();
        _b.resetTimer();
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _rp:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_rt)?.__copy__();
            _rp.elem().set(stdgo.reflect.Reflect.makeSlice(_rt, _ra.len(), _ra.cap())?.__copy__());
            var _p:stdgo.StdGoTypes.AnyInterface = _rp.interface_();
            var _bbuf:stdgo.encoding.gob.Gob.T_benchmarkBuf = ({ _data : _buf.bytes() } : stdgo.encoding.gob.Gob.T_benchmarkBuf);
            while (_pb.next()) {
                _bbuf._reset();
                var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_benchmarkBuf>)));
                var _err:stdgo.Error = _dec.decode(_p);
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
function benchmarkDecodeComplex128Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoComplex128>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = ((1.2f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 3.4f64));
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeFloat64Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoFloat64>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (12300 : stdgo.StdGoTypes.GoFloat64);
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeInt32Slice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (1234 : stdgo.StdGoTypes.GoInt32);
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeStringSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.GoString>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = ("now is the time" : stdgo.GoString);
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeStringsSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (new stdgo.Slice<stdgo.GoString>(1, 1, ("now is the time" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeBytesSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (("now is the time" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeInterfaceSlice(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface(("now is the time" : stdgo.GoString));
        };
        _benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
function benchmarkDecodeMap(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _count:stdgo.StdGoTypes.GoInt = (1000 : stdgo.StdGoTypes.GoInt);
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _m[_i] = _i;
            });
        };
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_m));
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _bbuf:stdgo.encoding.gob.Gob.T_benchmarkBuf = ({ _data : _buf.bytes() } : stdgo.encoding.gob.Gob.T_benchmarkBuf);
        _b.resetTimer();
        _b.reportAllocs();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _rm:stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>);
                _bbuf._reset();
                var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_benchmarkBuf>)));
                var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rm) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>>)));
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
/**
    // validUserType returns, and saves, the information associated with user-provided type rt.
    // If the user type is not valid, err will be non-nil. To be used when the error handler
    // is not set up.
**/
function _validUserType(_rt:stdgo.reflect.Reflect.Type):{ var _0 : stdgo.StdGoTypes.Ref<T_userTypeInfo>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = _userTypeCache.load(stdgo.Go.toInterface(_rt)), _ui:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.StdGoTypes.Ref<T_userTypeInfo>)) : stdgo.StdGoTypes.Ref<T_userTypeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _ut = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_userTypeInfo)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_userTypeInfo>);
        _ut._base = _rt;
        _ut._user = _rt;
        var _slowpoke:stdgo.reflect.Reflect.Type = _ut._base;
        while (true) {
            var _pt:stdgo.reflect.Reflect.Type = _ut._base;
            if (_pt.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
                break;
            };
            _ut._base = _pt.elem();
            if ((_ut._base.string() : String) == (_slowpoke.string() : String)) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(("can\'t represent recursive pointer type " : stdgo.GoString) + (_ut._base.string() : stdgo.GoString)?.__copy__()?.__copy__()) };
            };
            if (_ut._indir % (2 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            _ut._indir++;
        };
        {
            var __tmp__ = _implementsInterface(_ut._user, _gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.StdGoTypes.GoInt);
                    final __tmp__1 = _indir;
                    _ut._externalEnc = __tmp__0;
                    _ut._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut._user, _binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.StdGoTypes.GoInt);
                        final __tmp__1 = _indir;
                        _ut._externalEnc = __tmp__0;
                        _ut._encIndir = __tmp__1;
                    };
                };
            };
        };
        {
            var __tmp__ = _implementsInterface(_ut._user, _gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.StdGoTypes.GoInt);
                    final __tmp__1 = _indir;
                    _ut._externalDec = __tmp__0;
                    _ut._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut._user, _binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.StdGoTypes.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.StdGoTypes.GoInt);
                        final __tmp__1 = _indir;
                        _ut._externalDec = __tmp__0;
                        _ut._decIndir = __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = _userTypeCache.loadOrStore(stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(_ut)), _ui:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __0:Bool = __tmp__._1;
        return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.StdGoTypes.Ref<T_userTypeInfo>)) : stdgo.StdGoTypes.Ref<T_userTypeInfo>), _1 : (null : stdgo.Error) };
    }
/**
    // implementsInterface reports whether the type implements the
    // gobEncoder/gobDecoder interface.
    // It also returns the number of indirections required to get to the
    // implementation.
**/
function _implementsInterface(_typ:stdgo.reflect.Reflect.Type, _gobEncDecType:stdgo.reflect.Reflect.Type):{ var _0 : Bool; var _1 : stdgo.StdGoTypes.GoInt8; } {
        var _success:Bool = false, _indir:stdgo.StdGoTypes.GoInt8 = (0 : stdgo.StdGoTypes.GoInt8);
        if ((_typ.string() : String) == (null.string() : String)) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt:stdgo.reflect.Reflect.Type = _typ;
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return { _0 : true, _1 : _indir };
            };
            {
                var _p:stdgo.reflect.Reflect.Type = _rt;
                if (_p.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                    _indir++;
                    if (_indir > (100 : stdgo.StdGoTypes.GoInt8)) {
                        return { _0 : false, _1 : (0 : stdgo.StdGoTypes.GoInt8) };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            if (stdgo.reflect.Reflect.pointerTo(_typ).implements_(_gobEncDecType)) {
                return { _0 : true, _1 : (-1 : stdgo.StdGoTypes.GoInt8) };
            };
        };
        return { _0 : false, _1 : (0 : stdgo.StdGoTypes.GoInt8) };
    }
/**
    // userType returns, and saves, the information associated with user-provided type rt.
    // If the user type is not valid, it calls error.
**/
function _userType(_rt:stdgo.reflect.Reflect.Type):stdgo.StdGoTypes.Ref<T_userTypeInfo> {
        var __tmp__ = _validUserType(_rt), _ut:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        return _ut;
    }
function _idToType(_id:T_typeId):T_gobType {
        if ((_id < (0 : stdgo.encoding.gob.Gob.T_typeId)) || ((_id : stdgo.StdGoTypes.GoInt) >= _idToTypeSlice.length)) {
            return (null : stdgo.encoding.gob.Gob.T_gobType);
        };
        return _idToTypeSlice[(_id : stdgo.StdGoTypes.GoInt)];
    }
function _builtinIdToType(_id:T_typeId):T_gobType {
        if ((_id < (0 : stdgo.encoding.gob.Gob.T_typeId)) || ((_id : stdgo.StdGoTypes.GoInt) >= _builtinIdToTypeSlice.length)) {
            return (null : stdgo.encoding.gob.Gob.T_gobType);
        };
        return _builtinIdToTypeSlice[(_id : stdgo.StdGoTypes.GoInt)];
    }
function _setTypeId(_typ:T_gobType):Void {
        if (_typ._id() != ((0 : stdgo.encoding.gob.Gob.T_typeId))) {
            return;
        };
        var _nextId:stdgo.encoding.gob.Gob.T_typeId = (_idToTypeSlice.length : T_typeId);
        _typ._setId(_nextId);
        _idToTypeSlice = (_idToTypeSlice.__append__(_typ));
    }
function _newArrayType(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<T_arrayType> {
        var _a = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_arrayType(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType), (0 : stdgo.encoding.gob.Gob.T_typeId), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob.Gob.T_arrayType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_arrayType>);
        return _a;
    }
function _newGobEncoderType(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<T_gobEncoderType> {
        var _g = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_gobEncoderType(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType)) : stdgo.encoding.gob.Gob.T_gobEncoderType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_gobEncoderType>);
        _setTypeId(stdgo.Go.asInterface(_g));
        return _g;
    }
function _newMapType(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<T_mapType> {
        var _m = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_mapType(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType), (0 : stdgo.encoding.gob.Gob.T_typeId), (0 : stdgo.encoding.gob.Gob.T_typeId)) : stdgo.encoding.gob.Gob.T_mapType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_mapType>);
        return _m;
    }
function _newSliceType(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<T_sliceType> {
        var _s = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_sliceType(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType), (0 : stdgo.encoding.gob.Gob.T_typeId)) : stdgo.encoding.gob.Gob.T_sliceType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>);
        return _s;
    }
function _newStructType(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<T_structType> {
        var _s = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_structType(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType), (null : stdgo.Slice<stdgo.encoding.gob.Gob.T_fieldType>)) : stdgo.encoding.gob.Gob.T_structType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>);
        _setTypeId(stdgo.Go.asInterface(_s));
        return _s;
    }
/**
    // newTypeObject allocates a gobType for the reflection type rt.
    // Unless ut represents a GobEncoder, rt should be the base type
    // of ut.
    // This is only called from the encoding side. The decoding side
    // works through typeIds and userTypeInfos alone.
**/
function _newTypeObject(_name:stdgo.GoString, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : stdgo.Go.asInterface(_newGobEncoderType(_name?.__copy__())), _1 : (null : stdgo.Error) };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            var __0:T_gobType = (null : stdgo.encoding.gob.Gob.T_gobType), __1:T_gobType = (null : stdgo.encoding.gob.Gob.T_gobType), _type1:T_gobType = __1, _type0:T_gobType = __0;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_err != null) {
                        if (_types != null) _types.remove(_rt);
                    };
                };
                a();
            });
            {
                var _t:stdgo.reflect.Reflect.Type = _rt;
                {
                    final __value__ = _t.kind();
                    if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tBool._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tInt._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tUint._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tFloat._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tComplex._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tString._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tInterface._gobType(), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                        var _at = _newArrayType(_name?.__copy__());
                        _types[_rt] = stdgo.Go.asInterface(_at);
                        {
                            var __tmp__ = _getBaseType(stdgo.Go.str()?.__copy__(), _t.elem());
                            _type0 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : _err };
                            };
                        };
                        _at._init(_type0, _t.len());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : stdgo.Go.asInterface(_at), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                        var _mt = _newMapType(_name?.__copy__());
                        _types[_rt] = stdgo.Go.asInterface(_mt);
                        {
                            var __tmp__ = _getBaseType(stdgo.Go.str()?.__copy__(), _t.key());
                            _type0 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : _err };
                            };
                        };
                        {
                            var __tmp__ = _getBaseType(stdgo.Go.str()?.__copy__(), _t.elem());
                            _type1 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : _err };
                            };
                        };
                        _mt._init(_type0, _type1);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : stdgo.Go.asInterface(_mt), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                        if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : _tBytes._gobType(), _1 : (null : stdgo.Error) };
                            };
                        };
                        var _st = _newSliceType(_name?.__copy__());
                        _types[_rt] = stdgo.Go.asInterface(_st);
                        {
                            var __tmp__ = _getBaseType(_t.elem().name()?.__copy__(), _t.elem());
                            _type0 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : _err };
                            };
                        };
                        _st._init(_type0);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : stdgo.Go.asInterface(_st), _1 : (null : stdgo.Error) };
                        };
                    } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                        var _st = _newStructType(_name?.__copy__());
                        _types[_rt] = stdgo.Go.asInterface(_st);
                        _idToTypeSlice[(_st._id() : stdgo.StdGoTypes.GoInt)] = stdgo.Go.asInterface(_st);
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < _t.numField(), _i++, {
                                var _f:stdgo.reflect.Reflect.StructField = _t.field(_i)?.__copy__();
                                if (!_isSent((stdgo.Go.setRef(_f) : stdgo.StdGoTypes.Ref<stdgo.reflect.Reflect.StructField>))) {
                                    continue;
                                };
                                var _typ:stdgo.reflect.Reflect.Type = _userType(_f.type)._base;
                                var _tname:stdgo.GoString = _typ.name()?.__copy__();
                                if (_tname == (stdgo.Go.str())) {
                                    var _t:stdgo.reflect.Reflect.Type = _userType(_f.type)._base;
                                    _tname = (_t.string() : stdgo.GoString)?.__copy__();
                                };
                                var __tmp__ = _getBaseType(_tname?.__copy__(), _f.type), _gt:stdgo.encoding.gob.Gob.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : _err };
                                    };
                                };
                                if (_gt._id() == ((0 : stdgo.encoding.gob.Gob.T_typeId))) {
                                    _setTypeId(_gt);
                                };
                                _st.field = (_st.field.__append__((new stdgo.encoding.gob.Gob.T_fieldType(_f.name?.__copy__(), _gt._id()) : stdgo.encoding.gob.Gob.T_fieldType)));
                            });
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : stdgo.Go.asInterface(_st), _1 : (null : stdgo.Error) };
                        };
                    } else {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : stdgo.errors.Errors.new_(("gob NewTypeObject can\'t handle type: " : stdgo.GoString) + (_rt.string() : stdgo.GoString)?.__copy__()?.__copy__()) };
                        };
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.encoding.gob.Gob.T_gobType), _1 : (null : stdgo.Error) };
        };
    }
/**
    // isExported reports whether this is an exported - upper case - name.
**/
function _isExported(_name:stdgo.GoString):Bool {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name?.__copy__()), _rune:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isUpper(_rune);
    }
/**
    // isSent reports whether this struct field is to be transmitted.
    // It will be transmitted only if it is exported and not a chan or func field
    // or pointer to chan or func.
**/
function _isSent(_field:stdgo.StdGoTypes.Ref<stdgo.reflect.Reflect.StructField>):Bool {
        if (!_isExported(_field.name?.__copy__())) {
            return false;
        };
        var _typ:stdgo.reflect.Reflect.Type = _field.type;
        while (_typ.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
            _typ = _typ.elem();
        };
        if ((_typ.kind() == (18u32 : stdgo.reflect.Reflect.Kind)) || (_typ.kind() == (19u32 : stdgo.reflect.Reflect.Kind))) {
            return false;
        };
        return true;
    }
/**
    // getBaseType returns the Gob type describing the given reflect.Type's base type.
    // typeLock must be held.
**/
function _getBaseType(_name:stdgo.GoString, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : stdgo.Error; } {
        var _ut = _userType(_rt);
        return _getType(_name?.__copy__(), _ut, _ut._base);
    }
/**
    // getType returns the Gob type describing the given reflect.Type.
    // Should be called only when handling GobEncoders/Decoders,
    // which may be pointers. All other types are handled through the
    // base type, never a pointer.
    // typeLock must be held.
**/
function _getType(_name:stdgo.GoString, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : stdgo.Error; } {
        var __tmp__ = (_types != null && _types.exists(_rt) ? { value : _types[_rt], ok : true } : { value : (null : stdgo.encoding.gob.Gob.T_gobType), ok : false }), _typ:stdgo.encoding.gob.Gob.T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            return { _0 : _typ, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _newTypeObject(_name?.__copy__(), _ut, _rt), _typ:stdgo.encoding.gob.Gob.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _types[_rt] = _typ;
        };
        return { _0 : _typ, _1 : _err };
    }
function _checkId(_want:T_typeId, _got:T_typeId):Void {
        if (_want != (_got)) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stderr), ("checkId: %d should be %d\n" : stdgo.GoString), stdgo.Go.toInterface((_got : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((_want : stdgo.StdGoTypes.GoInt)));
            throw stdgo.Go.toInterface(("bootstrap type wrong id: " : stdgo.GoString) + _got._name()?.__copy__() + (" " : stdgo.GoString)?.__copy__() + _got._string()?.__copy__() + (" not " : stdgo.GoString)?.__copy__() + _want._string()?.__copy__());
        };
    }
/**
    // used for building the basic types; called only from init().  the incoming
    // interface always refers to a pointer.
**/
function _bootstrapType(_name:stdgo.GoString, _e:stdgo.StdGoTypes.AnyInterface):T_typeId {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(_e).elem();
        var __tmp__ = (_types != null && _types.exists(_rt) ? { value : _types[_rt], ok : true } : { value : (null : stdgo.encoding.gob.Gob.T_gobType), ok : false }), __0:stdgo.encoding.gob.Gob.T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            throw stdgo.Go.toInterface(("bootstrap type already present: " : stdgo.GoString) + _name?.__copy__() + (", " : stdgo.GoString)?.__copy__() + (_rt.string() : stdgo.GoString)?.__copy__());
        };
        var _typ = (stdgo.Go.setRef(({ name : _name?.__copy__() } : stdgo.encoding.gob.Gob.CommonType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.CommonType>);
        _types[_rt] = stdgo.Go.asInterface(_typ);
        _setTypeId(stdgo.Go.asInterface(_typ));
        return _typ._id();
    }
function _lookupTypeInfo(_rt:stdgo.reflect.Reflect.Type):stdgo.StdGoTypes.Ref<T_typeInfo> {
        {
            var _m = _typeInfoMapInit;
            if (_m != null) {
                return (_m[_rt] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>));
            };
        };
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((_typeInfoMap.load() : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_typeInfo>>)) : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_typeInfo>>), ok : true };
        } catch(_) {
            { value : (null : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>), ok : false };
        }, _m = __tmp__.value, __0 = __tmp__.ok;
        return (_m[_rt] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>));
    }
function _getTypeInfo(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_typeInfo>; var _1 : stdgo.Error; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            _rt = _ut._user;
        };
        {
            var _info = _lookupTypeInfo(_rt);
            if (_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__)) {
                return { _0 : _info, _1 : (null : stdgo.Error) };
            };
        };
        return _buildTypeInfo(_ut, _rt);
    }
/**
    // buildTypeInfo constructs the type information for the type
    // and stores it in the type info map.
**/
function _buildTypeInfo(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : stdgo.StdGoTypes.Ref<T_typeInfo>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        __deferstack__.unshift(() -> _typeLock.unlock());
        try {
            {
                var _info = _lookupTypeInfo(_rt);
                if (_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _info, _1 : (null : stdgo.Error) };
                    };
                };
            };
            var __tmp__ = _getBaseType(_rt.name()?.__copy__(), _rt), _gt:stdgo.encoding.gob.Gob.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : null, _1 : _err };
                };
            };
            var _info = (stdgo.Go.setRef(({ _id : _gt._id() } : stdgo.encoding.gob.Gob.T_typeInfo)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>);
            if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
                var __tmp__ = _getType(_rt.name()?.__copy__(), _ut, _rt), _userType:stdgo.encoding.gob.Gob.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : _err };
                    };
                };
                var _gt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_userType._id()._gobType()) : stdgo.StdGoTypes.Ref<T_gobEncoderType>)) : stdgo.StdGoTypes.Ref<T_gobEncoderType>);
                {
                    final __value__ = _ut._externalEnc;
                    if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                        _info._wire.gobEncoderT = _gt;
                    } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                        _info._wire.binaryMarshalerT = _gt;
                    } else if (__value__ == ((3 : stdgo.StdGoTypes.GoInt))) {
                        _info._wire.textMarshalerT = _gt;
                    };
                };
                _rt = _ut._user;
            } else {
                var _t:stdgo.encoding.gob.Gob.T_gobType = _info._id._gobType();
                {
                    var _typ:stdgo.reflect.Reflect.Type = _rt;
                    {
                        final __value__ = _typ.kind();
                        if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                            _info._wire.arrayT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.StdGoTypes.Ref<T_arrayType>)) : stdgo.StdGoTypes.Ref<T_arrayType>);
                        } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                            _info._wire.mapT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.StdGoTypes.Ref<T_mapType>)) : stdgo.StdGoTypes.Ref<T_mapType>);
                        } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                            if (_typ.elem().kind() != ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                _info._wire.sliceT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.StdGoTypes.Ref<T_sliceType>)) : stdgo.StdGoTypes.Ref<T_sliceType>);
                            };
                        } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                            _info._wire.structT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.StdGoTypes.Ref<T_structType>)) : stdgo.StdGoTypes.Ref<T_structType>);
                        };
                    };
                };
            };
            {
                var _m = _typeInfoMapInit;
                if (_m != null) {
                    _m[_rt] = _info;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _info, _1 : (null : stdgo.Error) };
                    };
                };
            };
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_typeInfoMap.load() : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_typeInfo>>)) : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_typeInfo>>), ok : true };
            } catch(_) {
                { value : (null : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>), ok : false };
            }, _m = __tmp__.value, __32 = __tmp__.ok;
            var _newm = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>);
            for (_k => _v in _m) {
                _newm[_k] = _v;
            };
            _newm[_rt] = _info;
            _typeInfoMap.store(stdgo.Go.toInterface(_newm));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _info, _1 : (null : stdgo.Error) };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>), _1 : (null : stdgo.Error) };
        };
    }
/**
    // Called only when a panic is acceptable and unexpected.
**/
function _mustGetTypeInfo(_rt:stdgo.reflect.Reflect.Type):stdgo.StdGoTypes.Ref<T_typeInfo> {
        var __tmp__ = _getTypeInfo(_userType(_rt)), _t:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("getTypeInfo: " : stdgo.GoString) + _err.error()?.__copy__());
        };
        return _t;
    }
/**
    // RegisterName is like Register but uses the provided name rather than the
    // type's default.
**/
function registerName(_name:stdgo.GoString, _value:stdgo.StdGoTypes.AnyInterface):Void {
        if (_name == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("attempt to register empty name" : stdgo.GoString));
        };
        var _ut = _userType(stdgo.reflect.Reflect.typeOf(_value));
        {
            var __tmp__ = _nameToConcreteType.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.reflect.Reflect.typeOf(_value))), _t:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && (_t != stdgo.Go.toInterface(_ut._user))) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("gob: registering duplicate types for %q: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _t, stdgo.Go.toInterface(_ut._user)));
            };
        };
        {
            var __tmp__ = _concreteTypeToName.loadOrStore(stdgo.Go.toInterface(_ut._base), stdgo.Go.toInterface(_name)), _n:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && (_n != stdgo.Go.toInterface(_name))) {
                _nameToConcreteType.delete(stdgo.Go.toInterface(_name));
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("gob: registering duplicate names for %s: %q != %q" : stdgo.GoString), stdgo.Go.toInterface(_ut._user), _n, stdgo.Go.toInterface(_name)));
            };
        };
    }
/**
    // Register records a type, identified by a value for that type, under its
    // internal type name. That name will identify the concrete type of a value
    // sent or received as an interface variable. Only types that will be
    // transferred as implementations of interface values need to be registered.
    // Expecting to be used only during initialization, it panics if the mapping
    // between types and names is not a bijection.
**/
function register(_value:stdgo.StdGoTypes.AnyInterface):Void {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(_value);
        var _name:stdgo.GoString = (_rt.string() : stdgo.GoString)?.__copy__();
        var _star:stdgo.GoString = stdgo.Go.str()?.__copy__();
        if (_rt.name() == (stdgo.Go.str())) {
            {
                var _pt:stdgo.reflect.Reflect.Type = _rt;
                if (_pt.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                    _star = ("*" : stdgo.GoString);
                    _rt = _pt;
                };
            };
        };
        if (_rt.name() != (stdgo.Go.str())) {
            if (_rt.pkgPath() == (stdgo.Go.str())) {
                _name = _star + _rt.name()?.__copy__()?.__copy__();
            } else {
                _name = _star + _rt.pkgPath()?.__copy__() + ("." : stdgo.GoString)?.__copy__() + _rt.name()?.__copy__()?.__copy__();
            };
        };
        registerName(_name?.__copy__(), _value);
    }
function _registerBasics():Void {
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt8)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt16)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt32)));
        register(stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoInt64)));
        register(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt8)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt16)));
        register(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt32)));
        register(stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoUInt64)));
        register(stdgo.Go.toInterface(((0 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoFloat64)));
        register(stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64) : stdgo.StdGoTypes.GoComplex64)));
        register(stdgo.Go.toInterface(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64) : stdgo.StdGoTypes.GoComplex128)));
        register(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUIntptr)));
        register(stdgo.Go.toInterface(false));
        register(stdgo.Go.toInterface(stdgo.Go.str()));
        register(stdgo.Go.toInterface(((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoComplex64>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoComplex128>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoUIntptr>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<Bool>)));
        register(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoString>)));
    }
function _getTypeUnlocked(_name:stdgo.GoString, _rt:stdgo.reflect.Reflect.Type):T_gobType {
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        try {
            __deferstack__.unshift(() -> _typeLock.unlock());
            var __tmp__ = _getBaseType(_name?.__copy__(), _rt), _t:stdgo.encoding.gob.Gob.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(("getTypeUnlocked: " : stdgo.GoString) + _err.error()?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _t;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.encoding.gob.Gob.T_gobType);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.encoding.gob.Gob.T_gobType);
        };
    }
/**
    // Sanity checks
**/
function testBasic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _basicTypes) {
            if (_tt._id._string() != (_tt._str)) {
                _t.errorf(("checkType: expected %q got %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._str), stdgo.Go.toInterface(_tt._id._string()));
            };
            if (_tt._id == ((0 : stdgo.encoding.gob.Gob.T_typeId))) {
                _t.errorf(("id for %q is zero" : stdgo.GoString), stdgo.Go.toInterface(_tt._str));
            };
        };
    }
/**
    // Reregister some basic types to check registration is idempotent.
**/
function testReregistration(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _newtyp:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("int" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(_tInt._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = _getTypeUnlocked(("uint" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(_tUint._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = _getTypeUnlocked(("string" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(_tString._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
    }
function testArrayType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _a3:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)]);
        var _a3int:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("foo" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_a3)));
        var _newa3int:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("bar" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_a3)));
        if (stdgo.Go.toInterface(_a3int) != (stdgo.Go.toInterface(_newa3int))) {
            _t.errorf(("second registration of [3]int creates new type" : stdgo.GoString));
        };
        var _a4:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoInt)]);
        var _a4int:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("goo" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_a4)));
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a4int))) {
            _t.errorf(("registration of [3]int creates same type as [4]int" : stdgo.GoString));
        };
        var _b3:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(...[for (i in 0 ... 3) false]);
        var _a3bool:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_b3)));
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a3bool))) {
            _t.errorf(("registration of [3]bool creates same type as [3]int" : stdgo.GoString));
        };
        var _str:stdgo.GoString = _a3bool._string()?.__copy__();
        var _expected:stdgo.GoString = ("[3]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            _t.errorf(("array printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
function testSliceType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _s:stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _sint:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("slice" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_s)));
        var _news:stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _newsint:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("slice1" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_news)));
        if (stdgo.Go.toInterface(_sint) != (stdgo.Go.toInterface(_newsint))) {
            _t.errorf(("second registration of []int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
        var _sbool:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_b)));
        if (stdgo.Go.toInterface(_sbool) == (stdgo.Go.toInterface(_sint))) {
            _t.errorf(("registration of []bool creates same type as []int" : stdgo.GoString));
        };
        var _str:stdgo.GoString = _sbool._string()?.__copy__();
        var _expected:stdgo.GoString = ("[]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            _t.errorf(("slice printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
function testMapType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        var _mapStringInt:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("map" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_m)));
        var _newm:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        var _newMapStringInt:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("map1" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_newm)));
        if (stdgo.Go.toInterface(_mapStringInt) != (stdgo.Go.toInterface(_newMapStringInt))) {
            _t.errorf(("second registration of map[string]int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _mapStringBool:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_b)));
        if (stdgo.Go.toInterface(_mapStringBool) == (stdgo.Go.toInterface(_mapStringInt))) {
            _t.errorf(("registration of map[string]bool creates same type as map[string]int" : stdgo.GoString));
        };
        var _str:stdgo.GoString = _mapStringBool._string()?.__copy__();
        var _expected:stdgo.GoString = ("map[string]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            _t.errorf(("map printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
function testStructType(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _sstruct:stdgo.encoding.gob.Gob.T_gobType = _getTypeUnlocked(("Foo" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.Foo() : stdgo.encoding.gob.Gob.Foo))));
        var _str:stdgo.GoString = _sstruct._string()?.__copy__();
        var _expected:stdgo.GoString = ("Foo = struct { A int; B int; C string; D bytes; E float; F float; G Bar = struct { X string; }; H Bar; I Foo; }" : stdgo.GoString);
        if (_str != (_expected)) {
            _t.errorf(("struct printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
/**
    
    
    
**/
@:structInit class T_testRegistration_79___localname___T {
    public var _a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_a:stdgo.StdGoTypes.GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRegistration_79___localname___T(_a);
    }
}
/**
    // Should be OK to register the same type multiple times, as long as they're
    // at the same level of indirection.
**/
function testRegistration(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testRegistration_79___localname___T)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testRegistration_79___localname___T>)));
        register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testRegistration_79___localname___T)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testRegistration_79___localname___T>)));
    }
/**
    // See comment in type.go/Register.
**/
function testRegistrationNaming(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new stdgo.Slice<T__struct_12>(2, 2, ({ _t : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.N1() : stdgo.encoding.gob.Gob.N1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.N1>)), _name : ("*gob.N1" : stdgo.GoString) } : T__struct_12), ({ _t : stdgo.Go.toInterface((new stdgo.encoding.gob.Gob.N2() : stdgo.encoding.gob.Gob.N2)), _name : ("encoding/gob.N2" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
        for (__0 => _tc in _testCases) {
            register(_tc._t);
            var _tct:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(_tc._t);
            var __tmp__ = _nameToConcreteType.load(stdgo.Go.toInterface(_tc._name)), _ct:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __1:Bool = __tmp__._1;
            if (_ct != (stdgo.Go.toInterface(_tct))) {
                _t.errorf(("nameToConcreteType[%q] = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), _ct, stdgo.Go.toInterface(_tct));
            };
            if (_tct.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _tct = _tct.elem();
            };
            {
                var __tmp__ = _concreteTypeToName.load(stdgo.Go.toInterface(_tct)), _n:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __2:Bool = __tmp__._1;
                if (_n != (stdgo.Go.toInterface(_tc._name))) {
                    _t.errorf(("concreteTypeToName[%v] got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tct), _n, stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testStressParallel_80___localname___T2 {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStressParallel_80___localname___T2(a);
    }
}
function testStressParallel(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _c = new stdgo.Chan<Bool>(0, () -> false);
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _p = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_testStressParallel_80___localname___T2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_testStressParallel_80___localname___T2>);
                        register(stdgo.Go.toInterface(_p));
                        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
                        var _enc = newEncoder(stdgo.Go.asInterface(_b));
                        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_p));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        var _dec = newDecoder(stdgo.Go.asInterface(_b));
                        _err = _dec.decode(stdgo.Go.toInterface(_p));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _c.__get__();
            });
        };
    }
/**
    // Issue 23328. Note that this test name is known to cmd/dist/test.go.
**/
function testTypeRace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _c = new stdgo.Chan<Bool>(0, () -> false);
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.StdGoTypes.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
                            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
                            var _x:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
                            {
                                final __value__ = _i;
                                if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                                    _x = stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.N1() : stdgo.encoding.gob.Gob.N1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.N1>));
                                } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                                    _x = stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.gob.Gob.N2() : stdgo.encoding.gob.Gob.N2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.N2>));
                                } else {
                                    _t.errorf(("bad i %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            var _m = ({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                @:mergeBlock {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                            _c.__get__();
                            {
                                var _err:stdgo.Error = _enc.encode(_x);
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            {
                                var _err:stdgo.Error = _enc.encode(_x);
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            {
                                var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>)));
                                if (_err == null) {
                                    _t.error(stdgo.Go.toInterface(("decode unexpectedly succeeded" : stdgo.GoString)));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        if (_c != null) _c.__close__();
        _wg.wait_();
    }
@:keep var _ = {
        try {
            var __0:T_decOp = (null : stdgo.encoding.gob.Gob.T_decOp), __1:T_decOp = (null : stdgo.encoding.gob.Gob.T_decOp), _uop:T_decOp = __1, _iop:T_decOp = __0;
            {
                final __value__ = (32 : stdgo.StdGoTypes.GoInt);
                if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                    _iop = _decInt32;
                    _uop = _decUint32;
                } else if (__value__ == ((64 : stdgo.StdGoTypes.GoInt))) {
                    _iop = _decInt64;
                    _uop = _decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of int/uint" : stdgo.GoString));
                };
            };
            _decOpTable[((2u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)] = _iop;
            _decOpTable[((7u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)] = _uop;
            {
                final __value__ = (32 : stdgo.StdGoTypes.GoInt);
                if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                    _uop = _decUint32;
                } else if (__value__ == ((64 : stdgo.StdGoTypes.GoInt))) {
                    _uop = _decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of uintptr" : stdgo.GoString));
                };
            };
            _decOpTable[((12u32 : stdgo.reflect.Reflect.Kind) : stdgo.StdGoTypes.GoInt)] = _uop;
            _checkId((16 : stdgo.encoding.gob.Gob.T_typeId), _tWireType);
            _checkId((17 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_arrayType>) : stdgo.StdGoTypes.Ref<T_arrayType>)))).elem())._id);
            _checkId((18 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.CommonType>) : stdgo.StdGoTypes.Ref<CommonType>)))).elem())._id);
            _checkId((19 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>) : stdgo.StdGoTypes.Ref<T_sliceType>)))).elem())._id);
            _checkId((20 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>) : stdgo.StdGoTypes.Ref<T_structType>)))).elem())._id);
            _checkId((21 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_fieldType>) : stdgo.StdGoTypes.Ref<T_fieldType>))).elem())._id);
            _checkId((23 : stdgo.encoding.gob.Gob.T_typeId), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_mapType>) : stdgo.StdGoTypes.Ref<T_mapType>)))).elem())._id);
            stdgo.Go.copySlice((_builtinIdToTypeSlice.__slice__(0) : stdgo.Slice<stdgo.encoding.gob.Gob.T_gobType>), _idToTypeSlice);
            {
                var _nextId:stdgo.StdGoTypes.GoInt = (_idToTypeSlice.length);
                if (_nextId > (64 : stdgo.StdGoTypes.GoInt)) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintln(stdgo.Go.toInterface(("nextId too large:" : stdgo.GoString)), stdgo.Go.toInterface(_nextId)));
                };
            };
            _idToTypeSlice = (_idToTypeSlice.__slice__(0, (64 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.encoding.gob.Gob.T_gobType>);
            _registerBasics();
            _wireTypeUserInfo = _userType(_wireTypeType);
            _typeInfoMap.store(stdgo.Go.toInterface(_typeInfoMapInit));
            _typeInfoMapInit = (null : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>>);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Point_asInterface {
    @:keep
    public dynamic function square():stdgo.StdGoTypes.GoInt return __self__.value.square();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Point>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Point_asInterface) class Point_static_extension {
    @:keep
    static public function square( _p:Point):stdgo.StdGoTypes.GoInt {
        @:recv var _p:Point = _p?.__copy__();
        return (_p.x * _p.x) + (_p.y * _p.y);
    }
}
class T_decoderState_asInterface {
    /**
        // getLength decodes the next uint and makes sure it is a possible
        // size for a data item that follows, which means it must fit in a
        // non-negative int and fit in the buffer.
    **/
    @:keep
    public dynamic function _getLength():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__.value._getLength();
    /**
        // decodeInt reads an encoded signed integer from state.r.
        // Does not check for overflow.
    **/
    @:keep
    public dynamic function _decodeInt():stdgo.StdGoTypes.GoInt64 return __self__.value._decodeInt();
    /**
        // decodeUint reads an encoded unsigned integer from state.r.
        // Does not check for overflow.
    **/
    @:keep
    public dynamic function _decodeUint():stdgo.StdGoTypes.GoUInt64 return __self__.value._decodeUint();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoderState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_decoderState_asInterface) class T_decoderState_static_extension {
    /**
        // getLength decodes the next uint and makes sure it is a possible
        // size for a data item that follows, which means it must fit in a
        // non-negative int and fit in the buffer.
    **/
    @:keep
    static public function _getLength( _state:stdgo.StdGoTypes.Ref<T_decoderState>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_decoderState> = _state;
        var _n:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
        if (((_n < (0 : stdgo.StdGoTypes.GoInt)) || (_state._b.len() < _n)) || ((1073741824 : stdgo.StdGoTypes.GoInt) <= _n)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false };
        };
        return { _0 : _n, _1 : true };
    }
    /**
        // decodeInt reads an encoded signed integer from state.r.
        // Does not check for overflow.
    **/
    @:keep
    static public function _decodeInt( _state:stdgo.StdGoTypes.Ref<T_decoderState>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_decoderState> = _state;
        var _x:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        if (_x & (1i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
            return (-1 ^ (_x >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64));
        };
        return (_x >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64);
    }
    /**
        // decodeUint reads an encoded unsigned integer from state.r.
        // Does not check for overflow.
    **/
    @:keep
    static public function _decodeUint( _state:stdgo.StdGoTypes.Ref<T_decoderState>):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_decoderState> = _state;
        var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        var __tmp__ = _state._b.readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        if (_b <= (127 : stdgo.StdGoTypes.GoUInt8)) {
            return (_b : stdgo.StdGoTypes.GoUInt64);
        };
        var _n:stdgo.StdGoTypes.GoInt = -((_b : stdgo.StdGoTypes.GoInt8) : stdgo.StdGoTypes.GoInt);
        if (_n > (8 : stdgo.StdGoTypes.GoInt)) {
            _error_(_errBadUint);
        };
        var _buf = _state._b.bytes();
        if ((_buf.length) < _n) {
            _errorf(("invalid uint data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.length)));
        };
        for (__0 => _b in (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) {
            _x = (_x << (8i64 : stdgo.StdGoTypes.GoUInt64)) | (_b : stdgo.StdGoTypes.GoUInt64);
        };
        _state._b.drop(_n);
        return _x;
    }
}
class T_decBuffer_asInterface {
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    /**
        // SetBytes sets the buffer to the bytes, discarding any existing data.
    **/
    @:keep
    public dynamic function setBytes(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value.setBytes(_data);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.bytes();
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function drop(_n:stdgo.StdGoTypes.GoInt):Void __self__.value.drop(_n);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decBuffer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_decBuffer_asInterface) class T_decBuffer_static_extension {
    @:keep
    static public function reset( _d:stdgo.StdGoTypes.Ref<T_decBuffer>):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        _d._data = (_d._data.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _d._offset = (0 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // SetBytes sets the buffer to the bytes, discarding any existing data.
    **/
    @:keep
    static public function setBytes( _d:stdgo.StdGoTypes.Ref<T_decBuffer>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        _d._data = _data;
        _d._offset = (0 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function bytes( _d:stdgo.StdGoTypes.Ref<T_decBuffer>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        return (_d._data.__slice__(_d._offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    }
    @:keep
    static public function len( _d:stdgo.StdGoTypes.Ref<T_decBuffer>):stdgo.StdGoTypes.GoInt {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        return (_d._data.length) - _d._offset;
    }
    @:keep
    static public function readByte( _d:stdgo.StdGoTypes.Ref<T_decBuffer>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        if (_d._offset >= (_d._data.length)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : stdgo.io.Io.eof };
        };
        var _c:stdgo.StdGoTypes.GoUInt8 = _d._data[(_d._offset : stdgo.StdGoTypes.GoInt)];
        _d._offset++;
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function drop( _d:stdgo.StdGoTypes.Ref<T_decBuffer>, _n:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        if (_n > _d.len()) {
            throw stdgo.Go.toInterface(("drop" : stdgo.GoString));
        };
        _d._offset = _d._offset + (_n);
    }
    @:keep
    static public function read( _d:stdgo.StdGoTypes.Ref<T_decBuffer>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decBuffer> = _d;
        var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_p, (_d._data.__slice__(_d._offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        if ((_n == (0 : stdgo.StdGoTypes.GoInt)) && (_p.length != (0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.io.Io.eof };
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
class Decoder_asInterface {
    /**
        // DecodeValue reads the next value from the input stream.
        // If v is the zero reflect.Value (v.Kind() == Invalid), DecodeValue discards the value.
        // Otherwise, it stores the value into v. In that case, v must represent
        // a non-nil pointer to data or be an assignable reflect.Value (v.CanSet())
        // If the input is at EOF, DecodeValue returns io.EOF and
        // does not modify v.
    **/
    @:keep
    public dynamic function decodeValue(_v:stdgo.reflect.Reflect.Value):stdgo.Error return __self__.value.decodeValue(_v);
    /**
        // Decode reads the next value from the input stream and stores
        // it in the data represented by the empty interface value.
        // If e is nil, the value will be discarded. Otherwise,
        // the value underlying e must be a pointer to the
        // correct type for the next data item received.
        // If the input is at EOF, Decode returns io.EOF and
        // does not modify e.
    **/
    @:keep
    public dynamic function decode(_e:stdgo.StdGoTypes.AnyInterface):stdgo.Error return __self__.value.decode(_e);
    /**
        // decodeTypeSequence parses:
        // TypeSequence
        //
        //	(TypeDefinition DelimitedTypeDefinition*)?
        //
        // and returns the type id of the next value. It returns -1 at
        // EOF.  Upon return, the remainder of dec.buf is the value to be
        // decoded. If this is an interface value, it can be ignored by
        // resetting that buffer.
    **/
    @:keep
    public dynamic function _decodeTypeSequence(_isInterface:Bool):T_typeId return __self__.value._decodeTypeSequence(_isInterface);
    @:keep
    public dynamic function _nextUint():stdgo.StdGoTypes.GoUInt64 return __self__.value._nextUint();
    @:keep
    public dynamic function _nextInt():stdgo.StdGoTypes.GoInt64 return __self__.value._nextInt();
    /**
        // readMessage reads the next nbytes bytes from the input.
    **/
    @:keep
    public dynamic function _readMessage(_nbytes:stdgo.StdGoTypes.GoInt):Void __self__.value._readMessage(_nbytes);
    /**
        // recvMessage reads the next count-delimited item from the input. It is the converse
        // of Encoder.writeMessage. It returns false on EOF or other error reading the message.
    **/
    @:keep
    public dynamic function _recvMessage():Bool return __self__.value._recvMessage();
    /**
        // recvType loads the definition of a type.
    **/
    @:keep
    public dynamic function _recvType(_id:T_typeId):Void __self__.value._recvType(_id);
    /**
        // decodeIgnoredValue decodes the data stream representing a value of the specified type and discards it.
    **/
    @:keep
    public dynamic function _decodeIgnoredValue(_wireId:T_typeId):Void __self__.value._decodeIgnoredValue(_wireId);
    /**
        // decodeValue decodes the data stream representing a value and stores it in value.
    **/
    @:keep
    public dynamic function _decodeValue(_wireId:T_typeId, _value:stdgo.reflect.Reflect.Value):Void __self__.value._decodeValue(_wireId, _value);
    /**
        // getIgnoreEnginePtr returns the engine for the specified type when the value is to be discarded.
    **/
    @:keep
    public dynamic function _getIgnoreEnginePtr(_wireId:T_typeId):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>>; var _1 : stdgo.Error; } return __self__.value._getIgnoreEnginePtr(_wireId);
    /**
        // getDecEnginePtr returns the engine for the specified type.
    **/
    @:keep
    public dynamic function _getDecEnginePtr(_remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>>; var _1 : stdgo.Error; } return __self__.value._getDecEnginePtr(_remoteId, _ut);
    /**
        // compileDec compiles the decoder engine for a value. If the value is not a struct,
        // it calls out to compileSingle.
    **/
    @:keep
    public dynamic function _compileDec(_remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_decEngine>; var _1 : stdgo.Error; } return __self__.value._compileDec(_remoteId, _ut);
    /**
        // compileIgnoreSingle compiles the decoder engine for a non-struct top-level value that will be discarded.
    **/
    @:keep
    public dynamic function _compileIgnoreSingle(_remoteId:T_typeId):stdgo.StdGoTypes.Ref<T_decEngine> return __self__.value._compileIgnoreSingle(_remoteId);
    /**
        // compileSingle compiles the decoder engine for a non-struct top-level value, including
        // GobDecoders.
    **/
    @:keep
    public dynamic function _compileSingle(_remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_decEngine>; var _1 : stdgo.Error; } return __self__.value._compileSingle(_remoteId, _ut);
    /**
        // typeString returns a human-readable description of the type identified by remoteId.
    **/
    @:keep
    public dynamic function _typeString(_remoteId:T_typeId):stdgo.GoString return __self__.value._typeString(_remoteId);
    /**
        // compatibleType asks: Are these two gob Types compatible?
        // Answers the question for basic types, arrays, maps and slices, plus
        // GobEncoder/Decoder pairs.
        // Structs are considered ok; fields will be checked later.
    **/
    @:keep
    public dynamic function _compatibleType(_fr:stdgo.reflect.Reflect.Type, _fw:T_typeId, _inProgress:stdgo.GoMap<stdgo.reflect.Reflect.Type, T_typeId>):Bool return __self__.value._compatibleType(_fr, _fw, _inProgress);
    /**
        // gobDecodeOpFor returns the op for a type that is known to implement
        // GobDecoder.
    **/
    @:keep
    public dynamic function _gobDecodeOpFor(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):stdgo.StdGoTypes.Ref<T_decOp> return __self__.value._gobDecodeOpFor(_ut);
    /**
        // decIgnoreOpFor returns the decoding op for a field that has no destination.
    **/
    @:keep
    public dynamic function _decIgnoreOpFor(_wireId:T_typeId, _inProgress:stdgo.GoMap<T_typeId, stdgo.StdGoTypes.Ref<T_decOp>>, _depth:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<T_decOp> return __self__.value._decIgnoreOpFor(_wireId, _inProgress, _depth);
    /**
        // decOpFor returns the decoding op for the base type under rt and
        // the indirection count to reach it.
    **/
    @:keep
    public dynamic function _decOpFor(_wireId:T_typeId, _rt:stdgo.reflect.Reflect.Type, _name:stdgo.GoString, _inProgress:stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_decOp>>):stdgo.StdGoTypes.Ref<T_decOp> return __self__.value._decOpFor(_wireId, _rt, _name, _inProgress);
    /**
        // ignoreGobDecoder discards the data for a GobDecoder value with no destination.
    **/
    @:keep
    public dynamic function _ignoreGobDecoder(_state:stdgo.StdGoTypes.Ref<T_decoderState>):Void __self__.value._ignoreGobDecoder(_state);
    /**
        // decodeGobDecoder decodes something implementing the GobDecoder interface.
        // The data is encoded as a byte slice.
    **/
    @:keep
    public dynamic function _decodeGobDecoder(_ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._decodeGobDecoder(_ut, _state, _value);
    /**
        // ignoreInterface discards the data for an interface value with no destination.
    **/
    @:keep
    public dynamic function _ignoreInterface(_state:stdgo.StdGoTypes.Ref<T_decoderState>):Void __self__.value._ignoreInterface(_state);
    /**
        // decodeInterface decodes an interface value and stores it in value.
        // Interfaces are encoded as the name of a concrete type followed by a value.
        // If the name is empty, the value is nil and no value is sent.
    **/
    @:keep
    public dynamic function _decodeInterface(_ityp:stdgo.reflect.Reflect.Type, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._decodeInterface(_ityp, _state, _value);
    /**
        // ignoreSlice skips over the data for a slice value with no destination.
    **/
    @:keep
    public dynamic function _ignoreSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp):Void __self__.value._ignoreSlice(_state, _elemOp);
    /**
        // decodeSlice decodes a slice and stores it in value.
        // Slices are encoded as an unsigned length followed by the elements.
    **/
    @:keep
    public dynamic function _decodeSlice(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _ovfl:stdgo.Error, _helper:T_decHelper):Void __self__.value._decodeSlice(_state, _value, _elemOp, _ovfl, _helper);
    /**
        // ignoreMap discards the data for a map value with no destination.
    **/
    @:keep
    public dynamic function _ignoreMap(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _keyOp:T_decOp, _elemOp:T_decOp):Void __self__.value._ignoreMap(_state, _keyOp, _elemOp);
    /**
        // ignoreArray discards the data for an array value with no destination.
    **/
    @:keep
    public dynamic function _ignoreArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt):Void __self__.value._ignoreArray(_state, _elemOp, _length);
    /**
        // ignoreArrayHelper does the work for discarding arrays and slices.
    **/
    @:keep
    public dynamic function _ignoreArrayHelper(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt):Void __self__.value._ignoreArrayHelper(_state, _elemOp, _length);
    /**
        // decodeMap decodes a map and stores it in value.
        // Maps are encoded as a length followed by key:value pairs.
        // Because the internals of maps are not visible to us, we must
        // use reflection rather than pointer magic.
    **/
    @:keep
    public dynamic function _decodeMap(_mtyp:stdgo.reflect.Reflect.Type, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:stdgo.Error):Void __self__.value._decodeMap(_mtyp, _state, _value, _keyOp, _elemOp, _ovfl);
    /**
        // decodeArray decodes an array and stores it in value.
        // The length is an unsigned integer preceding the elements. Even though the length is redundant
        // (it's part of the type), it's a useful check and is included in the encoding.
    **/
    @:keep
    public dynamic function _decodeArray(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error, _helper:T_decHelper):Void __self__.value._decodeArray(_state, _value, _elemOp, _length, _ovfl, _helper);
    /**
        // decodeArrayHelper does the work for decoding arrays and slices.
    **/
    @:keep
    public dynamic function _decodeArrayHelper(_state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error, _helper:T_decHelper):Void __self__.value._decodeArrayHelper(_state, _value, _elemOp, _length, _ovfl, _helper);
    /**
        // ignoreSingle discards the data for a top-level non-struct value with no
        // destination. It's used when calling Decode with a nil value.
    **/
    @:keep
    public dynamic function _ignoreSingle(_engine:stdgo.StdGoTypes.Ref<T_decEngine>):Void __self__.value._ignoreSingle(_engine);
    /**
        // ignoreStruct discards the data for a struct with no destination.
    **/
    @:keep
    public dynamic function _ignoreStruct(_engine:stdgo.StdGoTypes.Ref<T_decEngine>):Void __self__.value._ignoreStruct(_engine);
    /**
        // decodeStruct decodes a top-level struct and stores it in value.
        // Indir is for the value, not the type. At the time of the call it may
        // differ from ut.indir, which was computed when the engine was built.
        // This state cannot arise for decodeSingle, which is called directly
        // from the user's value, not from the innards of an engine.
    **/
    @:keep
    public dynamic function _decodeStruct(_engine:stdgo.StdGoTypes.Ref<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._decodeStruct(_engine, _value);
    /**
        // decodeSingle decodes a top-level value that is not a struct and stores it in value.
        // Such values are preceded by a zero, making them have the memory layout of a
        // struct field (although with an illegal field number).
    **/
    @:keep
    public dynamic function _decodeSingle(_engine:stdgo.StdGoTypes.Ref<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._decodeSingle(_engine, _value);
    @:keep
    public dynamic function _freeDecoderState(_d:stdgo.StdGoTypes.Ref<T_decoderState>):Void __self__.value._freeDecoderState(_d);
    /**
        // We pass the bytes.Buffer separately for easier testing of the infrastructure
        // without requiring a full Decoder.
    **/
    @:keep
    public dynamic function _newDecoderState(_buf:stdgo.StdGoTypes.Ref<T_decBuffer>):stdgo.StdGoTypes.Ref<T_decoderState> return __self__.value._newDecoderState(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Decoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Decoder_asInterface) class Decoder_static_extension {
    /**
        // DecodeValue reads the next value from the input stream.
        // If v is the zero reflect.Value (v.Kind() == Invalid), DecodeValue discards the value.
        // Otherwise, it stores the value into v. In that case, v must represent
        // a non-nil pointer to data or be an assignable reflect.Value (v.CanSet())
        // If the input is at EOF, DecodeValue returns io.EOF and
        // does not modify v.
    **/
    @:keep
    static public function decodeValue( _dec:stdgo.StdGoTypes.Ref<Decoder>, _v:stdgo.reflect.Reflect.Value):stdgo.Error {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        if (_v.isValid()) {
            if ((_v.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && !_v.isNil()) {} else if (!_v.canSet()) {
                return stdgo.errors.Errors.new_(("gob: DecodeValue of unassignable value" : stdgo.GoString));
            };
        };
        try {
            _dec._mutex.lock();
            __deferstack__.unshift(() -> _dec._mutex.unlock());
            _dec._buf.reset();
            _dec._err = (null : stdgo.Error);
            var _id:stdgo.encoding.gob.Gob.T_typeId = _dec._decodeTypeSequence(false);
            if (_dec._err == null) {
                _dec._decodeValue(_id, _v?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _dec._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    /**
        // Decode reads the next value from the input stream and stores
        // it in the data represented by the empty interface value.
        // If e is nil, the value will be discarded. Otherwise,
        // the value underlying e must be a pointer to the
        // correct type for the next data item received.
        // If the input is at EOF, Decode returns io.EOF and
        // does not modify e.
    **/
    @:keep
    static public function decode( _dec:stdgo.StdGoTypes.Ref<Decoder>, _e:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if (_e == null) {
            return _dec.decodeValue((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value));
        };
        var _value:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_e)?.__copy__();
        if (_value.type().kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            _dec._err = stdgo.errors.Errors.new_(("gob: attempt to decode into a non-pointer" : stdgo.GoString));
            return _dec._err;
        };
        return _dec.decodeValue(_value?.__copy__());
    }
    /**
        // decodeTypeSequence parses:
        // TypeSequence
        //
        //	(TypeDefinition DelimitedTypeDefinition*)?
        //
        // and returns the type id of the next value. It returns -1 at
        // EOF.  Upon return, the remainder of dec.buf is the value to be
        // decoded. If this is an interface value, it can be ignored by
        // resetting that buffer.
    **/
    @:keep
    static public function _decodeTypeSequence( _dec:stdgo.StdGoTypes.Ref<Decoder>, _isInterface:Bool):T_typeId {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _firstMessage:Bool = true;
        while (_dec._err == null) {
            if (_dec._buf.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                if (!_dec._recvMessage()) {
                    if (!_firstMessage && (stdgo.Go.toInterface(_dec._err) == stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _dec._err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    break;
                };
            };
            var _id:stdgo.encoding.gob.Gob.T_typeId = (_dec._nextInt() : T_typeId);
            if (_id >= (0 : stdgo.encoding.gob.Gob.T_typeId)) {
                return _id;
            };
            _dec._recvType(-_id);
            if (_dec._err != null) {
                break;
            };
            if (_dec._buf.len() > (0 : stdgo.StdGoTypes.GoInt)) {
                if (!_isInterface) {
                    _dec._err = stdgo.errors.Errors.new_(("extra data in buffer" : stdgo.GoString));
                    break;
                };
                _dec._nextUint();
            };
            _firstMessage = false;
        };
        return (-1 : stdgo.encoding.gob.Gob.T_typeId);
    }
    @:keep
    static public function _nextUint( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>)), _dec._countBuf), _n:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return _n;
    }
    @:keep
    static public function _nextInt( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>)), _dec._countBuf), _n:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return _toInt(_n);
    }
    /**
        // readMessage reads the next nbytes bytes from the input.
    **/
    @:keep
    static public function _readMessage( _dec:stdgo.StdGoTypes.Ref<Decoder>, _nbytes:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if (_dec._buf.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
            throw stdgo.Go.toInterface(("non-empty decoder buffer" : stdgo.GoString));
        };
        var _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var __tmp__ = internal.saferio.Saferio.readData(_dec._r, (_nbytes : stdgo.StdGoTypes.GoUInt64));
            _buf = __tmp__._0;
            _dec._err = __tmp__._1;
        };
        _dec._buf.setBytes(_buf);
        if (stdgo.Go.toInterface(_dec._err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            _dec._err = stdgo.io.Io.errUnexpectedEOF;
        };
    }
    /**
        // recvMessage reads the next count-delimited item from the input. It is the converse
        // of Encoder.writeMessage. It returns false on EOF or other error reading the message.
    **/
    @:keep
    static public function _recvMessage( _dec:stdgo.StdGoTypes.Ref<Decoder>):Bool {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _decodeUintReader(_dec._r, _dec._countBuf), _nbytes:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
            return false;
        };
        if (_nbytes >= (1073741824i64 : stdgo.StdGoTypes.GoUInt64)) {
            _dec._err = _errBadCount;
            return false;
        };
        _dec._readMessage((_nbytes : stdgo.StdGoTypes.GoInt));
        return _dec._err == null;
    }
    /**
        // recvType loads the definition of a type.
    **/
    @:keep
    static public function _recvType( _dec:stdgo.StdGoTypes.Ref<Decoder>, _id:T_typeId):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if ((_id < (64 : stdgo.encoding.gob.Gob.T_typeId)) || (((_dec._wireType[_id] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)) != null) && ((_dec._wireType[_id] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>) : Dynamic).__nil__ == null || !(_dec._wireType[_id] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>) : Dynamic).__nil__))) {
            _dec._err = stdgo.errors.Errors.new_(("gob: duplicate type received" : stdgo.GoString));
            return;
        };
        var _wire = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_wireType)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>);
        _dec._decodeValue(_tWireType, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_wire)))?.__copy__());
        if (_dec._err != null) {
            return;
        };
        _dec._wireType[_id] = _wire;
    }
    /**
        // decodeIgnoredValue decodes the data stream representing a value of the specified type and discards it.
    **/
    @:keep
    static public function _decodeIgnoredValue( _dec:stdgo.StdGoTypes.Ref<Decoder>, _wireId:T_typeId):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
        {
            var __tmp__ = _dec._getIgnoreEnginePtr(_wireId);
            _enginePtr = __tmp__._0;
            _dec._err = __tmp__._1;
        };
        if (_dec._err != null) {
            return;
        };
        var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>));
        if (((_wire != null) && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && ((_wire.structT != null) && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__))) {
            _dec._ignoreStruct((_enginePtr : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>));
        } else {
            _dec._ignoreSingle((_enginePtr : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>));
        };
    }
    /**
        // decodeValue decodes the data stream representing a value and stores it in value.
    **/
    @:keep
    static public function _decodeValue( _dec:stdgo.StdGoTypes.Ref<Decoder>, _wireId:T_typeId, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef(_dec._err) : stdgo.StdGoTypes.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _catchError(_a0));
            };
            if (!_value.isValid()) {
                _dec._decodeIgnoredValue(_wireId);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _ut = _userType(_value.type());
            var _base:stdgo.reflect.Reflect.Type = _ut._base;
            var _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
            {
                var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut);
                _enginePtr = __tmp__._0;
                _dec._err = __tmp__._1;
            };
            if (_dec._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _value = _decAlloc(_value?.__copy__())?.__copy__();
            var _engine = (_enginePtr : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>);
            {
                var _st:stdgo.reflect.Reflect.Type = _base;
                if ((_st.kind() == (25u32 : stdgo.reflect.Reflect.Kind)) && (_ut._externalDec == (0 : stdgo.StdGoTypes.GoInt))) {
                    var _wt = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>));
                    if ((((_engine._numInstr == (0 : stdgo.StdGoTypes.GoInt)) && (_st.numField() > (0 : stdgo.StdGoTypes.GoInt))) && ((_wt != null) && ((_wt : Dynamic).__nil__ == null || !(_wt : Dynamic).__nil__))) && (_wt.structT.field.length > (0 : stdgo.StdGoTypes.GoInt))) {
                        var _name:stdgo.GoString = _base.name()?.__copy__();
                        _errorf(("type mismatch: no fields matched compiling decoder for %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    };
                    _dec._decodeStruct(_engine, _value?.__copy__());
                } else {
                    _dec._decodeSingle(_engine, _value?.__copy__());
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // getIgnoreEnginePtr returns the engine for the specified type when the value is to be discarded.
    **/
    @:keep
    static public function _getIgnoreEnginePtr( _dec:stdgo.StdGoTypes.Ref<Decoder>, _wireId:T_typeId):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>), _err:stdgo.Error = (null : stdgo.Error);
        var _ok:Bool = false;
        {
            {
                var __tmp__ = (_dec._ignorerCache != null && _dec._ignorerCache.exists(_wireId) ? { value : _dec._ignorerCache[_wireId], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>), ok : false });
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
                _dec._ignorerCache[_wireId] = _enginePtr;
                var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>));
                if (((_wire != null) && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && ((_wire.structT != null) && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__))) {
                    {
                        var __tmp__ = _dec._compileDec(_wireId, _userType(_emptyStructType));
                        _enginePtr = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _enginePtr = _dec._compileIgnoreSingle(_wireId);
                };
                if (_err != null) {
                    if (_dec._ignorerCache != null) _dec._ignorerCache.remove(_wireId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    /**
        // getDecEnginePtr returns the engine for the specified type.
    **/
    @:keep
    static public function _getDecEnginePtr( _dec:stdgo.StdGoTypes.Ref<Decoder>, _remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_decEngine>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>), _err:stdgo.Error = (null : stdgo.Error);
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        var __tmp__ = (_dec._decoderCache != null && _dec._decoderCache.exists(_rt) ? { value : _dec._decoderCache[_rt], ok : true } : { value : (null : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>), ok : false }), _decoderMap:stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _decoderMap = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>>);
            _dec._decoderCache[_rt] = _decoderMap;
        };
        {
            {
                var __tmp__ = (_decoderMap != null && _decoderMap.exists(_remoteId) ? { value : _decoderMap[_remoteId], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>), ok : false });
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>>);
                _decoderMap[_remoteId] = _enginePtr;
                {
                    var __tmp__ = _dec._compileDec(_remoteId, _ut);
                    _enginePtr = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (_decoderMap != null) _decoderMap.remove(_remoteId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    /**
        // compileDec compiles the decoder engine for a value. If the value is not a struct,
        // it calls out to compileSingle.
    **/
    @:keep
    static public function _compileDec( _dec:stdgo.StdGoTypes.Ref<Decoder>, _remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        var _engine:stdgo.StdGoTypes.Ref<T_decEngine> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>), _err:stdgo.Error = (null : stdgo.Error);
        {
            var _a0 = (stdgo.Go.setRef(_err) : stdgo.StdGoTypes.Ref<stdgo.Error>);
            __deferstack__.unshift(() -> _catchError(_a0));
        };
        try {
            var _rt:stdgo.reflect.Reflect.Type = _ut._base;
            var _srt:stdgo.reflect.Reflect.Type = _rt;
            if ((_srt.kind() != (25u32 : stdgo.reflect.Reflect.Kind)) || (_ut._externalDec != (0 : stdgo.StdGoTypes.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _dec._compileSingle(_remoteId, _ut);
                };
            };
            var _wireStruct:stdgo.StdGoTypes.Ref<T_structType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>);
            {
                var _t:stdgo.encoding.gob.Gob.T_gobType = _builtinIdToType(_remoteId);
                if (_t != null) {
                    {
                        var __tmp__ = try {
                            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.StdGoTypes.Ref<T_structType>)) : stdgo.StdGoTypes.Ref<T_structType>), ok : true };
                        } catch(_) {
                            { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_structType>), ok : false };
                        };
                        _wireStruct = __tmp__.value;
                    };
                } else {
                    var _wire = (_dec._wireType[_remoteId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>));
                    if (_wire == null || (_wire : Dynamic).__nil__) {
                        _error_(_errBadType);
                    };
                    _wireStruct = _wire.structT;
                };
            };
            if (_wireStruct == null || (_wireStruct : Dynamic).__nil__) {
                _errorf(("type mismatch in decoder: want struct type %s; got non-struct" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            _engine = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_decEngine)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>);
            _engine._instr = new stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr>((_wireStruct.field.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_wireStruct.field.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_wireStruct.field.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.gob.Gob.T_decInstr)]);
            var _seen = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>();
                x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>);
            {
                var _fieldnum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_fieldnum < (_wireStruct.field.length), _fieldnum++, {
                    var _wireField:stdgo.encoding.gob.Gob.T_fieldType = _wireStruct.field[(_fieldnum : stdgo.StdGoTypes.GoInt)];
                    if (_wireField.name == (stdgo.Go.str())) {
                        _errorf(("empty name for remote field of type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireStruct.commonType.name));
                    };
                    var _ovfl:stdgo.Error = _overflow(_wireField.name?.__copy__());
                    var __tmp__ = _srt.fieldByName(_wireField.name?.__copy__()), _localField:stdgo.reflect.Reflect.StructField = __tmp__._0, _present:Bool = __tmp__._1;
                    if (!_present || !_isExported(_wireField.name?.__copy__())) {
                        var _op = _dec._decIgnoreOpFor(_wireField.id, ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>();
                            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
                            @:mergeBlock {};
                            x;
                        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>), (0 : stdgo.StdGoTypes.GoInt));
                        _engine._instr[(_fieldnum : stdgo.StdGoTypes.GoInt)] = (new stdgo.encoding.gob.Gob.T_decInstr((_op : stdgo.encoding.gob.Gob.T_decOp), _fieldnum, (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr);
                        continue;
                    };
                    if (!_dec._compatibleType(_localField.type, _wireField.id, ({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>();
                        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
                        @:mergeBlock {};
                        cast x;
                    } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>))) {
                        _errorf(("wrong type (%s) for received field %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_localField.type), stdgo.Go.toInterface(_wireStruct.commonType.name), stdgo.Go.toInterface(_wireField.name));
                    };
                    var _op = _dec._decOpFor(_wireField.id, _localField.type, _localField.name?.__copy__(), _seen);
                    _engine._instr[(_fieldnum : stdgo.StdGoTypes.GoInt)] = (new stdgo.encoding.gob.Gob.T_decInstr((_op : stdgo.encoding.gob.Gob.T_decOp), _fieldnum, _localField.index, _ovfl) : stdgo.encoding.gob.Gob.T_decInstr);
                    _engine._numInstr++;
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _engine, _1 : _err };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _engine, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _engine, _1 : _err };
        };
    }
    /**
        // compileIgnoreSingle compiles the decoder engine for a non-struct top-level value that will be discarded.
    **/
    @:keep
    static public function _compileIgnoreSingle( _dec:stdgo.StdGoTypes.Ref<Decoder>, _remoteId:T_typeId):stdgo.StdGoTypes.Ref<T_decEngine> {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _engine = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_decEngine)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>);
        _engine._instr = new stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (1 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.gob.Gob.T_decInstr)]);
        var _op = _dec._decIgnoreOpFor(_remoteId, ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>), (0 : stdgo.StdGoTypes.GoInt));
        var _ovfl:stdgo.Error = _overflow(_dec._typeString(_remoteId)?.__copy__());
        _engine._instr[(0 : stdgo.StdGoTypes.GoInt)] = (new stdgo.encoding.gob.Gob.T_decInstr((_op : stdgo.encoding.gob.Gob.T_decOp), (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr);
        _engine._numInstr = (1 : stdgo.StdGoTypes.GoInt);
        return _engine;
    }
    /**
        // compileSingle compiles the decoder engine for a non-struct top-level value, including
        // GobDecoders.
    **/
    @:keep
    static public function _compileSingle( _dec:stdgo.StdGoTypes.Ref<Decoder>, _remoteId:T_typeId, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):{ var _0 : stdgo.StdGoTypes.Ref<T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _engine:stdgo.StdGoTypes.Ref<T_decEngine> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>), _err:stdgo.Error = (null : stdgo.Error);
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        _engine = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_decEngine)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>);
        _engine._instr = new stdgo.Slice<stdgo.encoding.gob.Gob.T_decInstr>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (1 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.gob.Gob.T_decInstr)]);
        var _name:stdgo.GoString = (_rt.string() : stdgo.GoString)?.__copy__();
        if (!_dec._compatibleType(_rt, _remoteId, ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.encoding.gob.Gob.T_typeId>))) {
            var _remoteType:stdgo.GoString = _dec._typeString(_remoteId)?.__copy__();
            if ((_ut._base.kind() == (20u32 : stdgo.reflect.Reflect.Kind)) && (_remoteId != _tInterface)) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(("gob: local interface type " : stdgo.GoString) + _name?.__copy__() + (" can only be decoded from remote interface type; received concrete type " : stdgo.GoString)?.__copy__() + _remoteType?.__copy__()?.__copy__()) };
            };
            return { _0 : null, _1 : stdgo.errors.Errors.new_(("gob: decoding into local type " : stdgo.GoString) + _name?.__copy__() + (", received remote type " : stdgo.GoString)?.__copy__() + _remoteType?.__copy__()?.__copy__()) };
        };
        var _op = _dec._decOpFor(_remoteId, _rt, _name?.__copy__(), ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>>));
        var _ovfl:stdgo.Error = stdgo.errors.Errors.new_(("value for \"" : stdgo.GoString) + _name?.__copy__() + ("\" out of range" : stdgo.GoString)?.__copy__()?.__copy__());
        _engine._instr[(0 : stdgo.StdGoTypes.GoInt)] = (new stdgo.encoding.gob.Gob.T_decInstr((_op : stdgo.encoding.gob.Gob.T_decOp), (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr);
        _engine._numInstr = (1 : stdgo.StdGoTypes.GoInt);
        return { _0 : _engine, _1 : _err };
    }
    /**
        // typeString returns a human-readable description of the type identified by remoteId.
    **/
    @:keep
    static public function _typeString( _dec:stdgo.StdGoTypes.Ref<Decoder>, _remoteId:T_typeId):stdgo.GoString {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        try {
            __deferstack__.unshift(() -> _typeLock.unlock());
            {
                var _t:stdgo.encoding.gob.Gob.T_gobType = _idToType(_remoteId);
                if (_t != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _t._string()?.__copy__();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (_dec._wireType[_remoteId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>))._string()?.__copy__();
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return ("" : stdgo.GoString);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return ("" : stdgo.GoString);
        };
    }
    /**
        // compatibleType asks: Are these two gob Types compatible?
        // Answers the question for basic types, arrays, maps and slices, plus
        // GobEncoder/Decoder pairs.
        // Structs are considered ok; fields will be checked later.
    **/
    @:keep
    static public function _compatibleType( _dec:stdgo.StdGoTypes.Ref<Decoder>, _fr:stdgo.reflect.Reflect.Type, _fw:T_typeId, _inProgress:stdgo.GoMap<stdgo.reflect.Reflect.Type, T_typeId>):Bool {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            var __tmp__ = (_inProgress != null && _inProgress.exists(_fr) ? { value : _inProgress[_fr], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId), ok : false }), _rhs:stdgo.encoding.gob.Gob.T_typeId = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _rhs == (_fw);
            };
        };
        _inProgress[_fr] = _fw;
        var _ut = _userType(_fr);
        var __tmp__ = (_dec._wireType != null && _dec._wireType.exists(_fw) ? { value : _dec._wireType[_fw], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>), ok : false }), _wire:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if ((((_ut._externalDec == (1 : stdgo.StdGoTypes.GoInt)) != (_ok && ((_wire.gobEncoderT != null) && ((_wire.gobEncoderT : Dynamic).__nil__ == null || !(_wire.gobEncoderT : Dynamic).__nil__)))) || ((_ut._externalDec == (2 : stdgo.StdGoTypes.GoInt)) != (_ok && ((_wire.binaryMarshalerT != null) && ((_wire.binaryMarshalerT : Dynamic).__nil__ == null || !(_wire.binaryMarshalerT : Dynamic).__nil__))))) || ((_ut._externalDec == (3 : stdgo.StdGoTypes.GoInt)) != (_ok && ((_wire.textMarshalerT != null) && ((_wire.textMarshalerT : Dynamic).__nil__ == null || !(_wire.textMarshalerT : Dynamic).__nil__))))) {
            return false;
        };
        if (_ut._externalDec != ((0 : stdgo.StdGoTypes.GoInt))) {
            return true;
        };
        {
            var _t:stdgo.reflect.Reflect.Type = _ut._base;
            {
                final __value__ = _t.kind();
                if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tBool);
                } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tInt);
                } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tUint);
                } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tFloat);
                } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tComplex);
                } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tString);
                } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                    return _fw == (_tInterface);
                } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                    if (!_ok || ((_wire.arrayT == null) || (_wire.arrayT : Dynamic).__nil__)) {
                        return false;
                    };
                    var _array = _wire.arrayT;
                    return (_t.len() == _array.len) && _dec._compatibleType(_t.elem(), _array.elem, _inProgress);
                } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                    if (!_ok || ((_wire.mapT == null) || (_wire.mapT : Dynamic).__nil__)) {
                        return false;
                    };
                    var mapType = _wire.mapT;
                    return _dec._compatibleType(_t.key(), mapType.key, _inProgress) && _dec._compatibleType(_t.elem(), mapType.elem, _inProgress);
                } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                    if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                        return _fw == (_tBytes);
                    };
                    var _sw:stdgo.StdGoTypes.Ref<T_sliceType> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>);
                    {
                        var _tt:stdgo.encoding.gob.Gob.T_gobType = _builtinIdToType(_fw);
                        if (_tt != null) {
                            {
                                var __tmp__ = try {
                                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.StdGoTypes.Ref<T_sliceType>)) : stdgo.StdGoTypes.Ref<T_sliceType>), ok : true };
                                } catch(_) {
                                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_sliceType>), ok : false };
                                };
                                _sw = __tmp__.value;
                            };
                        } else if (_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) {
                            _sw = _wire.sliceT;
                        };
                    };
                    var _elem:stdgo.reflect.Reflect.Type = _userType(_t.elem())._base;
                    return ((_sw != null) && ((_sw : Dynamic).__nil__ == null || !(_sw : Dynamic).__nil__)) && _dec._compatibleType(_elem, _sw.elem, _inProgress);
                } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                    return true;
                } else {
                    return false;
                };
            };
        };
    }
    /**
        // gobDecodeOpFor returns the op for a type that is known to implement
        // GobDecoder.
    **/
    @:keep
    static public function _gobDecodeOpFor( _dec:stdgo.StdGoTypes.Ref<Decoder>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):stdgo.StdGoTypes.Ref<T_decOp> {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _rcvrType:stdgo.reflect.Reflect.Type = _ut._user;
        if (_ut._decIndir == ((-1 : stdgo.StdGoTypes.GoInt8))) {
            _rcvrType = stdgo.reflect.Reflect.pointerTo(_rcvrType);
        } else if (_ut._decIndir > (0 : stdgo.StdGoTypes.GoInt8)) {
            {
                var _i:stdgo.StdGoTypes.GoInt8 = (0 : stdgo.StdGoTypes.GoInt8);
                stdgo.Go.cfor(_i < _ut._decIndir, _i++, {
                    _rcvrType = _rcvrType.elem();
                });
            };
        };
        var _op:T_decOp = (null : stdgo.encoding.gob.Gob.T_decOp);
        _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
            if ((_value.kind() != (22u32 : stdgo.reflect.Reflect.Kind)) && (_rcvrType.kind() == (22u32 : stdgo.reflect.Reflect.Kind))) {
                _value = _value.addr()?.__copy__();
            };
            _state._dec._decodeGobDecoder(_ut, _state, _value?.__copy__());
        };
        return (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
    }
    /**
        // decIgnoreOpFor returns the decoding op for a field that has no destination.
    **/
    @:keep
    static public function _decIgnoreOpFor( _dec:stdgo.StdGoTypes.Ref<Decoder>, _wireId:T_typeId, _inProgress:stdgo.GoMap<T_typeId, stdgo.StdGoTypes.Ref<T_decOp>>, _depth:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<T_decOp> {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if (_depth > _maxIgnoreNestingDepth) {
            _error_(stdgo.errors.Errors.new_(("invalid nesting depth" : stdgo.GoString)));
        };
        {
            var _opPtr = (_inProgress[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>));
            if (_opPtr != null && ((_opPtr : Dynamic).__nil__ == null || !(_opPtr : Dynamic).__nil__)) {
                return _opPtr;
            };
        };
        var __tmp__ = (_decIgnoreOpMap != null && _decIgnoreOpMap.exists(_wireId) ? { value : _decIgnoreOpMap[_wireId], ok : true } : { value : (null : stdgo.encoding.gob.Gob.T_decOp), ok : false }), _op:stdgo.encoding.gob.Gob.T_decOp = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _inProgress[_wireId] = (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
            if (_wireId == (_tInterface)) {
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreInterface(_state);
                };
                return (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
            };
            var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>));
            if (_wire == null || (_wire : Dynamic).__nil__) {
                _errorf(("bad data: undefined type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
            } else if (_wire.arrayT != null && ((_wire.arrayT : Dynamic).__nil__ == null || !(_wire.arrayT : Dynamic).__nil__)) {
                var _elemId:stdgo.encoding.gob.Gob.T_typeId = _wire.arrayT.elem;
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, _depth + (1 : stdgo.StdGoTypes.GoInt));
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreArray(_state, (_elemOp : stdgo.encoding.gob.Gob.T_decOp), _wire.arrayT.len);
                };
            } else if (_wire.mapT != null && ((_wire.mapT : Dynamic).__nil__ == null || !(_wire.mapT : Dynamic).__nil__)) {
                var _keyId:stdgo.encoding.gob.Gob.T_typeId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).mapT.key;
                var _elemId:stdgo.encoding.gob.Gob.T_typeId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).mapT.elem;
                var _keyOp = _dec._decIgnoreOpFor(_keyId, _inProgress, _depth + (1 : stdgo.StdGoTypes.GoInt));
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, _depth + (1 : stdgo.StdGoTypes.GoInt));
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreMap(_state, (_keyOp : stdgo.encoding.gob.Gob.T_decOp), (_elemOp : stdgo.encoding.gob.Gob.T_decOp));
                };
            } else if (_wire.sliceT != null && ((_wire.sliceT : Dynamic).__nil__ == null || !(_wire.sliceT : Dynamic).__nil__)) {
                var _elemId:stdgo.encoding.gob.Gob.T_typeId = _wire.sliceT.elem;
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, _depth + (1 : stdgo.StdGoTypes.GoInt));
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreSlice(_state, (_elemOp : stdgo.encoding.gob.Gob.T_decOp));
                };
            } else if (_wire.structT != null && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__)) {
                var __tmp__ = _dec._getIgnoreEnginePtr(_wireId), _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _error_(_err);
                };
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreStruct((_enginePtr : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>));
                };
            } else if (_wire.gobEncoderT != null && ((_wire.gobEncoderT : Dynamic).__nil__ == null || !(_wire.gobEncoderT : Dynamic).__nil__) || _wire.binaryMarshalerT != null && ((_wire.binaryMarshalerT : Dynamic).__nil__ == null || !(_wire.binaryMarshalerT : Dynamic).__nil__) || _wire.textMarshalerT != null && ((_wire.textMarshalerT : Dynamic).__nil__ == null || !(_wire.textMarshalerT : Dynamic).__nil__)) {
                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreGobDecoder(_state);
                };
            };
        };
        if (_op == null) {
            _errorf(("bad data: ignore can\'t handle type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
        };
        return (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
    }
    /**
        // decOpFor returns the decoding op for the base type under rt and
        // the indirection count to reach it.
    **/
    @:keep
    static public function _decOpFor( _dec:stdgo.StdGoTypes.Ref<Decoder>, _wireId:T_typeId, _rt:stdgo.reflect.Reflect.Type, _name:stdgo.GoString, _inProgress:stdgo.GoMap<stdgo.reflect.Reflect.Type, stdgo.StdGoTypes.Ref<T_decOp>>):stdgo.StdGoTypes.Ref<T_decOp> {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _ut = _userType(_rt);
        if (_ut._externalDec != ((0 : stdgo.StdGoTypes.GoInt))) {
            return _dec._gobDecodeOpFor(_ut);
        };
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>));
            if (_opPtr != null && ((_opPtr : Dynamic).__nil__ == null || !(_opPtr : Dynamic).__nil__)) {
                return _opPtr;
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut._base;
        var _op:T_decOp = (null : stdgo.encoding.gob.Gob.T_decOp);
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        if ((_k : stdgo.StdGoTypes.GoInt) < (_decOpTable.length)) {
            _op = _decOpTable[(_k : stdgo.StdGoTypes.GoInt)];
        };
        if (_op == null) {
            _inProgress[_rt] = (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t.kind();
                            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                                _name = ("element of " : stdgo.GoString) + _name?.__copy__()?.__copy__();
                                var _elemId:stdgo.encoding.gob.Gob.T_typeId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).arrayT.elem;
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl:stdgo.Error = _overflow(_name?.__copy__());
                                var _helper:stdgo.encoding.gob.Gob.T_decHelper = (_decArrayHelper[_t.elem().kind()] ?? (null : stdgo.encoding.gob.Gob.T_decHelper));
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                    _state._dec._decodeArray(_state, _value?.__copy__(), (_elemOp : stdgo.encoding.gob.Gob.T_decOp), _t.len(), _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                                var _keyId:stdgo.encoding.gob.Gob.T_typeId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).mapT.key;
                                var _elemId:stdgo.encoding.gob.Gob.T_typeId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).mapT.elem;
                                var _keyOp = _dec._decOpFor(_keyId, _t.key(), ("key of " : stdgo.GoString) + _name?.__copy__()?.__copy__(), _inProgress);
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), ("element of " : stdgo.GoString) + _name?.__copy__()?.__copy__(), _inProgress);
                                var _ovfl:stdgo.Error = _overflow(_name?.__copy__());
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                    _state._dec._decodeMap(_t, _state, _value?.__copy__(), (_keyOp : stdgo.encoding.gob.Gob.T_decOp), (_elemOp : stdgo.encoding.gob.Gob.T_decOp), _ovfl);
                                };
                                break;
                            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                _name = ("element of " : stdgo.GoString) + _name?.__copy__()?.__copy__();
                                if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                    _op = _decUint8Slice;
                                    break;
                                };
                                var _elemId:T_typeId = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId);
                                {
                                    var _tt:stdgo.encoding.gob.Gob.T_gobType = _builtinIdToType(_wireId);
                                    if (_tt != null) {
                                        _elemId = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.StdGoTypes.Ref<T_sliceType>)) : stdgo.StdGoTypes.Ref<T_sliceType>).elem;
                                    } else {
                                        _elemId = (_dec._wireType[_wireId] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_wireType>)).sliceT.elem;
                                    };
                                };
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl:stdgo.Error = _overflow(_name?.__copy__());
                                var _helper:stdgo.encoding.gob.Gob.T_decHelper = (_decSliceHelper[_t.elem().kind()] ?? (null : stdgo.encoding.gob.Gob.T_decHelper));
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                    _state._dec._decodeSlice(_state, _value?.__copy__(), (_elemOp : stdgo.encoding.gob.Gob.T_decOp), _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                                var _ut = _userType(_typ);
                                var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut), _enginePtr:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _error_(_err);
                                };
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                    _dec._decodeStruct((_enginePtr : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decEngine>), _value?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                                _op = function(_i:stdgo.StdGoTypes.Ref<T_decInstr>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                    _state._dec._decodeInterface(_t, _state, _value?.__copy__());
                                };
                                break;
                            };
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            _errorf(("decode can\'t handle type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
        };
        return (stdgo.Go.setRef(_op) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decOp>);
    }
    /**
        // ignoreGobDecoder discards the data for a GobDecoder value with no destination.
    **/
    @:keep
    static public function _ignoreGobDecoder( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _bn:stdgo.StdGoTypes.GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
    /**
        // decodeGobDecoder decodes something implementing the GobDecoder interface.
        // The data is encoded as a byte slice.
    **/
    @:keep
    static public function _decodeGobDecoder( _dec:stdgo.StdGoTypes.Ref<Decoder>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _b = _state._b.bytes();
        if ((_b.length) < _n) {
            _errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_b.length)));
        };
        _b = (_b.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _state._b.drop(_n);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _ut._externalDec;
            if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : GobDecoder)) : GobDecoder).gobDecode(_b);
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary(_b);
            } else if (__value__ == ((3 : stdgo.StdGoTypes.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo.encoding.Encoding.TextUnmarshaler)) : stdgo.encoding.Encoding.TextUnmarshaler).unmarshalText(_b);
            };
        };
        if (_err != null) {
            _error_(_err);
        };
    }
    /**
        // ignoreInterface discards the data for an interface value with no destination.
    **/
    @:keep
    static public function _ignoreInterface( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("bad interface encoding: name too large for buffer" : stdgo.GoString));
        };
        var _bn:stdgo.StdGoTypes.GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(("invalid interface value length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
        var _id:stdgo.encoding.gob.Gob.T_typeId = _dec._decodeTypeSequence(true);
        if (_id < (0 : stdgo.encoding.gob.Gob.T_typeId)) {
            _error_(_dec._err);
        };
        {
            var __tmp__ = _state._getLength();
            _n = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _errorf(("bad interface encoding: data length too large for buffer" : stdgo.GoString));
        };
        _state._b.drop(_n);
    }
    /**
        // decodeInterface decodes an interface value and stores it in value.
        // Interfaces are encoded as the name of a concrete type followed by a value.
        // If the name is empty, the value is nil and no value is sent.
    **/
    @:keep
    static public function _decodeInterface( _dec:stdgo.StdGoTypes.Ref<Decoder>, _ityp:stdgo.reflect.Reflect.Type, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _nr:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        if (_nr > (2147483648i64 : stdgo.StdGoTypes.GoUInt64)) {
            _errorf(("invalid type name length %d" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        if (_nr > (_state._b.len() : stdgo.StdGoTypes.GoUInt64)) {
            _errorf(("invalid type name length %d: exceeds input size" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        var _n:stdgo.StdGoTypes.GoInt = (_nr : stdgo.StdGoTypes.GoInt);
        var _name = (_state._b.bytes().__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _state._b.drop(_n);
        if ((_name.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            _value.setZero();
            return;
        };
        if ((_name.length) > (1024 : stdgo.StdGoTypes.GoInt)) {
            _errorf(("name too long (%d bytes): %.20q..." : stdgo.GoString), stdgo.Go.toInterface((_name.length)), stdgo.Go.toInterface(_name));
        };
        var __tmp__ = _nameToConcreteType.load(stdgo.Go.toInterface((_name : stdgo.GoString))), _typi:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("name not registered for interface: %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _typ:stdgo.reflect.Reflect.Type = (stdgo.Go.typeAssert((_typi : stdgo.reflect.Reflect.Type)) : stdgo.reflect.Reflect.Type);
        var _concreteId:stdgo.encoding.gob.Gob.T_typeId = _dec._decodeTypeSequence(true);
        if (_concreteId < (0 : stdgo.encoding.gob.Gob.T_typeId)) {
            _error_(_dec._err);
        };
        _state._decodeUint();
        var _v:stdgo.reflect.Reflect.Value = _allocValue(_typ)?.__copy__();
        _dec._decodeValue(_concreteId, _v?.__copy__());
        if (_dec._err != null) {
            _error_(_dec._err);
        };
        if (!_typ.assignableTo(_ityp)) {
            _errorf(("%s is not assignable to type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_ityp));
        };
        _value.set(_v?.__copy__());
    }
    /**
        // ignoreSlice skips over the data for a slice value with no destination.
    **/
    @:keep
    static public function _ignoreSlice( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        _dec._ignoreArrayHelper(_state, _elemOp, (_state._decodeUint() : stdgo.StdGoTypes.GoInt));
    }
    /**
        // decodeSlice decodes a slice and stores it in value.
        // Slices are encoded as an unsigned length followed by the elements.
    **/
    @:keep
    static public function _decodeSlice( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _u:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
        var _typ:stdgo.reflect.Reflect.Type = _value.type();
        var _size:stdgo.StdGoTypes.GoUInt64 = (_typ.elem().size() : stdgo.StdGoTypes.GoUInt64);
        var _nBytes:stdgo.StdGoTypes.GoUInt64 = _u * _size;
        var _n:stdgo.StdGoTypes.GoInt = (_u : stdgo.StdGoTypes.GoInt);
        if ((((_n < (0 : stdgo.StdGoTypes.GoInt)) || ((_n : stdgo.StdGoTypes.GoUInt64) != _u)) || (_nBytes > (1073741824i64 : stdgo.StdGoTypes.GoUInt64))) || ((_size > (0i64 : stdgo.StdGoTypes.GoUInt64)) && ((_nBytes / _size) != _u))) {
            _errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
        };
        if (_value.cap() < _n) {
            var _safe:stdgo.StdGoTypes.GoInt = internal.saferio.Saferio.sliceCap(stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.ptrTo(_typ.elem())).interface_(), (_n : stdgo.StdGoTypes.GoUInt64));
            if (_safe < (0 : stdgo.StdGoTypes.GoInt)) {
                _errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
            };
            _value.set(stdgo.reflect.Reflect.makeSlice(_typ, _safe, _safe)?.__copy__());
        } else {
            _value.setLen(_n);
        };
        _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _n, _ovfl, _helper);
    }
    /**
        // ignoreMap discards the data for a map value with no destination.
    **/
    @:keep
    static public function _ignoreMap( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _keyOp:T_decOp, _elemOp:T_decOp):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _n:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
        var _keyInstr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_keyOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), stdgo.errors.Errors.new_(("no error" : stdgo.GoString))) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_elemOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), stdgo.errors.Errors.new_(("no error" : stdgo.GoString))) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _keyOp(_keyInstr, _state, _noValue?.__copy__());
                _elemOp(_elemInstr, _state, _noValue?.__copy__());
            });
        };
    }
    /**
        // ignoreArray discards the data for an array value with no destination.
    **/
    @:keep
    static public function _ignoreArray( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            var _n:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
            if (_n != ((_length : stdgo.StdGoTypes.GoUInt64))) {
                _errorf(("length mismatch in ignoreArray" : stdgo.GoString));
            };
        };
        _dec._ignoreArrayHelper(_state, _elemOp, _length);
    }
    /**
        // ignoreArrayHelper does the work for discarding arrays and slices.
    **/
    @:keep
    static public function _ignoreArrayHelper( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_elemOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), stdgo.errors.Errors.new_(("no error" : stdgo.GoString))) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                _elemOp(_instr, _state, _noValue?.__copy__());
            });
        };
    }
    /**
        // decodeMap decodes a map and stores it in value.
        // Maps are encoded as a length followed by key:value pairs.
        // Because the internals of maps are not visible to us, we must
        // use reflection rather than pointer magic.
    **/
    @:keep
    static public function _decodeMap( _dec:stdgo.StdGoTypes.Ref<Decoder>, _mtyp:stdgo.reflect.Reflect.Type, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:stdgo.Error):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _n:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
        if (_value.isNil()) {
            _value.set(stdgo.reflect.Reflect.makeMapWithSize(_mtyp, _n)?.__copy__());
        };
        var _keyIsPtr:Bool = _mtyp.key().kind() == ((22u32 : stdgo.reflect.Reflect.Kind));
        var _elemIsPtr:Bool = _mtyp.elem().kind() == ((22u32 : stdgo.reflect.Reflect.Kind));
        var _keyInstr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_keyOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_elemOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        var _keyP:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_mtyp.key())?.__copy__();
        var _elemP:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_mtyp.elem())?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                var _key:stdgo.reflect.Reflect.Value = _decodeIntoValue(_state, _keyOp, _keyIsPtr, _keyP.elem()?.__copy__(), _keyInstr)?.__copy__();
                var _elem:stdgo.reflect.Reflect.Value = _decodeIntoValue(_state, _elemOp, _elemIsPtr, _elemP.elem()?.__copy__(), _elemInstr)?.__copy__();
                _value.setMapIndex(_key?.__copy__(), _elem?.__copy__());
                _keyP.elem().setZero();
                _elemP.elem().setZero();
            });
        };
    }
    /**
        // decodeArray decodes an array and stores it in value.
        // The length is an unsigned integer preceding the elements. Even though the length is redundant
        // (it's part of the type), it's a useful check and is included in the encoding.
    **/
    @:keep
    static public function _decodeArray( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            var _n:stdgo.StdGoTypes.GoUInt64 = _state._decodeUint();
            if (_n != ((_length : stdgo.StdGoTypes.GoUInt64))) {
                _errorf(("length mismatch in decodeArray" : stdgo.GoString));
            };
        };
        _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _length, _ovfl, _helper);
    }
    /**
        // decodeArrayHelper does the work for decoding arrays and slices.
    **/
    @:keep
    static public function _decodeArrayHelper( _dec:stdgo.StdGoTypes.Ref<Decoder>, _state:stdgo.StdGoTypes.Ref<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:stdgo.StdGoTypes.GoInt, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if ((_helper != null) && _helper(_state, _value?.__copy__(), _length, _ovfl)) {
            return;
        };
        var _instr = (stdgo.Go.setRef((new stdgo.encoding.gob.Gob.T_decInstr(_elemOp, (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>), _ovfl) : stdgo.encoding.gob.Gob.T_decInstr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
        var _isPtr:Bool = _value.type().elem().kind() == ((22u32 : stdgo.reflect.Reflect.Kind));
        var _ln:stdgo.StdGoTypes.GoInt = _value.len();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _errorf(("decoding array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if (_i >= _ln) {
                    _value.grow((1 : stdgo.StdGoTypes.GoInt));
                    var _cp:stdgo.StdGoTypes.GoInt = _value.cap();
                    if (_cp > _length) {
                        _cp = _length;
                    };
                    _value.setLen(_cp);
                    _ln = _cp;
                };
                var _v:stdgo.reflect.Reflect.Value = _value.index(_i)?.__copy__();
                if (_isPtr) {
                    _v = _decAlloc(_v?.__copy__())?.__copy__();
                };
                _elemOp(_instr, _state, _v?.__copy__());
            });
        };
    }
    /**
        // ignoreSingle discards the data for a top-level non-struct value with no
        // destination. It's used when calling Decode with a nil value.
    **/
    @:keep
    static public function _ignoreSingle( _dec:stdgo.StdGoTypes.Ref<Decoder>, _engine:stdgo.StdGoTypes.Ref<T_decEngine>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (0 : stdgo.StdGoTypes.GoInt);
            var _delta:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
            if (_delta != ((0 : stdgo.StdGoTypes.GoInt))) {
                _errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            _instr._op(_instr, _state, _noValue?.__copy__());
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // ignoreStruct discards the data for a struct with no destination.
    **/
    @:keep
    static public function _ignoreStruct( _dec:stdgo.StdGoTypes.Ref<Decoder>, _engine:stdgo.StdGoTypes.Ref<T_decEngine>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
            while (_state._b.len() > (0 : stdgo.StdGoTypes.GoInt)) {
                var _delta:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
                if (_delta < (0 : stdgo.StdGoTypes.GoInt)) {
                    _errorf(("ignore decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.StdGoTypes.GoInt))) {
                    break;
                };
                var _fieldnum:stdgo.StdGoTypes.GoInt = _state._fieldnum + _delta;
                if (_fieldnum >= (_engine._instr.length)) {
                    _error_(_errRange);
                };
                var _instr = (stdgo.Go.setRef(_engine._instr[(_fieldnum : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
                _instr._op(_instr, _state, _noValue?.__copy__());
                _state._fieldnum = _fieldnum;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // decodeStruct decodes a top-level struct and stores it in value.
        // Indir is for the value, not the type. At the time of the call it may
        // differ from ut.indir, which was computed when the engine was built.
        // This state cannot arise for decodeSingle, which is called directly
        // from the user's value, not from the innards of an engine.
    **/
    @:keep
    static public function _decodeStruct( _dec:stdgo.StdGoTypes.Ref<Decoder>, _engine:stdgo.StdGoTypes.Ref<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
            while (_state._b.len() > (0 : stdgo.StdGoTypes.GoInt)) {
                var _delta:stdgo.StdGoTypes.GoInt = (_state._decodeUint() : stdgo.StdGoTypes.GoInt);
                if (_delta < (0 : stdgo.StdGoTypes.GoInt)) {
                    _errorf(("decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.StdGoTypes.GoInt))) {
                    break;
                };
                if (_state._fieldnum >= (_engine._instr.length - _delta)) {
                    _error_(_errRange);
                };
                var _fieldnum:stdgo.StdGoTypes.GoInt = _state._fieldnum + _delta;
                var _instr = (stdgo.Go.setRef(_engine._instr[(_fieldnum : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
                var _field:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
                if (_instr._index != null) {
                    _field = _value.fieldByIndex(_instr._index)?.__copy__();
                    if (_field.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                        _field = _decAlloc(_field?.__copy__())?.__copy__();
                    };
                };
                _instr._op(_instr, _state, _field?.__copy__());
                _state._fieldnum = _fieldnum;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // decodeSingle decodes a top-level value that is not a struct and stores it in value.
        // Such values are preceded by a zero, making them have the memory layout of a
        // struct field (although with an illegal field number).
    **/
    @:keep
    static public function _decodeSingle( _dec:stdgo.StdGoTypes.Ref<Decoder>, _engine:stdgo.StdGoTypes.Ref<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (0 : stdgo.StdGoTypes.GoInt);
            if (_state._decodeUint() != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
                _errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decInstr>);
            _instr._op(_instr, _state, _value?.__copy__());
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _freeDecoderState( _dec:stdgo.StdGoTypes.Ref<Decoder>, _d:stdgo.StdGoTypes.Ref<T_decoderState>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        _d._next = _dec._freeList;
        _dec._freeList = _d;
    }
    /**
        // We pass the bytes.Buffer separately for easier testing of the infrastructure
        // without requiring a full Decoder.
    **/
    @:keep
    static public function _newDecoderState( _dec:stdgo.StdGoTypes.Ref<Decoder>, _buf:stdgo.StdGoTypes.Ref<T_decBuffer>):stdgo.StdGoTypes.Ref<T_decoderState> {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _d = _dec._freeList;
        if (_d == null || (_d : Dynamic).__nil__) {
            _d = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_decoderState)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_decoderState>);
            _d._dec = _dec;
        } else {
            _dec._freeList = _d._next;
        };
        _d._b = _buf;
        return _d;
    }
}
class T_encoderState_asInterface {
    /**
        // update emits a field number and updates the state to record its value for delta encoding.
        // If the instruction pointer is nil, it does nothing
    **/
    @:keep
    public dynamic function _update(_instr:stdgo.StdGoTypes.Ref<T_encInstr>):Void __self__.value._update(_instr);
    /**
        // encodeInt writes an encoded signed integer to state.w.
        // The low bit of the encoding says whether to bit complement the (other bits of the)
        // uint to recover the int.
    **/
    @:keep
    public dynamic function _encodeInt(_i:stdgo.StdGoTypes.GoInt64):Void __self__.value._encodeInt(_i);
    /**
        // encodeUint writes an encoded unsigned integer to state.b.
    **/
    @:keep
    public dynamic function _encodeUint(_x:stdgo.StdGoTypes.GoUInt64):Void __self__.value._encodeUint(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoderState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_encoderState_asInterface) class T_encoderState_static_extension {
    /**
        // update emits a field number and updates the state to record its value for delta encoding.
        // If the instruction pointer is nil, it does nothing
    **/
    @:keep
    static public function _update( _state:stdgo.StdGoTypes.Ref<T_encoderState>, _instr:stdgo.StdGoTypes.Ref<T_encInstr>):Void {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_encoderState> = _state;
        if (_instr != null && ((_instr : Dynamic).__nil__ == null || !(_instr : Dynamic).__nil__)) {
            _state._encodeUint((_instr._field - _state._fieldnum : stdgo.StdGoTypes.GoUInt64));
            _state._fieldnum = _instr._field;
        };
    }
    /**
        // encodeInt writes an encoded signed integer to state.w.
        // The low bit of the encoding says whether to bit complement the (other bits of the)
        // uint to recover the int.
    **/
    @:keep
    static public function _encodeInt( _state:stdgo.StdGoTypes.Ref<T_encoderState>, _i:stdgo.StdGoTypes.GoInt64):Void {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_encoderState> = _state;
        var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        if (_i < (0i64 : stdgo.StdGoTypes.GoInt64)) {
            _x = ((-1 ^ _i) << (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt64) | (1i64 : stdgo.StdGoTypes.GoUInt64);
        } else {
            _x = (_i << (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt64);
        };
        _state._encodeUint(_x);
    }
    /**
        // encodeUint writes an encoded unsigned integer to state.b.
    **/
    @:keep
    static public function _encodeUint( _state:stdgo.StdGoTypes.Ref<T_encoderState>, _x:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _state:stdgo.StdGoTypes.Ref<T_encoderState> = _state;
        if (_x <= (127i64 : stdgo.StdGoTypes.GoUInt64)) {
            _state._b._writeByte((_x : stdgo.StdGoTypes.GoUInt8));
            return;
        };
        stdgo.encoding.binary.Binary.bigEndian.putUint64((_state._buf.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
        var _bc:stdgo.StdGoTypes.GoInt = stdgo.math.bits.Bits.leadingZeros64(_x) >> (3i64 : stdgo.StdGoTypes.GoUInt64);
        _state._buf[(_bc : stdgo.StdGoTypes.GoInt)] = (_bc - (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt8);
        _state._b.write((_state._buf.__slice__(_bc, (9 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
    }
}
class T_encBuffer_asInterface {
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.bytes();
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):Void __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _writeByte(_c:stdgo.StdGoTypes.GoByte):Void __self__.value._writeByte(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encBuffer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_encBuffer_asInterface) class T_encBuffer_static_extension {
    @:keep
    static public function reset( _e:stdgo.StdGoTypes.Ref<T_encBuffer>):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        if ((_e._data.length) >= (1073741824 : stdgo.StdGoTypes.GoInt)) {
            _e._data = (_e._scratch.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        } else {
            _e._data = (_e._data.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
    }
    @:keep
    static public function bytes( _e:stdgo.StdGoTypes.Ref<T_encBuffer>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        return _e._data;
    }
    @:keep
    static public function len( _e:stdgo.StdGoTypes.Ref<T_encBuffer>):stdgo.StdGoTypes.GoInt {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        return (_e._data.length);
    }
    @:keep
    static public function writeString( _e:stdgo.StdGoTypes.Ref<T_encBuffer>, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        _e._data = (_e._data.__append__(..._s.__toArray__()));
    }
    @:keep
    static public function write( _e:stdgo.StdGoTypes.Ref<T_encBuffer>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        _e._data = (_e._data.__append__(..._p.__toArray__()));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writeByte( _e:stdgo.StdGoTypes.Ref<T_encBuffer>, _c:stdgo.StdGoTypes.GoByte):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encBuffer> = _e;
        _e._data = (_e._data.__append__(_c));
    }
}
class Encoder_asInterface {
    /**
        // EncodeValue transmits the data item represented by the reflection value,
        // guaranteeing that all necessary type information has been transmitted first.
        // Passing a nil pointer to EncodeValue will panic, as they cannot be transmitted by gob.
    **/
    @:keep
    public dynamic function encodeValue(_value:stdgo.reflect.Reflect.Value):stdgo.Error return __self__.value.encodeValue(_value);
    /**
        // sendTypeId sends the id, which must have already been defined.
    **/
    @:keep
    public dynamic function _sendTypeId(_state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void __self__.value._sendTypeId(_state, _ut);
    /**
        // sendTypeDescriptor makes sure the remote side knows about this type.
        // It will send a descriptor if this is the first time the type has been
        // sent.
    **/
    @:keep
    public dynamic function _sendTypeDescriptor(_w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void __self__.value._sendTypeDescriptor(_w, _state, _ut);
    /**
        // Encode transmits the data item represented by the empty interface value,
        // guaranteeing that all necessary type information has been transmitted first.
        // Passing a nil pointer to Encoder will panic, as they cannot be transmitted by gob.
    **/
    @:keep
    public dynamic function encode(_e:stdgo.StdGoTypes.AnyInterface):stdgo.Error return __self__.value.encode(_e);
    /**
        // sendType sends the type info to the other side, if necessary.
    **/
    @:keep
    public dynamic function _sendType(_w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _origt:stdgo.reflect.Reflect.Type):Bool return __self__.value._sendType(_w, _state, _origt);
    /**
        // sendActualType sends the requested type, without further investigation, unless
        // it's been sent before.
    **/
    @:keep
    public dynamic function _sendActualType(_w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _actual:stdgo.reflect.Reflect.Type):Bool return __self__.value._sendActualType(_w, _state, _ut, _actual);
    /**
        // writeMessage sends the data item preceded by an unsigned count of its length.
    **/
    @:keep
    public dynamic function _writeMessage(_w:stdgo.io.Io.Writer, _b:stdgo.StdGoTypes.Ref<T_encBuffer>):Void __self__.value._writeMessage(_w, _b);
    @:keep
    public dynamic function _setError(_err:stdgo.Error):Void __self__.value._setError(_err);
    /**
        // popWriter pops the innermost writer.
    **/
    @:keep
    public dynamic function _popWriter():Void __self__.value._popWriter();
    /**
        // pushWriter adds a writer to the encoder.
    **/
    @:keep
    public dynamic function _pushWriter(_w:stdgo.io.Io.Writer):Void __self__.value._pushWriter(_w);
    /**
        // writer() returns the innermost writer the encoder is using
    **/
    @:keep
    public dynamic function _writer():stdgo.io.Io.Writer return __self__.value._writer();
    @:keep
    public dynamic function _encode(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void __self__.value._encode(_b, _value, _ut);
    /**
        // encodeGobEncoder encodes a value that implements the GobEncoder interface.
        // The data is sent as a byte array.
    **/
    @:keep
    public dynamic function _encodeGobEncoder(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _v:stdgo.reflect.Reflect.Value):Void __self__.value._encodeGobEncoder(_b, _ut, _v);
    /**
        // encodeInterface encodes the interface value iv.
        // To send an interface, we send a string identifying the concrete type, followed
        // by the type identifier (which might require defining that type right now), followed
        // by the concrete value. A nil value gets sent as the empty string for the name,
        // followed by no value.
    **/
    @:keep
    public dynamic function _encodeInterface(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _iv:stdgo.reflect.Reflect.Value):Void __self__.value._encodeInterface(_b, _iv);
    /**
        // encodeMap encodes a map as unsigned count followed by key:value pairs.
    **/
    @:keep
    public dynamic function _encodeMap(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _mv:stdgo.reflect.Reflect.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:stdgo.StdGoTypes.GoInt, _elemIndir:stdgo.StdGoTypes.GoInt):Void __self__.value._encodeMap(_b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    /**
        // encodeArray encodes an array.
    **/
    @:keep
    public dynamic function _encodeArray(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _op:T_encOp, _elemIndir:stdgo.StdGoTypes.GoInt, _length:stdgo.StdGoTypes.GoInt, _helper:T_encHelper):Void __self__.value._encodeArray(_b, _value, _op, _elemIndir, _length, _helper);
    /**
        // encodeStruct encodes a single struct value.
    **/
    @:keep
    public dynamic function _encodeStruct(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _engine:stdgo.StdGoTypes.Ref<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._encodeStruct(_b, _engine, _value);
    /**
        // encodeSingle encodes a single top-level non-struct value.
    **/
    @:keep
    public dynamic function _encodeSingle(_b:stdgo.StdGoTypes.Ref<T_encBuffer>, _engine:stdgo.StdGoTypes.Ref<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void __self__.value._encodeSingle(_b, _engine, _value);
    @:keep
    public dynamic function _freeEncoderState(_e:stdgo.StdGoTypes.Ref<T_encoderState>):Void __self__.value._freeEncoderState(_e);
    @:keep
    public dynamic function _newEncoderState(_b:stdgo.StdGoTypes.Ref<T_encBuffer>):stdgo.StdGoTypes.Ref<T_encoderState> return __self__.value._newEncoderState(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Encoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Encoder_asInterface) class Encoder_static_extension {
    /**
        // EncodeValue transmits the data item represented by the reflection value,
        // guaranteeing that all necessary type information has been transmitted first.
        // Passing a nil pointer to EncodeValue will panic, as they cannot be transmitted by gob.
    **/
    @:keep
    static public function encodeValue( _enc:stdgo.StdGoTypes.Ref<Encoder>, _value:stdgo.reflect.Reflect.Value):stdgo.Error {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        if (_value.kind() == ((0u32 : stdgo.reflect.Reflect.Kind))) {
            return stdgo.errors.Errors.new_(("gob: cannot encode nil value" : stdgo.GoString));
        };
        try {
            if ((_value.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _value.isNil()) {
                throw stdgo.Go.toInterface(("gob: cannot encode nil pointer of type " : stdgo.GoString) + (_value.type().string() : stdgo.GoString)?.__copy__());
            };
            _enc._mutex.lock();
            __deferstack__.unshift(() -> _enc._mutex.unlock());
            _enc._w = (_enc._w.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.io.Io.Writer>);
            var __tmp__ = _validUserType(_value.type()), _ut:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _enc._err = (null : stdgo.Error);
            _enc._byteBuf.reset();
            _enc._byteBuf.write(_spaceForLength);
            var _state = _enc._newEncoderState((stdgo.Go.setRef(_enc._byteBuf) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encBuffer>));
            _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
            _enc._sendTypeId(_state, _ut);
            if (_enc._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _enc._err;
                };
            };
            _enc._encode(_state._b, _value?.__copy__(), _ut);
            if (_enc._err == null) {
                _enc._writeMessage(_enc._writer(), _state._b);
            };
            _enc._freeEncoderState(_state);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _enc._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    /**
        // sendTypeId sends the id, which must have already been defined.
    **/
    @:keep
    static public function _sendTypeId( _enc:stdgo.StdGoTypes.Ref<Encoder>, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _state._encodeInt((_enc._sent[_ut._base] ?? ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId) : stdgo.StdGoTypes.GoInt64));
    }
    /**
        // sendTypeDescriptor makes sure the remote side knows about this type.
        // It will send a descriptor if this is the first time the type has been
        // sent.
    **/
    @:keep
    static public function _sendTypeDescriptor( _enc:stdgo.StdGoTypes.Ref<Encoder>, _w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            _rt = _ut._user;
        };
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.exists(_rt) ? { value : _enc._sent[_rt], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId), ok : false }), __0:stdgo.encoding.gob.Gob.T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (!_alreadySent) {
                var _sent:Bool = _enc._sendType(_w, _state, _rt);
                if (_enc._err != null) {
                    return;
                };
                if (!_sent) {
                    var __tmp__ = _getTypeInfo(_ut), _info:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _enc._setError(_err);
                        return;
                    };
                    _enc._sent[_rt] = _info._id;
                };
            };
        };
    }
    /**
        // Encode transmits the data item represented by the empty interface value,
        // guaranteeing that all necessary type information has been transmitted first.
        // Passing a nil pointer to Encoder will panic, as they cannot be transmitted by gob.
    **/
    @:keep
    static public function encode( _enc:stdgo.StdGoTypes.Ref<Encoder>, _e:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        return _enc.encodeValue(stdgo.reflect.Reflect.valueOf(_e)?.__copy__());
    }
    /**
        // sendType sends the type info to the other side, if necessary.
    **/
    @:keep
    static public function _sendType( _enc:stdgo.StdGoTypes.Ref<Encoder>, _w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _origt:stdgo.reflect.Reflect.Type):Bool {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _sent:Bool = false;
        var _ut = _userType(_origt);
        if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
            return _enc._sendActualType(_w, _state, _ut, _ut._base);
        };
        {
            var _rt:stdgo.reflect.Reflect.Type = _ut._base;
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _rt.kind();
                        if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                            if (_rt.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                return _sent;
                            };
                            break;
                            break;
                        } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((18u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo.reflect.Reflect.Kind))) {
                            return _sent;
                            break;
                        } else {
                            return _sent;
                        };
                    };
                    break;
                };
            };
        };
        return _enc._sendActualType(_w, _state, _ut, _ut._base);
    }
    /**
        // sendActualType sends the requested type, without further investigation, unless
        // it's been sent before.
    **/
    @:keep
    static public function _sendActualType( _enc:stdgo.StdGoTypes.Ref<Encoder>, _w:stdgo.io.Io.Writer, _state:stdgo.StdGoTypes.Ref<T_encoderState>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _actual:stdgo.reflect.Reflect.Type):Bool {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _sent:Bool = false;
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.exists(_actual) ? { value : _enc._sent[_actual], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.encoding.gob.Gob.T_typeId), ok : false }), __0:stdgo.encoding.gob.Gob.T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (_alreadySent) {
                return false;
            };
        };
        var __tmp__ = _getTypeInfo(_ut), _info:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _enc._setError(_err);
            return _sent;
        };
        _state._encodeInt(-(_info._id : stdgo.StdGoTypes.GoInt64));
        _enc._encode(_state._b, stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_info._wire)))?.__copy__(), _wireTypeUserInfo);
        _enc._writeMessage(_w, _state._b);
        if (_enc._err != null) {
            return _sent;
        };
        _enc._sent[_ut._base] = _info._id;
        if (!((_ut._user.string() : String) == (_ut._base.string() : String))) {
            _enc._sent[_ut._user] = _info._id;
        };
        {
            var _st:stdgo.reflect.Reflect.Type = _actual;
            {
                final __value__ = _st.kind();
                if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _st.numField(), _i++, {
                            if (_isExported(_st.field(_i).name?.__copy__())) {
                                _enc._sendType(_w, _state, _st.field(_i).type);
                            };
                        });
                    };
                } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                    _enc._sendType(_w, _state, _st.elem());
                } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                    _enc._sendType(_w, _state, _st.key());
                    _enc._sendType(_w, _state, _st.elem());
                };
            };
        };
        return true;
    }
    /**
        // writeMessage sends the data item preceded by an unsigned count of its length.
    **/
    @:keep
    static public function _writeMessage( _enc:stdgo.StdGoTypes.Ref<Encoder>, _w:stdgo.io.Io.Writer, _b:stdgo.StdGoTypes.Ref<T_encBuffer>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _message = _b.bytes();
        var _messageLen:stdgo.StdGoTypes.GoInt = (_message.length) - (9 : stdgo.StdGoTypes.GoInt);
        if (_messageLen >= (1073741824 : stdgo.StdGoTypes.GoInt)) {
            _enc._setError(stdgo.errors.Errors.new_(("gob: encoder: message too big" : stdgo.GoString)));
            return;
        };
        _enc._countState._b.reset();
        _enc._countState._encodeUint((_messageLen : stdgo.StdGoTypes.GoUInt64));
        var _offset:stdgo.StdGoTypes.GoInt = (9 : stdgo.StdGoTypes.GoInt) - _enc._countState._b.len();
        stdgo.Go.copySlice((_message.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _enc._countState._b.bytes());
        var __tmp__ = _w.write((_message.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b.reset();
        _b.write(_spaceForLength);
        if (_err != null) {
            _enc._setError(_err);
        };
    }
    @:keep
    static public function _setError( _enc:stdgo.StdGoTypes.Ref<Encoder>, _err:stdgo.Error):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        if (_enc._err == null) {
            _enc._err = _err;
        };
    }
    /**
        // popWriter pops the innermost writer.
    **/
    @:keep
    static public function _popWriter( _enc:stdgo.StdGoTypes.Ref<Encoder>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _enc._w = (_enc._w.__slice__((0 : stdgo.StdGoTypes.GoInt), (_enc._w.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.io.Io.Writer>);
    }
    /**
        // pushWriter adds a writer to the encoder.
    **/
    @:keep
    static public function _pushWriter( _enc:stdgo.StdGoTypes.Ref<Encoder>, _w:stdgo.io.Io.Writer):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _enc._w = (_enc._w.__append__(_w));
    }
    /**
        // writer() returns the innermost writer the encoder is using
    **/
    @:keep
    static public function _writer( _enc:stdgo.StdGoTypes.Ref<Encoder>):stdgo.io.Io.Writer {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        return _enc._w[((_enc._w.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
    }
    @:keep
    static public function _encode( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef(_enc._err) : stdgo.StdGoTypes.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _catchError(_a0));
            };
            var _engine = _getEncEngine(_ut, (null : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_typeInfo>, Bool>));
            var _indir:stdgo.StdGoTypes.GoInt = _ut._indir;
            if (_ut._externalEnc != ((0 : stdgo.StdGoTypes.GoInt))) {
                _indir = (_ut._encIndir : stdgo.StdGoTypes.GoInt);
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _indir, _i++, {
                    _value = stdgo.reflect.Reflect.indirect(_value?.__copy__())?.__copy__();
                });
            };
            if ((_ut._externalEnc == (0 : stdgo.StdGoTypes.GoInt)) && (_value.type().kind() == (25u32 : stdgo.reflect.Reflect.Kind))) {
                _enc._encodeStruct(_b, _engine, _value?.__copy__());
            } else {
                _enc._encodeSingle(_b, _engine, _value?.__copy__());
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // encodeGobEncoder encodes a value that implements the GobEncoder interface.
        // The data is sent as a byte array.
    **/
    @:keep
    static public function _encodeGobEncoder( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _ut:stdgo.StdGoTypes.Ref<T_userTypeInfo>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _data:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _ut._externalEnc;
            if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : GobEncoder)) : GobEncoder).gobEncode();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo.encoding.Encoding.BinaryMarshaler)) : stdgo.encoding.Encoding.BinaryMarshaler).marshalBinary();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else if (__value__ == ((3 : stdgo.StdGoTypes.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler).marshalText();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
        };
        if (_err != null) {
            _error_(_err);
        };
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
        _state._encodeUint((_data.length : stdgo.StdGoTypes.GoUInt64));
        _state._b.write(_data);
        _enc._freeEncoderState(_state);
    }
    /**
        // encodeInterface encodes the interface value iv.
        // To send an interface, we send a string identifying the concrete type, followed
        // by the type identifier (which might require defining that type right now), followed
        // by the concrete value. A nil value gets sent as the empty string for the name,
        // followed by no value.
    **/
    @:keep
    static public function _encodeInterface( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _iv:stdgo.reflect.Reflect.Value):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _elem:stdgo.reflect.Reflect.Value = _iv.elem()?.__copy__();
        if ((_elem.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _elem.isNil()) {
            _errorf(("gob: cannot encode nil pointer of type %s inside interface" : stdgo.GoString), stdgo.Go.toInterface(_iv.elem().type()));
        };
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
        _state._sendZero = true;
        if (_iv.isNil()) {
            _state._encodeUint((0i64 : stdgo.StdGoTypes.GoUInt64));
            return;
        };
        var _ut = _userType(_iv.elem().type());
        var __tmp__ = _concreteTypeToName.load(stdgo.Go.toInterface(_ut._base)), _namei:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(("type not registered for interface: %s" : stdgo.GoString), stdgo.Go.toInterface(_ut._base));
        };
        var _name:stdgo.GoString = (stdgo.Go.typeAssert((_namei : stdgo.GoString)) : stdgo.GoString)?.__copy__();
        _state._encodeUint((_name.length : stdgo.StdGoTypes.GoUInt64));
        _state._b.writeString(_name?.__copy__());
        _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
        _enc._sendTypeId(_state, _ut);
        _enc._pushWriter(stdgo.Go.asInterface(_b));
        var _data = (stdgo.Go.typeAssert((_encBufferPool.get() : stdgo.StdGoTypes.Ref<T_encBuffer>)) : stdgo.StdGoTypes.Ref<T_encBuffer>);
        _data.write(_spaceForLength);
        _enc._encode(_data, _elem?.__copy__(), _ut);
        if (_enc._err != null) {
            _error_(_enc._err);
        };
        _enc._popWriter();
        _enc._writeMessage(stdgo.Go.asInterface(_b), _data);
        _data.reset();
        _encBufferPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_data)));
        if (_enc._err != null) {
            _error_(_enc._err);
        };
        _enc._freeEncoderState(_state);
    }
    /**
        // encodeMap encodes a map as unsigned count followed by key:value pairs.
    **/
    @:keep
    static public function _encodeMap( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _mv:stdgo.reflect.Reflect.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:stdgo.StdGoTypes.GoInt, _elemIndir:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
        _state._sendZero = true;
        _state._encodeUint((_mv.len() : stdgo.StdGoTypes.GoUInt64));
        var _mi = _mv.mapRange();
        while (_mi.next()) {
            _encodeReflectValue(_state, _mi.key()?.__copy__(), _keyOp, _keyIndir);
            _encodeReflectValue(_state, _mi.value()?.__copy__(), _elemOp, _elemIndir);
        };
        _enc._freeEncoderState(_state);
    }
    /**
        // encodeArray encodes an array.
    **/
    @:keep
    static public function _encodeArray( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _op:T_encOp, _elemIndir:stdgo.StdGoTypes.GoInt, _length:stdgo.StdGoTypes.GoInt, _helper:T_encHelper):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
            _state._sendZero = true;
            _state._encodeUint((_length : stdgo.StdGoTypes.GoUInt64));
            if ((_helper != null) && _helper(_state, _value?.__copy__())) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _length, _i++, {
                    var _elem:stdgo.reflect.Reflect.Value = _value.index(_i)?.__copy__();
                    if (_elemIndir > (0 : stdgo.StdGoTypes.GoInt)) {
                        _elem = _encIndirect(_elem?.__copy__(), _elemIndir)?.__copy__();
                        if (!_valid(_elem?.__copy__())) {
                            _errorf(("encodeArray: nil element" : stdgo.GoString));
                        };
                    };
                    _op(null, _state, _elem?.__copy__());
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // encodeStruct encodes a single struct value.
    **/
    @:keep
    static public function _encodeStruct( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _engine:stdgo.StdGoTypes.Ref<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_valid(_value?.__copy__())) {
                return;
            };
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.StdGoTypes.GoInt);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_engine._instr.length), _i++, {
                    var _instr = (stdgo.Go.setRef(_engine._instr[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
                    if (_i >= _value.numField()) {
                        _instr._op(_instr, _state, (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value));
                        break;
                    };
                    var _field:stdgo.reflect.Reflect.Value = _value.fieldByIndex(_instr._index)?.__copy__();
                    if (_instr._indir > (0 : stdgo.StdGoTypes.GoInt)) {
                        _field = _encIndirect(_field?.__copy__(), _instr._indir)?.__copy__();
                        if (!_valid(_field?.__copy__())) {
                            continue;
                        };
                    };
                    _instr._op(_instr, _state, _field?.__copy__());
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // encodeSingle encodes a single top-level non-struct value.
    **/
    @:keep
    static public function _encodeSingle( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>, _engine:stdgo.StdGoTypes.Ref<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = (0 : stdgo.StdGoTypes.GoInt);
            _state._sendZero = true;
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encInstr>);
            if (_instr._indir > (0 : stdgo.StdGoTypes.GoInt)) {
                _value = _encIndirect(_value?.__copy__(), _instr._indir)?.__copy__();
            };
            if (_valid(_value?.__copy__())) {
                _instr._op(_instr, _state, _value?.__copy__());
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _freeEncoderState( _enc:stdgo.StdGoTypes.Ref<Encoder>, _e:stdgo.StdGoTypes.Ref<T_encoderState>):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _e._next = _enc._freeList;
        _enc._freeList = _e;
    }
    @:keep
    static public function _newEncoderState( _enc:stdgo.StdGoTypes.Ref<Encoder>, _b:stdgo.StdGoTypes.Ref<T_encBuffer>):stdgo.StdGoTypes.Ref<T_encoderState> {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var _e = _enc._freeList;
        if (_e == null || (_e : Dynamic).__nil__) {
            _e = (stdgo.Go.setRef(({} : stdgo.encoding.gob.Gob.T_encoderState)) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.T_encoderState>);
            _e._enc = _enc;
        } else {
            _enc._freeList = _e._next;
        };
        _e._sendZero = false;
        _e._fieldnum = (0 : stdgo.StdGoTypes.GoInt);
        _e._b = _b;
        if ((_b._data.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            _b._data = (_b._scratch.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
        return _e;
    }
}
class T_interfaceIndirectTestT_asInterface {
    @:keep
    public dynamic function f():Bool return __self__.value.f();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_interfaceIndirectTestT>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_interfaceIndirectTestT_asInterface) class T_interfaceIndirectTestT_static_extension {
    @:keep
    static public function f( _this:stdgo.StdGoTypes.Ref<T_interfaceIndirectTestT>):Bool {
        @:recv var _this:stdgo.StdGoTypes.Ref<T_interfaceIndirectTestT> = _this;
        return true;
    }
}
class ByteStruct_asInterface {
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ByteStruct>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.ByteStruct_asInterface) class ByteStruct_static_extension {
    @:keep
    static public function gobDecode( _g:stdgo.StdGoTypes.Ref<ByteStruct>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _g:stdgo.StdGoTypes.Ref<ByteStruct> = _g;
        if (_g == null || (_g : Dynamic).__nil__) {
            return stdgo.errors.Errors.new_(("NIL RECEIVER" : stdgo.GoString));
        };
        if ((_data.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.io.Io.eof;
        };
        _g._a = _data[(0 : stdgo.StdGoTypes.GoInt)];
        for (_i => _c in _data) {
            if (_c != (_g._a + (_i : stdgo.StdGoTypes.GoByte))) {
                return stdgo.errors.Errors.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _g:stdgo.StdGoTypes.Ref<ByteStruct>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.StdGoTypes.Ref<ByteStruct> = _g;
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((3 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b[(0 : stdgo.StdGoTypes.GoInt)] = _g._a;
        _b[(1 : stdgo.StdGoTypes.GoInt)] = _g._a + (1 : stdgo.StdGoTypes.GoUInt8);
        _b[(2 : stdgo.StdGoTypes.GoInt)] = _g._a + (2 : stdgo.StdGoTypes.GoUInt8);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
class StringStruct_asInterface {
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StringStruct>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.StringStruct_asInterface) class StringStruct_static_extension {
    @:keep
    static public function gobDecode( _g:stdgo.StdGoTypes.Ref<StringStruct>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _g:stdgo.StdGoTypes.Ref<StringStruct> = _g;
        if ((_data.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.io.Io.eof;
        };
        var _a:stdgo.StdGoTypes.GoUInt8 = _data[(0 : stdgo.StdGoTypes.GoInt)];
        for (_i => _c in _data) {
            if (_c != (_a + (_i : stdgo.StdGoTypes.GoByte))) {
                return stdgo.errors.Errors.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        _g._s = (_data : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _g:stdgo.StdGoTypes.Ref<StringStruct>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.StdGoTypes.Ref<StringStruct> = _g;
        return { _0 : (_g._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class ArrayStruct_asInterface {
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ArrayStruct>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.ArrayStruct_asInterface) class ArrayStruct_static_extension {
    @:keep
    static public function gobDecode( _a:stdgo.StdGoTypes.Ref<ArrayStruct>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _a:stdgo.StdGoTypes.Ref<ArrayStruct> = _a;
        if ((_data.length) != ((_a._a.length))) {
            return stdgo.errors.Errors.new_(("wrong length in array decode" : stdgo.GoString));
        };
        stdgo.Go.copySlice((_a._a.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _data);
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _a:stdgo.StdGoTypes.Ref<ArrayStruct>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.StdGoTypes.Ref<ArrayStruct> = _a;
        return { _0 : (_a._a.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
class T_gobDecoderBug0_asInterface {
    @:keep
    public dynamic function gobDecode(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_b);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_gobDecoderBug0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_gobDecoderBug0_asInterface) class T_gobDecoderBug0_static_extension {
    @:keep
    static public function gobDecode( _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0> = _br;
        _br._foo = ("foo" : stdgo.GoString);
        _br._bar = ("bar" : stdgo.GoString);
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0> = _br;
        return { _0 : ((_br.string() : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function string( _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0>):stdgo.GoString {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_gobDecoderBug0> = _br;
        return _br._foo + ("-" : stdgo.GoString)?.__copy__() + _br._bar?.__copy__()?.__copy__();
    }
}
class T_isZeroBugInterface_asInterface {
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_isZeroBugInterface>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_isZeroBugInterface_asInterface) class T_isZeroBugInterface_static_extension {
    @:keep
    static public function gobDecode( _i:stdgo.StdGoTypes.Ref<T_isZeroBugInterface>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _i:stdgo.StdGoTypes.Ref<T_isZeroBugInterface> = _i;
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _i:T_isZeroBugInterface):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _i:T_isZeroBugInterface = _i?.__copy__();
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _e:stdgo.Error = (null : stdgo.Error);
        return { _0 : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
class T_benchmarkBuf_asInterface {
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkBuf>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_benchmarkBuf_asInterface) class T_benchmarkBuf_static_extension {
    @:keep
    static public function _reset( _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf>):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf> = _b;
        _b._offset = (0 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function readByte( _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf> = _b;
        var _c:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8), _err:stdgo.Error = (null : stdgo.Error);
        if (_b._offset >= (_b._data.length)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : stdgo.io.Io.eof };
        };
        _c = _b._data[(_b._offset : stdgo.StdGoTypes.GoInt)];
        _b._offset++;
        return { _0 : _c, _1 : _err };
    }
    @:keep
    static public function read( _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_benchmarkBuf> = _b;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = stdgo.Go.copySlice(_p, (_b._data.__slice__(_b._offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.io.Io.eof };
        };
        _b._offset = _b._offset + (_n);
        return { _0 : _n, _1 : _err };
    }
}
class CommonType_asInterface {
    @:keep
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _setId(_id:T_typeId):Void __self__.value._setId(_id);
    @:keep
    public dynamic function _id():T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CommonType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    static public function _name( _t:stdgo.StdGoTypes.Ref<CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.StdGoTypes.Ref<CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _safeString( _t:stdgo.StdGoTypes.Ref<CommonType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _t:stdgo.StdGoTypes.Ref<CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _string( _t:stdgo.StdGoTypes.Ref<CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.StdGoTypes.Ref<CommonType> = _t;
        return _t.name?.__copy__();
    }
    @:keep
    static public function _setId( _t:stdgo.StdGoTypes.Ref<CommonType>, _id:T_typeId):Void {
        @:recv var _t:stdgo.StdGoTypes.Ref<CommonType> = _t;
        _t.id = _id;
    }
    @:keep
    static public function _id( _t:stdgo.StdGoTypes.Ref<CommonType>):T_typeId {
        @:recv var _t:stdgo.StdGoTypes.Ref<CommonType> = _t;
        return _t.id;
    }
}
class T_arrayType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:keep
    public dynamic function _init(_elem:T_gobType, _len:stdgo.StdGoTypes.GoInt):Void __self__.value._init(_elem, _len);
    @:embedded
    public dynamic function _setId(__0:stdgo.encoding.gob.Gob.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo.encoding.gob.Gob.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_arrayType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_arrayType_asInterface) class T_arrayType_static_extension {
    @:keep
    static public function _string( _a:stdgo.StdGoTypes.Ref<T_arrayType>):stdgo.GoString {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_arrayType> = _a;
        return _a._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _a:stdgo.StdGoTypes.Ref<T_arrayType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_arrayType> = _a;
        if ((_seen[_a.commonType.id] ?? false)) {
            return _a.commonType.name?.__copy__();
        };
        _seen[_a.commonType.id] = true;
        return stdgo.fmt.Fmt.sprintf(("[%d]%s" : stdgo.GoString), stdgo.Go.toInterface(_a.len), stdgo.Go.toInterface(_a.elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    static public function _init( _a:stdgo.StdGoTypes.Ref<T_arrayType>, _elem:T_gobType, _len:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_arrayType> = _a;
        _setTypeId(stdgo.Go.asInterface(_a));
        _a.elem = _elem._id();
        _a.len = _len;
    }
    @:embedded
    public static function _setId( __self__:T_arrayType, __0:stdgo.encoding.gob.Gob.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:T_arrayType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:T_arrayType):stdgo.encoding.gob.Gob.T_typeId return __self__._id();
}
class T_gobEncoderType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:embedded
    public dynamic function _setId(__0:stdgo.encoding.gob.Gob.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo.encoding.gob.Gob.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_gobEncoderType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_gobEncoderType_asInterface) class T_gobEncoderType_static_extension {
    @:keep
    static public function _string( _g:stdgo.StdGoTypes.Ref<T_gobEncoderType>):stdgo.GoString {
        @:recv var _g:stdgo.StdGoTypes.Ref<T_gobEncoderType> = _g;
        return _g.commonType.name?.__copy__();
    }
    @:keep
    static public function _safeString( _g:stdgo.StdGoTypes.Ref<T_gobEncoderType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _g:stdgo.StdGoTypes.Ref<T_gobEncoderType> = _g;
        return _g.commonType.name?.__copy__();
    }
    @:embedded
    public static function _setId( __self__:T_gobEncoderType, __0:stdgo.encoding.gob.Gob.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:T_gobEncoderType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:T_gobEncoderType):stdgo.encoding.gob.Gob.T_typeId return __self__._id();
}
class T_mapType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:keep
    public dynamic function _init(_key:T_gobType, _elem:T_gobType):Void __self__.value._init(_key, _elem);
    @:embedded
    public dynamic function _setId(__0:stdgo.encoding.gob.Gob.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo.encoding.gob.Gob.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_mapType_asInterface) class T_mapType_static_extension {
    @:keep
    static public function _string( _m:stdgo.StdGoTypes.Ref<T_mapType>):stdgo.GoString {
        @:recv var _m:stdgo.StdGoTypes.Ref<T_mapType> = _m;
        return _m._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _m:stdgo.StdGoTypes.Ref<T_mapType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _m:stdgo.StdGoTypes.Ref<T_mapType> = _m;
        if ((_seen[_m.commonType.id] ?? false)) {
            return _m.commonType.name?.__copy__();
        };
        _seen[_m.commonType.id] = true;
        var _key:stdgo.GoString = _m.key._gobType()._safeString(_seen)?.__copy__();
        var _elem:stdgo.GoString = _m.elem._gobType()._safeString(_seen)?.__copy__();
        return stdgo.fmt.Fmt.sprintf(("map[%s]%s" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_elem))?.__copy__();
    }
    @:keep
    static public function _init( _m:stdgo.StdGoTypes.Ref<T_mapType>, _key:T_gobType, _elem:T_gobType):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<T_mapType> = _m;
        _setTypeId(stdgo.Go.asInterface(_m));
        _m.key = _key._id();
        _m.elem = _elem._id();
    }
    @:embedded
    public static function _setId( __self__:T_mapType, __0:stdgo.encoding.gob.Gob.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:T_mapType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:T_mapType):stdgo.encoding.gob.Gob.T_typeId return __self__._id();
}
class T_sliceType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:keep
    public dynamic function _init(_elem:T_gobType):Void __self__.value._init(_elem);
    @:embedded
    public dynamic function _setId(__0:stdgo.encoding.gob.Gob.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo.encoding.gob.Gob.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_sliceType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_sliceType_asInterface) class T_sliceType_static_extension {
    @:keep
    static public function _string( _s:stdgo.StdGoTypes.Ref<T_sliceType>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_sliceType> = _s;
        return _s._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _s:stdgo.StdGoTypes.Ref<T_sliceType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_sliceType> = _s;
        if ((_seen[_s.commonType.id] ?? false)) {
            return _s.commonType.name?.__copy__();
        };
        _seen[_s.commonType.id] = true;
        return stdgo.fmt.Fmt.sprintf(("[]%s" : stdgo.GoString), stdgo.Go.toInterface(_s.elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    static public function _init( _s:stdgo.StdGoTypes.Ref<T_sliceType>, _elem:T_gobType):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_sliceType> = _s;
        _setTypeId(stdgo.Go.asInterface(_s));
        if (_elem._id() == ((0 : stdgo.encoding.gob.Gob.T_typeId))) {
            _setTypeId(_elem);
        };
        _s.elem = _elem._id();
    }
    @:embedded
    public static function _setId( __self__:T_sliceType, __0:stdgo.encoding.gob.Gob.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:T_sliceType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:T_sliceType):stdgo.encoding.gob.Gob.T_typeId return __self__._id();
}
class T_structType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:embedded
    public dynamic function _setId(__0:stdgo.encoding.gob.Gob.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo.encoding.gob.Gob.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_structType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_structType_asInterface) class T_structType_static_extension {
    @:keep
    static public function _string( _s:stdgo.StdGoTypes.Ref<T_structType>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_structType> = _s;
        return _s._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.encoding.gob.Gob.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _s:stdgo.StdGoTypes.Ref<T_structType>, _seen:stdgo.GoMap<T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_structType> = _s;
        if (_s == null || (_s : Dynamic).__nil__) {
            return ("<nil>" : stdgo.GoString);
        };
        {
            var __tmp__ = (_seen != null && _seen.exists(_s.commonType.id) ? { value : _seen[_s.commonType.id], ok : true } : { value : false, ok : false }), __0:Bool = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _s.commonType.name?.__copy__();
            };
        };
        _seen[_s.commonType.id] = true;
        var _str:stdgo.GoString = _s.commonType.name + (" = struct { " : stdgo.GoString)?.__copy__()?.__copy__();
        for (__1 => _f in _s.field) {
            _str = _str + (stdgo.fmt.Fmt.sprintf(("%s %s; " : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_f.id._gobType()._safeString(_seen))))?.__copy__();
        };
        _str = _str + (("}" : stdgo.GoString))?.__copy__();
        return _str?.__copy__();
    }
    @:embedded
    public static function _setId( __self__:T_structType, __0:stdgo.encoding.gob.Gob.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:T_structType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:T_structType):stdgo.encoding.gob.Gob.T_typeId return __self__._id();
}
class T_wireType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wireType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_wireType_asInterface) class T_wireType_static_extension {
    @:keep
    static public function _string( _w:stdgo.StdGoTypes.Ref<T_wireType>):stdgo.GoString {
        @:recv var _w:stdgo.StdGoTypes.Ref<T_wireType> = _w;
        {};
        if (_w == null || (_w : Dynamic).__nil__) {
            return ("unknown type" : stdgo.GoString);
        };
        if (_w.arrayT != null && ((_w.arrayT : Dynamic).__nil__ == null || !(_w.arrayT : Dynamic).__nil__)) {
            return _w.arrayT.commonType.name?.__copy__();
        } else if (_w.sliceT != null && ((_w.sliceT : Dynamic).__nil__ == null || !(_w.sliceT : Dynamic).__nil__)) {
            return _w.sliceT.commonType.name?.__copy__();
        } else if (_w.structT != null && ((_w.structT : Dynamic).__nil__ == null || !(_w.structT : Dynamic).__nil__)) {
            return _w.structT.commonType.name?.__copy__();
        } else if (_w.mapT != null && ((_w.mapT : Dynamic).__nil__ == null || !(_w.mapT : Dynamic).__nil__)) {
            return _w.mapT.commonType.name?.__copy__();
        } else if (_w.gobEncoderT != null && ((_w.gobEncoderT : Dynamic).__nil__ == null || !(_w.gobEncoderT : Dynamic).__nil__)) {
            return _w.gobEncoderT.commonType.name?.__copy__();
        } else if (_w.binaryMarshalerT != null && ((_w.binaryMarshalerT : Dynamic).__nil__ == null || !(_w.binaryMarshalerT : Dynamic).__nil__)) {
            return _w.binaryMarshalerT.commonType.name?.__copy__();
        } else if (_w.textMarshalerT != null && ((_w.textMarshalerT : Dynamic).__nil__ == null || !(_w.textMarshalerT : Dynamic).__nil__)) {
            return _w.textMarshalerT.commonType.name?.__copy__();
        };
        return ("unknown type" : stdgo.GoString);
    }
}
class Int__asInterface {
    @:keep
    public dynamic function square():stdgo.StdGoTypes.GoInt return __self__.value.square();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Int_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Int__asInterface) class Int__static_extension {
    @:keep
    static public function square( _i:Int_):stdgo.StdGoTypes.GoInt {
        @:recv var _i:Int_ = _i;
        return (_i * _i : stdgo.StdGoTypes.GoInt);
    }
}
class Float__asInterface {
    @:keep
    public dynamic function square():stdgo.StdGoTypes.GoInt return __self__.value.square();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Float_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Float__asInterface) class Float__static_extension {
    @:keep
    static public function square( _f:Float_):stdgo.StdGoTypes.GoInt {
        @:recv var _f:Float_ = _f;
        return (_f * _f : stdgo.StdGoTypes.GoInt);
    }
}
class Vector_asInterface {
    @:keep
    public dynamic function square():stdgo.StdGoTypes.GoInt return __self__.value.square();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Vector>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Vector_asInterface) class Vector_static_extension {
    @:keep
    static public function square( _v:Vector):stdgo.StdGoTypes.GoInt {
        @:recv var _v:Vector = _v;
        var _sum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (__0 => _x in _v) {
            _sum = _sum + (_x * _x);
        };
        return _sum;
    }
}
class Gobber_asInterface {
    @:keep
    @:pointer
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(__self__, _data);
    @:keep
    @:pointer
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Gobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.Gobber_asInterface) class Gobber_static_extension {
    @:keep
    @:pointer
    static public function gobDecode(____:Gobber,  _g:stdgo.Pointer<Gobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.StdGoTypes.GoInt>(() -> (_g.value : stdgo.StdGoTypes.GoInt), v -> (_g.value = (v : stdgo.encoding.gob.Gob.Gobber) : stdgo.StdGoTypes.GoInt)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    static public function gobEncode(____:Gobber,  _g:stdgo.Pointer<Gobber>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g.value))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class ValueGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(__self__, _data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValueGobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.ValueGobber_asInterface) class ValueGobber_static_extension {
    @:keep
    @:pointer
    static public function gobDecode(____:ValueGobber,  _v:stdgo.Pointer<ValueGobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo.encoding.gob.Gob.ValueGobber) : stdgo.GoString)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function gobEncode( _v:ValueGobber):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _v:ValueGobber = _v;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class BinaryGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BinaryGobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.BinaryGobber_asInterface) class BinaryGobber_static_extension {
    @:keep
    @:pointer
    static public function unmarshalBinary(____:BinaryGobber,  _g:stdgo.Pointer<BinaryGobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.StdGoTypes.GoInt>(() -> (_g.value : stdgo.StdGoTypes.GoInt), v -> (_g.value = (v : stdgo.encoding.gob.Gob.BinaryGobber) : stdgo.StdGoTypes.GoInt)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:BinaryGobber,  _g:stdgo.Pointer<BinaryGobber>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g.value))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class BinaryValueGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(__self__, _data);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BinaryValueGobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.BinaryValueGobber_asInterface) class BinaryValueGobber_static_extension {
    @:keep
    @:pointer
    static public function unmarshalBinary(____:BinaryValueGobber,  _v:stdgo.Pointer<BinaryValueGobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo.encoding.gob.Gob.BinaryValueGobber) : stdgo.GoString)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function marshalBinary( _v:BinaryValueGobber):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _v:BinaryValueGobber = _v;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class TextGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TextGobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.TextGobber_asInterface) class TextGobber_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:TextGobber,  _g:stdgo.Pointer<TextGobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.StdGoTypes.GoInt>(() -> (_g.value : stdgo.StdGoTypes.GoInt), v -> (_g.value = (v : stdgo.encoding.gob.Gob.TextGobber) : stdgo.StdGoTypes.GoInt)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    static public function marshalText(____:TextGobber,  _g:stdgo.Pointer<TextGobber>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g.value))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class TextValueGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TextValueGobber>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.TextValueGobber_asInterface) class TextValueGobber_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:TextValueGobber,  _v:stdgo.Pointer<TextValueGobber>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo.encoding.gob.Gob.TextValueGobber) : stdgo.GoString)))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function marshalText( _v:TextValueGobber):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _v:TextValueGobber = _v;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_isZeroBugArray_asInterface {
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    /**
        // Receiver is value, not pointer, to test isZero of array.
    **/
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_isZeroBugArray>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_isZeroBugArray_asInterface) class T_isZeroBugArray_static_extension {
    @:keep
    static public function gobDecode( _a:stdgo.StdGoTypes.Ref<T_isZeroBugArray>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_isZeroBugArray> = _a;
        if ((_data.length) != ((_a.length))) {
            return stdgo.io.Io.eof;
        };
        _a[(0 : stdgo.StdGoTypes.GoInt)] = _data[(0 : stdgo.StdGoTypes.GoInt)];
        _a[(1 : stdgo.StdGoTypes.GoInt)] = _data[(1 : stdgo.StdGoTypes.GoInt)];
        return (null : stdgo.Error);
    }
    /**
        // Receiver is value, not pointer, to test isZero of array.
    **/
    @:keep
    static public function gobEncode( _a:T_isZeroBugArray):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _a:T_isZeroBugArray = _a?.__copy__();
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _e:stdgo.Error = (null : stdgo.Error);
        _b = (_b.__append__(...(_a.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
class T_typeId_asInterface {
    /**
        // Name returns the name of the type associated with the typeId.
    **/
    @:keep
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    /**
        // string returns the string representation of the type associated with the typeId.
    **/
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _gobType():T_gobType return __self__.value._gobType();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_typeId>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob.Gob.T_typeId_asInterface) class T_typeId_static_extension {
    /**
        // Name returns the name of the type associated with the typeId.
    **/
    @:keep
    static public function _name( _t:T_typeId):stdgo.GoString {
        @:recv var _t:T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._name()?.__copy__();
    }
    /**
        // string returns the string representation of the type associated with the typeId.
    **/
    @:keep
    static public function _string( _t:T_typeId):stdgo.GoString {
        @:recv var _t:T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._string()?.__copy__();
    }
    @:keep
    static public function _gobType( _t:T_typeId):T_gobType {
        @:recv var _t:T_typeId = _t;
        if (_t == ((0 : stdgo.encoding.gob.Gob.T_typeId))) {
            return (null : stdgo.encoding.gob.Gob.T_gobType);
        };
        return _idToType(_t);
    }
}
