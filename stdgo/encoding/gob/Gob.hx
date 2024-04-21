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
typedef Squarer = stdgo._internal.encoding.gob.Gob.Squarer;
typedef T_interfaceIndirectTestI = stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI;
typedef T_gobType = stdgo._internal.encoding.gob.Gob.T_gobType;
typedef GobEncoder = stdgo._internal.encoding.gob.Gob.GobEncoder;
typedef GobDecoder = stdgo._internal.encoding.gob.Gob.GobDecoder;
@:invalid typedef EncodeT = Dynamic;
@:invalid typedef T0 = Dynamic;
@:invalid typedef T1 = Dynamic;
@:invalid typedef T2 = Dynamic;
@:invalid typedef RT0 = Dynamic;
@:invalid typedef RT1 = Dynamic;
@:invalid typedef IT0 = Dynamic;
@:invalid typedef Indirect = Dynamic;
@:invalid typedef Direct = Dynamic;
@:invalid typedef Point = Dynamic;
@:invalid typedef InterfaceItem = Dynamic;
@:invalid typedef NoInterfaceItem = Dynamic;
@:invalid typedef BasicInterfaceItem = Dynamic;
@:invalid typedef PtrInterfaceItem = Dynamic;
@:invalid typedef U = Dynamic;
@:invalid typedef OnTheFly = Dynamic;
@:invalid typedef DT = Dynamic;
@:invalid typedef LargeSliceByte = Dynamic;
@:invalid typedef LargeSliceInt8 = Dynamic;
@:invalid typedef StringPair = Dynamic;
@:invalid typedef LargeSliceStruct = Dynamic;
@:invalid typedef LargeSliceString = Dynamic;
@:invalid typedef T_decoderState = Dynamic;
@:invalid typedef T_decBuffer = Dynamic;
@:invalid typedef T_decInstr = Dynamic;
@:invalid typedef T_decEngine = Dynamic;
@:invalid typedef T_emptyStruct = Dynamic;
@:invalid typedef Decoder = Dynamic;
@:invalid typedef T_encoderState = Dynamic;
@:invalid typedef T_encBuffer = Dynamic;
@:invalid typedef T_encInstr = Dynamic;
@:invalid typedef T_encEngine = Dynamic;
@:invalid typedef Encoder = Dynamic;
@:invalid typedef ET0 = Dynamic;
@:invalid typedef ET2 = Dynamic;
@:invalid typedef ET1 = Dynamic;
@:invalid typedef ET3 = Dynamic;
@:invalid typedef ET4 = Dynamic;
@:invalid typedef SingleTest = Dynamic;
@:invalid typedef T_interfaceIndirectTestT = Dynamic;
@:invalid typedef Struct0 = Dynamic;
@:invalid typedef NewType0 = Dynamic;
@:invalid typedef T_ignoreTest = Dynamic;
@:invalid typedef Bug0Outer = Dynamic;
@:invalid typedef Bug0Inner = Dynamic;
@:invalid typedef Bug1Elem = Dynamic;
@:invalid typedef Bug2 = Dynamic;
@:invalid typedef Bug3 = Dynamic;
@:invalid typedef Bug4Public = Dynamic;
@:invalid typedef Bug4Secret = Dynamic;
@:invalid typedef Z = Dynamic;
@:invalid typedef T_badDataTest = Dynamic;
@:invalid typedef T_gobError = Dynamic;
@:invalid typedef ByteStruct = Dynamic;
@:invalid typedef StringStruct = Dynamic;
@:invalid typedef ArrayStruct = Dynamic;
@:invalid typedef GobTest0 = Dynamic;
@:invalid typedef GobTest1 = Dynamic;
@:invalid typedef GobTest2 = Dynamic;
@:invalid typedef GobTest3 = Dynamic;
@:invalid typedef GobTest4 = Dynamic;
@:invalid typedef GobTest5 = Dynamic;
@:invalid typedef GobTest6 = Dynamic;
@:invalid typedef GobTest7 = Dynamic;
@:invalid typedef GobTestIgnoreEncoder = Dynamic;
@:invalid typedef GobTestValueEncDec = Dynamic;
@:invalid typedef GobTestIndirectEncDec = Dynamic;
@:invalid typedef GobTestArrayEncDec = Dynamic;
@:invalid typedef GobTestIndirectArrayEncDec = Dynamic;
@:invalid typedef T_gobDecoderBug0 = Dynamic;
@:invalid typedef T_isZeroBug = Dynamic;
@:invalid typedef T_isZeroBugInterface = Dynamic;
@:invalid typedef Bench = Dynamic;
@:invalid typedef T_benchmarkBuf = Dynamic;
@:invalid typedef T_userTypeInfo = Dynamic;
@:invalid typedef CommonType = Dynamic;
@:invalid typedef T_arrayType = Dynamic;
@:invalid typedef T_gobEncoderType = Dynamic;
@:invalid typedef T_mapType = Dynamic;
@:invalid typedef T_sliceType = Dynamic;
@:invalid typedef T_fieldType = Dynamic;
@:invalid typedef T_structType = Dynamic;
@:invalid typedef T_wireType = Dynamic;
@:invalid typedef T_typeInfo = Dynamic;
@:invalid typedef T_typeT = Dynamic;
@:invalid typedef Bar = Dynamic;
@:invalid typedef Foo = Dynamic;
@:invalid typedef N1 = Dynamic;
@:invalid typedef N2 = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.gob.Gob.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.gob.Gob.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.gob.Gob.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.encoding.gob.Gob.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.encoding.gob.Gob.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.encoding.gob.Gob.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.encoding.gob.Gob.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.encoding.gob.Gob.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.encoding.gob.Gob.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.encoding.gob.Gob.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.encoding.gob.Gob.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.encoding.gob.Gob.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
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
/**
    // Test basic encode/decode routines for unsigned integers
**/
inline function testUintCodec(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test basic encode/decode routines for signed integers
**/
inline function testIntCodec(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test instruction execution for encoding.
    // Do not run the machine yet; instead do individual instructions crafted by hand.
**/
inline function testScalarEncInstructions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test instruction execution for decoding.
    // Do not run the machine yet; instead do individual instructions crafted by hand.
**/
inline function testScalarDecInstructions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testEndToEnd_54___localname___T2 = Dynamic;
@:invalid typedef T_testEndToEnd_55___localname___T3 = Dynamic;
@:invalid typedef T_testEndToEnd_56___localname___T1 = Dynamic;
inline function testEndToEnd(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testOverflow_57___localname___inputT = Dynamic;
@:invalid typedef T_testOverflow_58___localname___outi8 = Dynamic;
@:invalid typedef T_testOverflow_59___localname___outi16 = Dynamic;
@:invalid typedef T_testOverflow_60___localname___outi32 = Dynamic;
@:invalid typedef T_testOverflow_61___localname___outu8 = Dynamic;
@:invalid typedef T_testOverflow_62___localname___outu16 = Dynamic;
@:invalid typedef T_testOverflow_63___localname___outu32 = Dynamic;
@:invalid typedef T_testOverflow_64___localname___outf32 = Dynamic;
@:invalid typedef T_testOverflow_65___localname___outc64 = Dynamic;
inline function testOverflow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testNesting_66___localname___RT = Dynamic;
inline function testNesting(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAutoIndirection(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReorderedFields(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIgnoredFields(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testBadRecursiveType_67___localname___Rec = stdgo._internal.encoding.gob.Gob.T_testBadRecursiveType_67___localname___Rec;
inline function testBadRecursiveType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIndirectSliceMapArray(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInterface(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInterfaceBasic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // We'll send pointers; should receive values.
    // Also check that we can register T but send *T.
**/
inline function testInterfacePointer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIgnoreInterface(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnexportedFields(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDebugSingleton(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDebugStruct(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // This does some "fuzz testing" by attempting to decode a sequence of random bytes.
**/
inline function testFuzz(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFuzzRegressions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFuzzOneByte tries to decode corrupted input sequences
    // and checks that no panic occurs.
**/
inline function testFuzzOneByte(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Don't crash, just give error with invalid type id.
    // Issue 9649.
**/
inline function testErrorInvalidTypeId(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLargeSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLocalRemoteTypesMismatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewDecoder returns a new decoder that reads from the io.Reader.
    // If r does not also implement io.ByteReader, it will be wrapped in a
    // bufio.Reader.
**/
inline function newDecoder(r:stdgo._internal.io.Io.Reader):Decoder throw "not implemented";
/**
    // NewEncoder returns a new encoder that will transmit on the io.Writer.
**/
inline function newEncoder(w:stdgo._internal.io.Io.Writer):Encoder throw "not implemented";
/**
    // Test basic operations in a safe manner.
**/
inline function testBasicEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncodeIntSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that we recognize a bad type the first time.
**/
inline function testWrongTypeDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnsupported(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testTypeToPtrType_68___localname___Type0 = Dynamic;
inline function testTypeToPtrType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testPtrTypeToType_69___localname___Type1 = Dynamic;
inline function testPtrTypeToType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testTypeToPtrPtrPtrPtrType_70___localname___Type2 = Dynamic;
inline function testTypeToPtrPtrPtrPtrType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testSlice_71___localname___Type3 = Dynamic;
inline function testSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testValueError_72___localname___Type4 = Dynamic;
inline function testValueError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testArray_73___localname___Type5 = Dynamic;
@:invalid typedef T_testArray_74___localname___Type6 = Dynamic;
inline function testArray(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testRecursiveMapType_75___localname___recursiveMap = stdgo._internal.encoding.gob.Gob.T_testRecursiveMapType_75___localname___recursiveMap;
inline function testRecursiveMapType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testRecursiveSliceType_76___localname___recursiveSlice = stdgo._internal.encoding.gob.Gob.T_testRecursiveSliceType_76___localname___recursiveSlice;
inline function testRecursiveSliceType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testDefaultsInArray_77___localname___Type7 = Dynamic;
/**
    // Regression test for bug: must send zero values inside arrays
**/
inline function testDefaultsInArray(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSingletons(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testStructNonStruct_78___localname___Struct = Dynamic;
typedef T_testStructNonStruct_79___localname___NonStruct = stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_79___localname___NonStruct;
inline function testStructNonStruct(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // A version of a bug reported on golang-nuts. Also tests top-level
    // slice of interfaces. The issue was registering *T caused T to be
    // stored as the concrete type.
**/
inline function testInterfaceIndirect(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeIntoNothing(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIgnoreRecursiveType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNestedInterfaces(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMapBug1(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobMapInterfaceEncode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSliceReusesMemory(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Used to crash: negative count in recvMessage.
**/
inline function testBadCount(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that sequential Decoders built on a single input will
    // succeed if the input implements ReadByte and there is no
    // type information in the stream.
**/
inline function testSequentialDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testChanFuncIgnored(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSliceIncompatibility(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobPtrSlices(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
    // a *map and then tried to reuse its engine to decode the inner map.
**/
inline function testPtrToMapOfMap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that untyped nils generate an error, not a panic.
    // See Issue 16204.
**/
inline function testCatchInvalidNilValue(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // A top-level nil pointer generates a panic with a helpful string-valued message.
**/
inline function testTopLevelNilPointer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNilPointerPanics(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNilPointerInsideInterface(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that a failed compilation doesn't leave around an executable encoder.
    // Issue 3723.
**/
inline function testMutipleEncodingsOfBadType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function test29ElementSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Don't crash, just give error when allocating a huge slice.
    // Issue 8084.
**/
inline function testErrorForHugeSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestBadData tests that various problems caused by malformed input
    // are caught as errors and do not cause panics.
**/
inline function testBadData(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testDecodeErrorMultipleTypes_80___localname___Test = Dynamic;
inline function testDecodeErrorMultipleTypes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testMarshalFloatMap_81___localname___mapEntry = Dynamic;
/**
    // Issue 24075
**/
inline function testMarshalFloatMap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testDecodePartial_82___localname___T = Dynamic;
inline function testDecodePartial(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderOverflow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Even though the field is a value, we can still take its address
    // and should be able to call the methods.
**/
inline function testGobEncoderValueField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // GobEncode/Decode should work even if the value is
    // more indirect than the receiver.
**/
inline function testGobEncoderIndirectField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test with a large field with methods.
**/
inline function testGobEncoderArrayField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test an indirection to a large field with methods.
**/
inline function testGobEncoderIndirectArrayField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // As long as the fields have the same name and implement the
    // interface, we can cross-connect them. Not sure it's useful
    // and may even be bad but it works and it's hard to prevent
    // without exposing the contents of the object, which would
    // defeat the purpose.
**/
inline function testGobEncoderFieldsOfDifferentType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that we can encode a value and decode into a pointer.
**/
inline function testGobEncoderValueEncoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that we can use a value then a pointer type of a GobEncoder
    // in the same encoded value. Bug 4647.
**/
inline function testGobEncoderValueThenPointer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that we can use a pointer then a value type of a GobEncoder
    // in the same encoded value.
**/
inline function testGobEncoderPointerThenValue(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderFieldTypeError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Even though ByteStruct is a struct, it's treated as a singleton at the top level.
**/
inline function testGobEncoderStructSingleton(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderNonStructSingleton(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderIgnoreStructField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderIgnoreNonStructField(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncoderIgnoreNilEncoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // This was a bug: the receiver has a different indirection level
    // than the variable.
**/
inline function testGobEncoderExtraIndirect(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncodeIsZero(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testGobEncodePtrError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNetIP(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIgnoreDepthLimit(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkEndToEndPipe(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEndToEndByteBuffer(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEndToEndSliceByteBuffer(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testCountEncodeMallocs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCountDecodeMallocs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkEncodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncodeStringSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeStringSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeStringsSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeBytesSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeMap(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // RegisterName is like Register but uses the provided name rather than the
    // type's default.
**/
inline function registerName(name:String, value:stdgo.AnyInterface):Void throw "not implemented";
/**
    // Register records a type, identified by a value for that type, under its
    // internal type name. That name will identify the concrete type of a value
    // sent or received as an interface variable. Only types that will be
    // transferred as implementations of interface values need to be registered.
    // Expecting to be used only during initialization, it panics if the mapping
    // between types and names is not a bijection.
**/
inline function register(value:stdgo.AnyInterface):Void throw "not implemented";
/**
    // Sanity checks
**/
inline function testBasic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Reregister some basic types to check registration is idempotent.
**/
inline function testReregistration(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testArrayType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSliceType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMapType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStructType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testRegistration_83___localname___T = Dynamic;
/**
    // Should be OK to register the same type multiple times, as long as they're
    // at the same level of indirection.
**/
inline function testRegistration(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // See comment in type.go/Register.
**/
inline function testRegistrationNaming(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testStressParallel_84___localname___T2 = Dynamic;
inline function testStressParallel(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Issue 23328. Note that this test name is known to cmd/dist/test.go.
**/
inline function testTypeRace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef Point_asInterface = Dynamic;
@:invalid typedef Point_static_extension = Dynamic;
@:invalid typedef T_decoderState_asInterface = Dynamic;
@:invalid typedef T_decoderState_static_extension = Dynamic;
@:invalid typedef T_decBuffer_asInterface = Dynamic;
@:invalid typedef T_decBuffer_static_extension = Dynamic;
@:invalid typedef Decoder_asInterface = Dynamic;
@:invalid typedef Decoder_static_extension = Dynamic;
@:invalid typedef T_encoderState_asInterface = Dynamic;
@:invalid typedef T_encoderState_static_extension = Dynamic;
@:invalid typedef T_encBuffer_asInterface = Dynamic;
@:invalid typedef T_encBuffer_static_extension = Dynamic;
@:invalid typedef Encoder_asInterface = Dynamic;
@:invalid typedef Encoder_static_extension = Dynamic;
@:invalid typedef T_interfaceIndirectTestT_asInterface = Dynamic;
@:invalid typedef T_interfaceIndirectTestT_static_extension = Dynamic;
@:invalid typedef ByteStruct_asInterface = Dynamic;
@:invalid typedef ByteStruct_static_extension = Dynamic;
@:invalid typedef StringStruct_asInterface = Dynamic;
@:invalid typedef StringStruct_static_extension = Dynamic;
@:invalid typedef ArrayStruct_asInterface = Dynamic;
@:invalid typedef ArrayStruct_static_extension = Dynamic;
@:invalid typedef T_gobDecoderBug0_asInterface = Dynamic;
@:invalid typedef T_gobDecoderBug0_static_extension = Dynamic;
@:invalid typedef T_isZeroBugInterface_asInterface = Dynamic;
@:invalid typedef T_isZeroBugInterface_static_extension = Dynamic;
@:invalid typedef T_benchmarkBuf_asInterface = Dynamic;
@:invalid typedef T_benchmarkBuf_static_extension = Dynamic;
@:invalid typedef CommonType_asInterface = Dynamic;
@:invalid typedef CommonType_static_extension = Dynamic;
@:invalid typedef T_arrayType_asInterface = Dynamic;
@:invalid typedef T_arrayType_static_extension = Dynamic;
@:invalid typedef T_gobEncoderType_asInterface = Dynamic;
@:invalid typedef T_gobEncoderType_static_extension = Dynamic;
@:invalid typedef T_mapType_asInterface = Dynamic;
@:invalid typedef T_mapType_static_extension = Dynamic;
@:invalid typedef T_sliceType_asInterface = Dynamic;
@:invalid typedef T_sliceType_static_extension = Dynamic;
@:invalid typedef T_structType_asInterface = Dynamic;
@:invalid typedef T_structType_static_extension = Dynamic;
@:invalid typedef T_wireType_asInterface = Dynamic;
@:invalid typedef T_wireType_static_extension = Dynamic;
@:invalid typedef Int__asInterface = Dynamic;
@:invalid typedef Int__static_extension = Dynamic;
@:invalid typedef Float__asInterface = Dynamic;
@:invalid typedef Float__static_extension = Dynamic;
@:invalid typedef Vector_asInterface = Dynamic;
@:invalid typedef Vector_static_extension = Dynamic;
@:invalid typedef Gobber_asInterface = Dynamic;
@:invalid typedef Gobber_static_extension = Dynamic;
@:invalid typedef ValueGobber_asInterface = Dynamic;
@:invalid typedef ValueGobber_static_extension = Dynamic;
@:invalid typedef BinaryGobber_asInterface = Dynamic;
@:invalid typedef BinaryGobber_static_extension = Dynamic;
@:invalid typedef BinaryValueGobber_asInterface = Dynamic;
@:invalid typedef BinaryValueGobber_static_extension = Dynamic;
@:invalid typedef TextGobber_asInterface = Dynamic;
@:invalid typedef TextGobber_static_extension = Dynamic;
@:invalid typedef TextValueGobber_asInterface = Dynamic;
@:invalid typedef TextValueGobber_static_extension = Dynamic;
@:invalid typedef T_isZeroBugArray_asInterface = Dynamic;
@:invalid typedef T_isZeroBugArray_static_extension = Dynamic;
@:invalid typedef T_typeId_asInterface = Dynamic;
@:invalid typedef T_typeId_static_extension = Dynamic;
