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
class Gob {
    /**
        Test basic encode/decode routines for unsigned integers
    **/
    static public inline function testUintCodec(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testUintCodec.testUintCodec(_t);
    }
    /**
        Test basic encode/decode routines for signed integers
    **/
    static public inline function testIntCodec(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIntCodec.testIntCodec(_t);
    }
    /**
        Test instruction execution for encoding.
        Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public inline function testScalarEncInstructions(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testScalarEncInstructions.testScalarEncInstructions(_t);
    }
    /**
        Test instruction execution for decoding.
        Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public inline function testScalarDecInstructions(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testScalarDecInstructions.testScalarDecInstructions(_t);
    }
    static public inline function testEndToEnd(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testEndToEnd.testEndToEnd(_t);
    }
    static public inline function testOverflow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testOverflow.testOverflow(_t);
    }
    static public inline function testNesting(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testNesting.testNesting(_t);
    }
    static public inline function testAutoIndirection(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testAutoIndirection.testAutoIndirection(_t);
    }
    static public inline function testReorderedFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testReorderedFields.testReorderedFields(_t);
    }
    static public inline function testIgnoredFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIgnoredFields.testIgnoredFields(_t);
    }
    static public inline function testBadRecursiveType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testBadRecursiveType.testBadRecursiveType(_t);
    }
    static public inline function testIndirectSliceMapArray(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIndirectSliceMapArray.testIndirectSliceMapArray(_t);
    }
    static public inline function testInterface(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testInterface.testInterface(_t);
    }
    static public inline function testInterfaceBasic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testInterfaceBasic.testInterfaceBasic(_t);
    }
    /**
        We'll send pointers; should receive values.
        Also check that we can register T but send *T.
    **/
    static public inline function testInterfacePointer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testInterfacePointer.testInterfacePointer(_t);
    }
    static public inline function testIgnoreInterface(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIgnoreInterface.testIgnoreInterface(_t);
    }
    static public inline function testUnexportedFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testUnexportedFields.testUnexportedFields(_t);
    }
    static public inline function testDebugSingleton(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDebugSingleton.testDebugSingleton(_t);
    }
    static public inline function testDebugStruct(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDebugStruct.testDebugStruct(_t);
    }
    /**
        This does some "fuzz testing" by attempting to decode a sequence of random bytes.
    **/
    static public inline function testFuzz(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testFuzz.testFuzz(_t);
    }
    static public inline function testFuzzRegressions(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testFuzzRegressions.testFuzzRegressions(_t);
    }
    /**
        TestFuzzOneByte tries to decode corrupted input sequences
        and checks that no panic occurs.
    **/
    static public inline function testFuzzOneByte(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testFuzzOneByte.testFuzzOneByte(_t);
    }
    /**
        Don't crash, just give error with invalid type id.
        Issue 9649.
    **/
    static public inline function testErrorInvalidTypeId(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testErrorInvalidTypeId.testErrorInvalidTypeId(_t);
    }
    static public inline function testLargeSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testLargeSlice.testLargeSlice(_t);
    }
    static public inline function testLocalRemoteTypesMismatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testLocalRemoteTypesMismatch.testLocalRemoteTypesMismatch(_t);
    }
    /**
        NewDecoder returns a new decoder that reads from the io.Reader.
        If r does not also implement io.ByteReader, it will be wrapped in a
        bufio.Reader.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):Decoder {
        return stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_r);
    }
    /**
        NewEncoder returns a new encoder that will transmit on the io.Writer.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):Encoder {
        return stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(_w);
    }
    /**
        Test basic operations in a safe manner.
    **/
    static public inline function testBasicEncoderDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testBasicEncoderDecoder.testBasicEncoderDecoder(_t);
    }
    static public inline function testEncodeIntSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testEncodeIntSlice.testEncodeIntSlice(_t);
    }
    static public inline function testEncoderDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testEncoderDecoder.testEncoderDecoder(_t);
    }
    /**
        Test that we recognize a bad type the first time.
    **/
    static public inline function testWrongTypeDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testWrongTypeDecoder.testWrongTypeDecoder(_t);
    }
    static public inline function testUnsupported(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testUnsupported.testUnsupported(_t);
    }
    static public inline function testTypeToPtrType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testTypeToPtrType.testTypeToPtrType(_t);
    }
    static public inline function testPtrTypeToType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testPtrTypeToType.testPtrTypeToType(_t);
    }
    static public inline function testTypeToPtrPtrPtrPtrType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testTypeToPtrPtrPtrPtrType.testTypeToPtrPtrPtrPtrType(_t);
    }
    static public inline function testSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSlice.testSlice(_t);
    }
    static public inline function testValueError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testValueError.testValueError(_t);
    }
    static public inline function testArray(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testArray.testArray(_t);
    }
    static public inline function testRecursiveMapType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testRecursiveMapType.testRecursiveMapType(_t);
    }
    static public inline function testRecursiveSliceType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testRecursiveSliceType.testRecursiveSliceType(_t);
    }
    /**
        Regression test for bug: must send zero values inside arrays
    **/
    static public inline function testDefaultsInArray(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDefaultsInArray.testDefaultsInArray(_t);
    }
    static public inline function testSingletons(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSingletons.testSingletons(_t);
    }
    static public inline function testStructNonStruct(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testStructNonStruct.testStructNonStruct(_t);
    }
    /**
        A version of a bug reported on golang-nuts. Also tests top-level
        slice of interfaces. The issue was registering *T caused T to be
        stored as the concrete type.
    **/
    static public inline function testInterfaceIndirect(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testInterfaceIndirect.testInterfaceIndirect(_t);
    }
    static public inline function testDecodeIntoNothing(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDecodeIntoNothing.testDecodeIntoNothing(_t);
    }
    static public inline function testIgnoreRecursiveType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIgnoreRecursiveType.testIgnoreRecursiveType(_t);
    }
    static public inline function testNestedInterfaces(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testNestedInterfaces.testNestedInterfaces(_t);
    }
    static public inline function testMapBug1(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testMapBug1.testMapBug1(_t);
    }
    static public inline function testGobMapInterfaceEncode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobMapInterfaceEncode.testGobMapInterfaceEncode(_t);
    }
    static public inline function testSliceReusesMemory(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSliceReusesMemory.testSliceReusesMemory(_t);
    }
    /**
        Used to crash: negative count in recvMessage.
    **/
    static public inline function testBadCount(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testBadCount.testBadCount(_t);
    }
    /**
        Verify that sequential Decoders built on a single input will
        succeed if the input implements ReadByte and there is no
        type information in the stream.
    **/
    static public inline function testSequentialDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSequentialDecoder.testSequentialDecoder(_t);
    }
    static public inline function testChanFuncIgnored(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testChanFuncIgnored.testChanFuncIgnored(_t);
    }
    static public inline function testSliceIncompatibility(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSliceIncompatibility.testSliceIncompatibility(_t);
    }
    static public inline function testGobPtrSlices(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobPtrSlices.testGobPtrSlices(_t);
    }
    /**
        getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
        a *map and then tried to reuse its engine to decode the inner map.
    **/
    static public inline function testPtrToMapOfMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testPtrToMapOfMap.testPtrToMapOfMap(_t);
    }
    /**
        Test that untyped nils generate an error, not a panic.
        See Issue 16204.
    **/
    static public inline function testCatchInvalidNilValue(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testCatchInvalidNilValue.testCatchInvalidNilValue(_t);
    }
    /**
        A top-level nil pointer generates a panic with a helpful string-valued message.
    **/
    static public inline function testTopLevelNilPointer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testTopLevelNilPointer.testTopLevelNilPointer(_t);
    }
    static public inline function testNilPointerPanics(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testNilPointerPanics.testNilPointerPanics(_t);
    }
    static public inline function testNilPointerInsideInterface(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testNilPointerInsideInterface.testNilPointerInsideInterface(_t);
    }
    /**
        Test that a failed compilation doesn't leave around an executable encoder.
        Issue 3723.
    **/
    static public inline function testMutipleEncodingsOfBadType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testMutipleEncodingsOfBadType.testMutipleEncodingsOfBadType(_t);
    }
    static public inline function test29ElementSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_test29ElementSlice.test29ElementSlice(_t);
    }
    /**
        Don't crash, just give error when allocating a huge slice.
        Issue 8084.
    **/
    static public inline function testErrorForHugeSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testErrorForHugeSlice.testErrorForHugeSlice(_t);
    }
    /**
        TestBadData tests that various problems caused by malformed input
        are caught as errors and do not cause panics.
    **/
    static public inline function testBadData(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testBadData.testBadData(_t);
    }
    static public inline function testDecodeErrorMultipleTypes(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDecodeErrorMultipleTypes.testDecodeErrorMultipleTypes(_t);
    }
    /**
        Issue 24075
    **/
    static public inline function testMarshalFloatMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testMarshalFloatMap.testMarshalFloatMap(_t);
    }
    static public inline function testDecodePartial(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDecodePartial.testDecodePartial(_t);
    }
    static public inline function testDecoderOverflow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testDecoderOverflow.testDecoderOverflow(_t);
    }
    static public inline function testGobEncoderField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderField.testGobEncoderField(_t);
    }
    /**
        Even though the field is a value, we can still take its address
        and should be able to call the methods.
    **/
    static public inline function testGobEncoderValueField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderValueField.testGobEncoderValueField(_t);
    }
    /**
        GobEncode/Decode should work even if the value is
        more indirect than the receiver.
    **/
    static public inline function testGobEncoderIndirectField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderIndirectField.testGobEncoderIndirectField(_t);
    }
    /**
        Test with a large field with methods.
    **/
    static public inline function testGobEncoderArrayField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderArrayField.testGobEncoderArrayField(_t);
    }
    /**
        Test an indirection to a large field with methods.
    **/
    static public inline function testGobEncoderIndirectArrayField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderIndirectArrayField.testGobEncoderIndirectArrayField(_t);
    }
    /**
        As long as the fields have the same name and implement the
        interface, we can cross-connect them. Not sure it's useful
        and may even be bad but it works and it's hard to prevent
        without exposing the contents of the object, which would
        defeat the purpose.
    **/
    static public inline function testGobEncoderFieldsOfDifferentType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderFieldsOfDifferentType.testGobEncoderFieldsOfDifferentType(_t);
    }
    /**
        Test that we can encode a value and decode into a pointer.
    **/
    static public inline function testGobEncoderValueEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderValueEncoder.testGobEncoderValueEncoder(_t);
    }
    /**
        Test that we can use a value then a pointer type of a GobEncoder
        in the same encoded value. Bug 4647.
    **/
    static public inline function testGobEncoderValueThenPointer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderValueThenPointer.testGobEncoderValueThenPointer(_t);
    }
    /**
        Test that we can use a pointer then a value type of a GobEncoder
        in the same encoded value.
    **/
    static public inline function testGobEncoderPointerThenValue(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderPointerThenValue.testGobEncoderPointerThenValue(_t);
    }
    static public inline function testGobEncoderFieldTypeError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderFieldTypeError.testGobEncoderFieldTypeError(_t);
    }
    /**
        Even though ByteStruct is a struct, it's treated as a singleton at the top level.
    **/
    static public inline function testGobEncoderStructSingleton(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderStructSingleton.testGobEncoderStructSingleton(_t);
    }
    static public inline function testGobEncoderNonStructSingleton(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderNonStructSingleton.testGobEncoderNonStructSingleton(_t);
    }
    static public inline function testGobEncoderIgnoreStructField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderIgnoreStructField.testGobEncoderIgnoreStructField(_t);
    }
    static public inline function testGobEncoderIgnoreNonStructField(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderIgnoreNonStructField.testGobEncoderIgnoreNonStructField(_t);
    }
    static public inline function testGobEncoderIgnoreNilEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderIgnoreNilEncoder.testGobEncoderIgnoreNilEncoder(_t);
    }
    /**
        This was a bug: the receiver has a different indirection level
        than the variable.
    **/
    static public inline function testGobEncoderExtraIndirect(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncoderExtraIndirect.testGobEncoderExtraIndirect(_t);
    }
    static public inline function testGobEncodeIsZero(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncodeIsZero.testGobEncodeIsZero(_t);
    }
    static public inline function testGobEncodePtrError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testGobEncodePtrError.testGobEncodePtrError(_t);
    }
    static public inline function testNetIP(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testNetIP.testNetIP(_t);
    }
    static public inline function testIgnoreDepthLimit(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testIgnoreDepthLimit.testIgnoreDepthLimit(_t);
    }
    static public inline function benchmarkEndToEndPipe(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEndToEndPipe.benchmarkEndToEndPipe(_b);
    }
    static public inline function benchmarkEndToEndByteBuffer(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEndToEndByteBuffer.benchmarkEndToEndByteBuffer(_b);
    }
    static public inline function benchmarkEndToEndSliceByteBuffer(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEndToEndSliceByteBuffer.benchmarkEndToEndSliceByteBuffer(_b);
    }
    static public inline function testCountEncodeMallocs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testCountEncodeMallocs.testCountEncodeMallocs(_t);
    }
    static public inline function testCountDecodeMallocs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testCountDecodeMallocs.testCountDecodeMallocs(_t);
    }
    static public inline function benchmarkEncodeComplex128Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEncodeComplex128Slice.benchmarkEncodeComplex128Slice(_b);
    }
    static public inline function benchmarkEncodeFloat64Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEncodeFloat64Slice.benchmarkEncodeFloat64Slice(_b);
    }
    static public inline function benchmarkEncodeInt32Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEncodeInt32Slice.benchmarkEncodeInt32Slice(_b);
    }
    static public inline function benchmarkEncodeStringSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEncodeStringSlice.benchmarkEncodeStringSlice(_b);
    }
    static public inline function benchmarkEncodeInterfaceSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkEncodeInterfaceSlice.benchmarkEncodeInterfaceSlice(_b);
    }
    static public inline function benchmarkDecodeComplex128Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeComplex128Slice.benchmarkDecodeComplex128Slice(_b);
    }
    static public inline function benchmarkDecodeFloat64Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeFloat64Slice.benchmarkDecodeFloat64Slice(_b);
    }
    static public inline function benchmarkDecodeInt32Slice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeInt32Slice.benchmarkDecodeInt32Slice(_b);
    }
    static public inline function benchmarkDecodeStringSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeStringSlice.benchmarkDecodeStringSlice(_b);
    }
    static public inline function benchmarkDecodeStringsSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeStringsSlice.benchmarkDecodeStringsSlice(_b);
    }
    static public inline function benchmarkDecodeBytesSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeBytesSlice.benchmarkDecodeBytesSlice(_b);
    }
    static public inline function benchmarkDecodeInterfaceSlice(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeInterfaceSlice.benchmarkDecodeInterfaceSlice(_b);
    }
    static public inline function benchmarkDecodeMap(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkDecodeMap.benchmarkDecodeMap(_b);
    }
    /**
        RegisterName is like Register but uses the provided name rather than the
        type's default.
    **/
    static public inline function registerName(_name:String, _value:stdgo.AnyInterface):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.encoding.gob.Gob_registerName.registerName(_name, _value);
    }
    /**
        Register records a type, identified by a value for that type, under its
        internal type name. That name will identify the concrete type of a value
        sent or received as an interface variable. Only types that will be
        transferred as implementations of interface values need to be registered.
        Expecting to be used only during initialization, it panics if the mapping
        between types and names is not a bijection.
    **/
    static public inline function register(_value:stdgo.AnyInterface):Void {
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.encoding.gob.Gob_register.register(_value);
    }
    /**
        Sanity checks
    **/
    static public inline function testBasic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testBasic.testBasic(_t);
    }
    /**
        Reregister some basic types to check registration is idempotent.
    **/
    static public inline function testReregistration(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testReregistration.testReregistration(_t);
    }
    static public inline function testArrayType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testArrayType.testArrayType(_t);
    }
    static public inline function testSliceType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testSliceType.testSliceType(_t);
    }
    static public inline function testMapType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testMapType.testMapType(_t);
    }
    static public inline function testStructType(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testStructType.testStructType(_t);
    }
    /**
        Should be OK to register the same type multiple times, as long as they're
        at the same level of indirection.
    **/
    static public inline function testRegistration(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testRegistration.testRegistration(_t);
    }
    /**
        See comment in type.go/Register.
    **/
    static public inline function testRegistrationNaming(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testRegistrationNaming.testRegistrationNaming(_t);
    }
    static public inline function testStressParallel(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testStressParallel.testStressParallel(_t);
    }
    /**
        Issue 23328. Note that this test name is known to cmd/dist/test.go.
    **/
    static public inline function testTypeRace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.gob.Gob_testTypeRace.testTypeRace(_t);
    }
}
