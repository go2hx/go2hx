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
@:forward @:forward.new abstract Squarer_static_extension(stdgo._internal.encoding.gob.Gob.Squarer_static_extension) from stdgo._internal.encoding.gob.Gob.Squarer_static_extension to stdgo._internal.encoding.gob.Gob.Squarer_static_extension {

}
typedef Squarer = stdgo._internal.encoding.gob.Gob.Squarer;
@:forward @:forward.new abstract T_interfaceIndirectTestI_static_extension(stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI_static_extension) from stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI_static_extension to stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI_static_extension {

}
typedef T_interfaceIndirectTestI = stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI;
@:forward @:forward.new abstract T_gobType_static_extension(stdgo._internal.encoding.gob.Gob.T_gobType_static_extension) from stdgo._internal.encoding.gob.Gob.T_gobType_static_extension to stdgo._internal.encoding.gob.Gob.T_gobType_static_extension {

}
typedef T_gobType = stdgo._internal.encoding.gob.Gob.T_gobType;
@:forward @:forward.new abstract GobEncoder_static_extension(stdgo._internal.encoding.gob.Gob.GobEncoder_static_extension) from stdgo._internal.encoding.gob.Gob.GobEncoder_static_extension to stdgo._internal.encoding.gob.Gob.GobEncoder_static_extension {

}
typedef GobEncoder = stdgo._internal.encoding.gob.Gob.GobEncoder;
@:forward @:forward.new abstract GobDecoder_static_extension(stdgo._internal.encoding.gob.Gob.GobDecoder_static_extension) from stdgo._internal.encoding.gob.Gob.GobDecoder_static_extension to stdgo._internal.encoding.gob.Gob.GobDecoder_static_extension {

}
typedef GobDecoder = stdgo._internal.encoding.gob.Gob.GobDecoder;
@:forward @:forward.new abstract EncodeT(stdgo._internal.encoding.gob.Gob.EncodeT) from stdgo._internal.encoding.gob.Gob.EncodeT to stdgo._internal.encoding.gob.Gob.EncodeT {

}
@:forward @:forward.new abstract T0(stdgo._internal.encoding.gob.Gob.T0) from stdgo._internal.encoding.gob.Gob.T0 to stdgo._internal.encoding.gob.Gob.T0 {

}
@:forward @:forward.new abstract T1(stdgo._internal.encoding.gob.Gob.T1) from stdgo._internal.encoding.gob.Gob.T1 to stdgo._internal.encoding.gob.Gob.T1 {

}
@:forward @:forward.new abstract T2(stdgo._internal.encoding.gob.Gob.T2) from stdgo._internal.encoding.gob.Gob.T2 to stdgo._internal.encoding.gob.Gob.T2 {

}
@:forward @:forward.new abstract RT0(stdgo._internal.encoding.gob.Gob.RT0) from stdgo._internal.encoding.gob.Gob.RT0 to stdgo._internal.encoding.gob.Gob.RT0 {

}
@:forward @:forward.new abstract RT1(stdgo._internal.encoding.gob.Gob.RT1) from stdgo._internal.encoding.gob.Gob.RT1 to stdgo._internal.encoding.gob.Gob.RT1 {

}
@:forward @:forward.new abstract IT0(stdgo._internal.encoding.gob.Gob.IT0) from stdgo._internal.encoding.gob.Gob.IT0 to stdgo._internal.encoding.gob.Gob.IT0 {

}
@:forward @:forward.new abstract Indirect(stdgo._internal.encoding.gob.Gob.Indirect) from stdgo._internal.encoding.gob.Gob.Indirect to stdgo._internal.encoding.gob.Gob.Indirect {

}
@:forward @:forward.new abstract Direct(stdgo._internal.encoding.gob.Gob.Direct) from stdgo._internal.encoding.gob.Gob.Direct to stdgo._internal.encoding.gob.Gob.Direct {

}
@:forward @:forward.new abstract Point(stdgo._internal.encoding.gob.Gob.Point) from stdgo._internal.encoding.gob.Gob.Point to stdgo._internal.encoding.gob.Gob.Point {

}
@:forward @:forward.new abstract InterfaceItem(stdgo._internal.encoding.gob.Gob.InterfaceItem) from stdgo._internal.encoding.gob.Gob.InterfaceItem to stdgo._internal.encoding.gob.Gob.InterfaceItem {

}
@:forward @:forward.new abstract NoInterfaceItem(stdgo._internal.encoding.gob.Gob.NoInterfaceItem) from stdgo._internal.encoding.gob.Gob.NoInterfaceItem to stdgo._internal.encoding.gob.Gob.NoInterfaceItem {

}
@:forward @:forward.new abstract BasicInterfaceItem(stdgo._internal.encoding.gob.Gob.BasicInterfaceItem) from stdgo._internal.encoding.gob.Gob.BasicInterfaceItem to stdgo._internal.encoding.gob.Gob.BasicInterfaceItem {

}
@:forward @:forward.new abstract PtrInterfaceItem(stdgo._internal.encoding.gob.Gob.PtrInterfaceItem) from stdgo._internal.encoding.gob.Gob.PtrInterfaceItem to stdgo._internal.encoding.gob.Gob.PtrInterfaceItem {

}
@:forward @:forward.new abstract U(stdgo._internal.encoding.gob.Gob.U) from stdgo._internal.encoding.gob.Gob.U to stdgo._internal.encoding.gob.Gob.U {

}
@:forward @:forward.new abstract OnTheFly(stdgo._internal.encoding.gob.Gob.OnTheFly) from stdgo._internal.encoding.gob.Gob.OnTheFly to stdgo._internal.encoding.gob.Gob.OnTheFly {

}
@:forward @:forward.new abstract DT(stdgo._internal.encoding.gob.Gob.DT) from stdgo._internal.encoding.gob.Gob.DT to stdgo._internal.encoding.gob.Gob.DT {

}
@:forward @:forward.new abstract LargeSliceByte(stdgo._internal.encoding.gob.Gob.LargeSliceByte) from stdgo._internal.encoding.gob.Gob.LargeSliceByte to stdgo._internal.encoding.gob.Gob.LargeSliceByte {

}
@:forward @:forward.new abstract LargeSliceInt8(stdgo._internal.encoding.gob.Gob.LargeSliceInt8) from stdgo._internal.encoding.gob.Gob.LargeSliceInt8 to stdgo._internal.encoding.gob.Gob.LargeSliceInt8 {

}
@:forward @:forward.new abstract StringPair(stdgo._internal.encoding.gob.Gob.StringPair) from stdgo._internal.encoding.gob.Gob.StringPair to stdgo._internal.encoding.gob.Gob.StringPair {

}
@:forward @:forward.new abstract LargeSliceStruct(stdgo._internal.encoding.gob.Gob.LargeSliceStruct) from stdgo._internal.encoding.gob.Gob.LargeSliceStruct to stdgo._internal.encoding.gob.Gob.LargeSliceStruct {

}
@:forward @:forward.new abstract LargeSliceString(stdgo._internal.encoding.gob.Gob.LargeSliceString) from stdgo._internal.encoding.gob.Gob.LargeSliceString to stdgo._internal.encoding.gob.Gob.LargeSliceString {

}
@:forward @:forward.new abstract T_decoderState(stdgo._internal.encoding.gob.Gob.T_decoderState) from stdgo._internal.encoding.gob.Gob.T_decoderState to stdgo._internal.encoding.gob.Gob.T_decoderState {

}
@:forward @:forward.new abstract T_decBuffer(stdgo._internal.encoding.gob.Gob.T_decBuffer) from stdgo._internal.encoding.gob.Gob.T_decBuffer to stdgo._internal.encoding.gob.Gob.T_decBuffer {

}
@:forward @:forward.new abstract T_decInstr(stdgo._internal.encoding.gob.Gob.T_decInstr) from stdgo._internal.encoding.gob.Gob.T_decInstr to stdgo._internal.encoding.gob.Gob.T_decInstr {

}
@:forward @:forward.new abstract T_decEngine(stdgo._internal.encoding.gob.Gob.T_decEngine) from stdgo._internal.encoding.gob.Gob.T_decEngine to stdgo._internal.encoding.gob.Gob.T_decEngine {

}
@:forward @:forward.new abstract T_emptyStruct(stdgo._internal.encoding.gob.Gob.T_emptyStruct) from stdgo._internal.encoding.gob.Gob.T_emptyStruct to stdgo._internal.encoding.gob.Gob.T_emptyStruct {

}
@:forward @:forward.new abstract Decoder(stdgo._internal.encoding.gob.Gob.Decoder) from stdgo._internal.encoding.gob.Gob.Decoder to stdgo._internal.encoding.gob.Gob.Decoder {

}
@:forward @:forward.new abstract T_encoderState(stdgo._internal.encoding.gob.Gob.T_encoderState) from stdgo._internal.encoding.gob.Gob.T_encoderState to stdgo._internal.encoding.gob.Gob.T_encoderState {

}
@:forward @:forward.new abstract T_encBuffer(stdgo._internal.encoding.gob.Gob.T_encBuffer) from stdgo._internal.encoding.gob.Gob.T_encBuffer to stdgo._internal.encoding.gob.Gob.T_encBuffer {

}
@:forward @:forward.new abstract T_encInstr(stdgo._internal.encoding.gob.Gob.T_encInstr) from stdgo._internal.encoding.gob.Gob.T_encInstr to stdgo._internal.encoding.gob.Gob.T_encInstr {

}
@:forward @:forward.new abstract T_encEngine(stdgo._internal.encoding.gob.Gob.T_encEngine) from stdgo._internal.encoding.gob.Gob.T_encEngine to stdgo._internal.encoding.gob.Gob.T_encEngine {

}
@:forward @:forward.new abstract Encoder(stdgo._internal.encoding.gob.Gob.Encoder) from stdgo._internal.encoding.gob.Gob.Encoder to stdgo._internal.encoding.gob.Gob.Encoder {

}
@:forward @:forward.new abstract ET0(stdgo._internal.encoding.gob.Gob.ET0) from stdgo._internal.encoding.gob.Gob.ET0 to stdgo._internal.encoding.gob.Gob.ET0 {

}
@:forward @:forward.new abstract ET2(stdgo._internal.encoding.gob.Gob.ET2) from stdgo._internal.encoding.gob.Gob.ET2 to stdgo._internal.encoding.gob.Gob.ET2 {

}
@:forward @:forward.new abstract ET1(stdgo._internal.encoding.gob.Gob.ET1) from stdgo._internal.encoding.gob.Gob.ET1 to stdgo._internal.encoding.gob.Gob.ET1 {

}
@:forward @:forward.new abstract ET3(stdgo._internal.encoding.gob.Gob.ET3) from stdgo._internal.encoding.gob.Gob.ET3 to stdgo._internal.encoding.gob.Gob.ET3 {

}
@:forward @:forward.new abstract ET4(stdgo._internal.encoding.gob.Gob.ET4) from stdgo._internal.encoding.gob.Gob.ET4 to stdgo._internal.encoding.gob.Gob.ET4 {

}
@:forward @:forward.new abstract SingleTest(stdgo._internal.encoding.gob.Gob.SingleTest) from stdgo._internal.encoding.gob.Gob.SingleTest to stdgo._internal.encoding.gob.Gob.SingleTest {

}
@:forward @:forward.new abstract T_interfaceIndirectTestT(stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT) from stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT to stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT {

}
@:forward @:forward.new abstract Struct0(stdgo._internal.encoding.gob.Gob.Struct0) from stdgo._internal.encoding.gob.Gob.Struct0 to stdgo._internal.encoding.gob.Gob.Struct0 {

}
@:forward @:forward.new abstract NewType0(stdgo._internal.encoding.gob.Gob.NewType0) from stdgo._internal.encoding.gob.Gob.NewType0 to stdgo._internal.encoding.gob.Gob.NewType0 {

}
@:forward @:forward.new abstract T_ignoreTest(stdgo._internal.encoding.gob.Gob.T_ignoreTest) from stdgo._internal.encoding.gob.Gob.T_ignoreTest to stdgo._internal.encoding.gob.Gob.T_ignoreTest {

}
@:forward @:forward.new abstract Bug0Outer(stdgo._internal.encoding.gob.Gob.Bug0Outer) from stdgo._internal.encoding.gob.Gob.Bug0Outer to stdgo._internal.encoding.gob.Gob.Bug0Outer {

}
@:forward @:forward.new abstract Bug0Inner(stdgo._internal.encoding.gob.Gob.Bug0Inner) from stdgo._internal.encoding.gob.Gob.Bug0Inner to stdgo._internal.encoding.gob.Gob.Bug0Inner {

}
@:forward @:forward.new abstract Bug1Elem(stdgo._internal.encoding.gob.Gob.Bug1Elem) from stdgo._internal.encoding.gob.Gob.Bug1Elem to stdgo._internal.encoding.gob.Gob.Bug1Elem {

}
@:forward @:forward.new abstract Bug2(stdgo._internal.encoding.gob.Gob.Bug2) from stdgo._internal.encoding.gob.Gob.Bug2 to stdgo._internal.encoding.gob.Gob.Bug2 {

}
@:forward @:forward.new abstract Bug3(stdgo._internal.encoding.gob.Gob.Bug3) from stdgo._internal.encoding.gob.Gob.Bug3 to stdgo._internal.encoding.gob.Gob.Bug3 {

}
@:forward @:forward.new abstract Bug4Public(stdgo._internal.encoding.gob.Gob.Bug4Public) from stdgo._internal.encoding.gob.Gob.Bug4Public to stdgo._internal.encoding.gob.Gob.Bug4Public {

}
@:forward @:forward.new abstract Bug4Secret(stdgo._internal.encoding.gob.Gob.Bug4Secret) from stdgo._internal.encoding.gob.Gob.Bug4Secret to stdgo._internal.encoding.gob.Gob.Bug4Secret {

}
@:forward @:forward.new abstract Z(stdgo._internal.encoding.gob.Gob.Z) from stdgo._internal.encoding.gob.Gob.Z to stdgo._internal.encoding.gob.Gob.Z {

}
@:forward @:forward.new abstract T_badDataTest(stdgo._internal.encoding.gob.Gob.T_badDataTest) from stdgo._internal.encoding.gob.Gob.T_badDataTest to stdgo._internal.encoding.gob.Gob.T_badDataTest {

}
@:forward @:forward.new abstract T_gobError(stdgo._internal.encoding.gob.Gob.T_gobError) from stdgo._internal.encoding.gob.Gob.T_gobError to stdgo._internal.encoding.gob.Gob.T_gobError {

}
@:forward @:forward.new abstract ByteStruct(stdgo._internal.encoding.gob.Gob.ByteStruct) from stdgo._internal.encoding.gob.Gob.ByteStruct to stdgo._internal.encoding.gob.Gob.ByteStruct {

}
@:forward @:forward.new abstract StringStruct(stdgo._internal.encoding.gob.Gob.StringStruct) from stdgo._internal.encoding.gob.Gob.StringStruct to stdgo._internal.encoding.gob.Gob.StringStruct {

}
@:forward @:forward.new abstract ArrayStruct(stdgo._internal.encoding.gob.Gob.ArrayStruct) from stdgo._internal.encoding.gob.Gob.ArrayStruct to stdgo._internal.encoding.gob.Gob.ArrayStruct {

}
@:forward @:forward.new abstract GobTest0(stdgo._internal.encoding.gob.Gob.GobTest0) from stdgo._internal.encoding.gob.Gob.GobTest0 to stdgo._internal.encoding.gob.Gob.GobTest0 {

}
@:forward @:forward.new abstract GobTest1(stdgo._internal.encoding.gob.Gob.GobTest1) from stdgo._internal.encoding.gob.Gob.GobTest1 to stdgo._internal.encoding.gob.Gob.GobTest1 {

}
@:forward @:forward.new abstract GobTest2(stdgo._internal.encoding.gob.Gob.GobTest2) from stdgo._internal.encoding.gob.Gob.GobTest2 to stdgo._internal.encoding.gob.Gob.GobTest2 {

}
@:forward @:forward.new abstract GobTest3(stdgo._internal.encoding.gob.Gob.GobTest3) from stdgo._internal.encoding.gob.Gob.GobTest3 to stdgo._internal.encoding.gob.Gob.GobTest3 {

}
@:forward @:forward.new abstract GobTest4(stdgo._internal.encoding.gob.Gob.GobTest4) from stdgo._internal.encoding.gob.Gob.GobTest4 to stdgo._internal.encoding.gob.Gob.GobTest4 {

}
@:forward @:forward.new abstract GobTest5(stdgo._internal.encoding.gob.Gob.GobTest5) from stdgo._internal.encoding.gob.Gob.GobTest5 to stdgo._internal.encoding.gob.Gob.GobTest5 {

}
@:forward @:forward.new abstract GobTest6(stdgo._internal.encoding.gob.Gob.GobTest6) from stdgo._internal.encoding.gob.Gob.GobTest6 to stdgo._internal.encoding.gob.Gob.GobTest6 {

}
@:forward @:forward.new abstract GobTest7(stdgo._internal.encoding.gob.Gob.GobTest7) from stdgo._internal.encoding.gob.Gob.GobTest7 to stdgo._internal.encoding.gob.Gob.GobTest7 {

}
@:forward @:forward.new abstract GobTestIgnoreEncoder(stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder) from stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder to stdgo._internal.encoding.gob.Gob.GobTestIgnoreEncoder {

}
@:forward @:forward.new abstract GobTestValueEncDec(stdgo._internal.encoding.gob.Gob.GobTestValueEncDec) from stdgo._internal.encoding.gob.Gob.GobTestValueEncDec to stdgo._internal.encoding.gob.Gob.GobTestValueEncDec {

}
@:forward @:forward.new abstract GobTestIndirectEncDec(stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec) from stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec to stdgo._internal.encoding.gob.Gob.GobTestIndirectEncDec {

}
@:forward @:forward.new abstract GobTestArrayEncDec(stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec) from stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec to stdgo._internal.encoding.gob.Gob.GobTestArrayEncDec {

}
@:forward @:forward.new abstract GobTestIndirectArrayEncDec(stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec) from stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec to stdgo._internal.encoding.gob.Gob.GobTestIndirectArrayEncDec {

}
@:forward @:forward.new abstract T_gobDecoderBug0(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0) from stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0 to stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0 {

}
@:forward @:forward.new abstract T_isZeroBug(stdgo._internal.encoding.gob.Gob.T_isZeroBug) from stdgo._internal.encoding.gob.Gob.T_isZeroBug to stdgo._internal.encoding.gob.Gob.T_isZeroBug {

}
@:forward @:forward.new abstract T_isZeroBugInterface(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface) from stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface to stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface {

}
@:forward @:forward.new abstract Bench(stdgo._internal.encoding.gob.Gob.Bench) from stdgo._internal.encoding.gob.Gob.Bench to stdgo._internal.encoding.gob.Gob.Bench {

}
@:forward @:forward.new abstract T_benchmarkBuf(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf) from stdgo._internal.encoding.gob.Gob.T_benchmarkBuf to stdgo._internal.encoding.gob.Gob.T_benchmarkBuf {

}
@:forward @:forward.new abstract T_userTypeInfo(stdgo._internal.encoding.gob.Gob.T_userTypeInfo) from stdgo._internal.encoding.gob.Gob.T_userTypeInfo to stdgo._internal.encoding.gob.Gob.T_userTypeInfo {

}
@:forward @:forward.new abstract CommonType(stdgo._internal.encoding.gob.Gob.CommonType) from stdgo._internal.encoding.gob.Gob.CommonType to stdgo._internal.encoding.gob.Gob.CommonType {

}
@:forward @:forward.new abstract T_arrayType(stdgo._internal.encoding.gob.Gob.T_arrayType) from stdgo._internal.encoding.gob.Gob.T_arrayType to stdgo._internal.encoding.gob.Gob.T_arrayType {

}
@:forward @:forward.new abstract T_gobEncoderType(stdgo._internal.encoding.gob.Gob.T_gobEncoderType) from stdgo._internal.encoding.gob.Gob.T_gobEncoderType to stdgo._internal.encoding.gob.Gob.T_gobEncoderType {

}
@:forward @:forward.new abstract T_mapType(stdgo._internal.encoding.gob.Gob.T_mapType) from stdgo._internal.encoding.gob.Gob.T_mapType to stdgo._internal.encoding.gob.Gob.T_mapType {

}
@:forward @:forward.new abstract T_sliceType(stdgo._internal.encoding.gob.Gob.T_sliceType) from stdgo._internal.encoding.gob.Gob.T_sliceType to stdgo._internal.encoding.gob.Gob.T_sliceType {

}
@:forward @:forward.new abstract T_fieldType(stdgo._internal.encoding.gob.Gob.T_fieldType) from stdgo._internal.encoding.gob.Gob.T_fieldType to stdgo._internal.encoding.gob.Gob.T_fieldType {

}
@:forward @:forward.new abstract T_structType(stdgo._internal.encoding.gob.Gob.T_structType) from stdgo._internal.encoding.gob.Gob.T_structType to stdgo._internal.encoding.gob.Gob.T_structType {

}
@:forward @:forward.new abstract T_wireType(stdgo._internal.encoding.gob.Gob.T_wireType) from stdgo._internal.encoding.gob.Gob.T_wireType to stdgo._internal.encoding.gob.Gob.T_wireType {

}
@:forward @:forward.new abstract T_typeInfo(stdgo._internal.encoding.gob.Gob.T_typeInfo) from stdgo._internal.encoding.gob.Gob.T_typeInfo to stdgo._internal.encoding.gob.Gob.T_typeInfo {

}
@:forward @:forward.new abstract T_typeT(stdgo._internal.encoding.gob.Gob.T_typeT) from stdgo._internal.encoding.gob.Gob.T_typeT to stdgo._internal.encoding.gob.Gob.T_typeT {

}
@:forward @:forward.new abstract Bar(stdgo._internal.encoding.gob.Gob.Bar) from stdgo._internal.encoding.gob.Gob.Bar to stdgo._internal.encoding.gob.Gob.Bar {

}
@:forward @:forward.new abstract Foo(stdgo._internal.encoding.gob.Gob.Foo) from stdgo._internal.encoding.gob.Gob.Foo to stdgo._internal.encoding.gob.Gob.Foo {

}
@:forward @:forward.new abstract N1(stdgo._internal.encoding.gob.Gob.N1) from stdgo._internal.encoding.gob.Gob.N1 to stdgo._internal.encoding.gob.Gob.N1 {

}
@:forward @:forward.new abstract N2(stdgo._internal.encoding.gob.Gob.N2) from stdgo._internal.encoding.gob.Gob.N2 to stdgo._internal.encoding.gob.Gob.N2 {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_0_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_0_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_0_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_0_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.gob.Gob.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_1_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_1_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_1_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_1_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.gob.Gob.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_2_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_2_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_2_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_2_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.gob.Gob.T__struct_2;
@:forward @:forward.new abstract T__struct_3_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_3_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_3_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_3_asInterface {

}
@:forward @:forward.new abstract T__struct_3_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_3_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_3_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.encoding.gob.Gob.T__struct_3;
@:forward @:forward.new abstract T__struct_4_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_4_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_4_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_4_asInterface {

}
@:forward @:forward.new abstract T__struct_4_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_4_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_4_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.encoding.gob.Gob.T__struct_4;
@:forward @:forward.new abstract T__struct_5_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_5_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_5_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_5_asInterface {

}
@:forward @:forward.new abstract T__struct_5_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_5_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_5_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.encoding.gob.Gob.T__struct_5;
@:forward @:forward.new abstract T__struct_6_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_6_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_6_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_6_asInterface {

}
@:forward @:forward.new abstract T__struct_6_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_6_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_6_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.encoding.gob.Gob.T__struct_6;
@:forward @:forward.new abstract T__struct_7_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_7_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_7_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_7_asInterface {

}
@:forward @:forward.new abstract T__struct_7_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_7_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_7_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.encoding.gob.Gob.T__struct_7;
@:forward @:forward.new abstract T__struct_8_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_8_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_8_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_8_asInterface {

}
@:forward @:forward.new abstract T__struct_8_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_8_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_8_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.encoding.gob.Gob.T__struct_8;
@:forward @:forward.new abstract T__struct_9_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_9_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_9_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_9_asInterface {

}
@:forward @:forward.new abstract T__struct_9_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_9_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_9_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_9_static_extension {

}
typedef T__struct_9 = stdgo._internal.encoding.gob.Gob.T__struct_9;
@:forward @:forward.new abstract T__struct_10_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_10_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_10_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_10_asInterface {

}
@:forward @:forward.new abstract T__struct_10_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_10_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_10_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_10_static_extension {

}
typedef T__struct_10 = stdgo._internal.encoding.gob.Gob.T__struct_10;
@:forward @:forward.new abstract T__struct_11_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_11_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_11_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_11_asInterface {

}
@:forward @:forward.new abstract T__struct_11_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_11_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_11_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_11_static_extension {

}
typedef T__struct_11 = stdgo._internal.encoding.gob.Gob.T__struct_11;
@:forward @:forward.new abstract T__struct_12_asInterface(stdgo._internal.encoding.gob.Gob.T__struct_12_asInterface) from stdgo._internal.encoding.gob.Gob.T__struct_12_asInterface to stdgo._internal.encoding.gob.Gob.T__struct_12_asInterface {

}
@:forward @:forward.new abstract T__struct_12_static_extension(stdgo._internal.encoding.gob.Gob.T__struct_12_static_extension) from stdgo._internal.encoding.gob.Gob.T__struct_12_static_extension to stdgo._internal.encoding.gob.Gob.T__struct_12_static_extension {

}
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
    Test basic encode/decode routines for unsigned integers
**/
function testUintCodec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUintCodec(t);
    }
/**
    Test basic encode/decode routines for signed integers
**/
function testIntCodec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIntCodec(t);
    }
/**
    Test instruction execution for encoding.
    Do not run the machine yet; instead do individual instructions crafted by hand.
**/
function testScalarEncInstructions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testScalarEncInstructions(t);
    }
/**
    Test instruction execution for decoding.
    Do not run the machine yet; instead do individual instructions crafted by hand.
**/
function testScalarDecInstructions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testScalarDecInstructions(t);
    }
@:forward @:forward.new abstract T_testEndToEnd_54___localname___T2(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_54___localname___T2 {

}
@:forward @:forward.new abstract T_testEndToEnd_55___localname___T3(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_55___localname___T3 {

}
@:forward @:forward.new abstract T_testEndToEnd_56___localname___T1(stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1) from stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1 to stdgo._internal.encoding.gob.Gob.T_testEndToEnd_56___localname___T1 {

}
function testEndToEnd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEndToEnd(t);
    }
@:forward @:forward.new abstract T_testOverflow_57___localname___inputT(stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT) from stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT to stdgo._internal.encoding.gob.Gob.T_testOverflow_57___localname___inputT {

}
@:forward @:forward.new abstract T_testOverflow_58___localname___outi8(stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8) from stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8 to stdgo._internal.encoding.gob.Gob.T_testOverflow_58___localname___outi8 {

}
@:forward @:forward.new abstract T_testOverflow_59___localname___outi16(stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16) from stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16 to stdgo._internal.encoding.gob.Gob.T_testOverflow_59___localname___outi16 {

}
@:forward @:forward.new abstract T_testOverflow_60___localname___outi32(stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_60___localname___outi32 {

}
@:forward @:forward.new abstract T_testOverflow_61___localname___outu8(stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8) from stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8 to stdgo._internal.encoding.gob.Gob.T_testOverflow_61___localname___outu8 {

}
@:forward @:forward.new abstract T_testOverflow_62___localname___outu16(stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16) from stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16 to stdgo._internal.encoding.gob.Gob.T_testOverflow_62___localname___outu16 {

}
@:forward @:forward.new abstract T_testOverflow_63___localname___outu32(stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_63___localname___outu32 {

}
@:forward @:forward.new abstract T_testOverflow_64___localname___outf32(stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32) from stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32 to stdgo._internal.encoding.gob.Gob.T_testOverflow_64___localname___outf32 {

}
@:forward @:forward.new abstract T_testOverflow_65___localname___outc64(stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64) from stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64 to stdgo._internal.encoding.gob.Gob.T_testOverflow_65___localname___outc64 {

}
function testOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testOverflow(t);
    }
@:forward @:forward.new abstract T_testNesting_66___localname___RT(stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT) from stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT to stdgo._internal.encoding.gob.Gob.T_testNesting_66___localname___RT {

}
function testNesting(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNesting(t);
    }
function testAutoIndirection(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testAutoIndirection(t);
    }
function testReorderedFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testReorderedFields(t);
    }
function testIgnoredFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoredFields(t);
    }
typedef T_testBadRecursiveType_67___localname___Rec = stdgo._internal.encoding.gob.Gob.T_testBadRecursiveType_67___localname___Rec;
function testBadRecursiveType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadRecursiveType(t);
    }
function testIndirectSliceMapArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIndirectSliceMapArray(t);
    }
function testInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterface(t);
    }
function testInterfaceBasic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfaceBasic(t);
    }
/**
    We'll send pointers; should receive values.
    Also check that we can register T but send *T.
**/
function testInterfacePointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfacePointer(t);
    }
function testIgnoreInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreInterface(t);
    }
function testUnexportedFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUnexportedFields(t);
    }
function testDebugSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDebugSingleton(t);
    }
function testDebugStruct(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDebugStruct(t);
    }
/**
    This does some "fuzz testing" by attempting to decode a sequence of random bytes.
**/
function testFuzz(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzz(t);
    }
function testFuzzRegressions(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzzRegressions(t);
    }
/**
    TestFuzzOneByte tries to decode corrupted input sequences
    and checks that no panic occurs.
**/
function testFuzzOneByte(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testFuzzOneByte(t);
    }
/**
    Don't crash, just give error with invalid type id.
    Issue 9649.
**/
function testErrorInvalidTypeId(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testErrorInvalidTypeId(t);
    }
function testLargeSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testLargeSlice(t);
    }
function testLocalRemoteTypesMismatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testLocalRemoteTypesMismatch(t);
    }
/**
    NewDecoder returns a new decoder that reads from the io.Reader.
    If r does not also implement io.ByteReader, it will be wrapped in a
    bufio.Reader.
**/
function newDecoder(r:stdgo._internal.io.Io.Reader):Decoder {
        return stdgo._internal.encoding.gob.Gob.newDecoder(r);
    }
/**
    NewEncoder returns a new encoder that will transmit on the io.Writer.
**/
function newEncoder(w:stdgo._internal.io.Io.Writer):Encoder {
        return stdgo._internal.encoding.gob.Gob.newEncoder(w);
    }
/**
    Test basic operations in a safe manner.
**/
function testBasicEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBasicEncoderDecoder(t);
    }
function testEncodeIntSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEncodeIntSlice(t);
    }
function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testEncoderDecoder(t);
    }
/**
    Test that we recognize a bad type the first time.
**/
function testWrongTypeDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testWrongTypeDecoder(t);
    }
function testUnsupported(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testUnsupported(t);
    }
@:forward @:forward.new abstract T_testTypeToPtrType_68___localname___Type0(stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0) from stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0 to stdgo._internal.encoding.gob.Gob.T_testTypeToPtrType_68___localname___Type0 {

}
function testTypeToPtrType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeToPtrType(t);
    }
@:forward @:forward.new abstract T_testPtrTypeToType_69___localname___Type1(stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1) from stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1 to stdgo._internal.encoding.gob.Gob.T_testPtrTypeToType_69___localname___Type1 {

}
function testPtrTypeToType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testPtrTypeToType(t);
    }
@:forward @:forward.new abstract T_testTypeToPtrPtrPtrPtrType_70___localname___Type2(stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2) from stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2 to stdgo._internal.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType_70___localname___Type2 {

}
function testTypeToPtrPtrPtrPtrType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeToPtrPtrPtrPtrType(t);
    }
@:forward @:forward.new abstract T_testSlice_71___localname___Type3(stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3) from stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3 to stdgo._internal.encoding.gob.Gob.T_testSlice_71___localname___Type3 {

}
function testSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSlice(t);
    }
@:forward @:forward.new abstract T_testValueError_72___localname___Type4(stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4) from stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4 to stdgo._internal.encoding.gob.Gob.T_testValueError_72___localname___Type4 {

}
function testValueError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testValueError(t);
    }
@:forward @:forward.new abstract T_testArray_73___localname___Type5(stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5) from stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5 to stdgo._internal.encoding.gob.Gob.T_testArray_73___localname___Type5 {

}
@:forward @:forward.new abstract T_testArray_74___localname___Type6(stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6) from stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6 to stdgo._internal.encoding.gob.Gob.T_testArray_74___localname___Type6 {

}
function testArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testArray(t);
    }
typedef T_testRecursiveMapType_75___localname___recursiveMap = stdgo._internal.encoding.gob.Gob.T_testRecursiveMapType_75___localname___recursiveMap;
function testRecursiveMapType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRecursiveMapType(t);
    }
typedef T_testRecursiveSliceType_76___localname___recursiveSlice = stdgo._internal.encoding.gob.Gob.T_testRecursiveSliceType_76___localname___recursiveSlice;
function testRecursiveSliceType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRecursiveSliceType(t);
    }
@:forward @:forward.new abstract T_testDefaultsInArray_77___localname___Type7(stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7) from stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7 to stdgo._internal.encoding.gob.Gob.T_testDefaultsInArray_77___localname___Type7 {

}
/**
    Regression test for bug: must send zero values inside arrays
**/
function testDefaultsInArray(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDefaultsInArray(t);
    }
function testSingletons(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSingletons(t);
    }
@:forward @:forward.new abstract T_testStructNonStruct_78___localname___Struct(stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct) from stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct to stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_78___localname___Struct {

}
typedef T_testStructNonStruct_79___localname___NonStruct = stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_79___localname___NonStruct;
function testStructNonStruct(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStructNonStruct(t);
    }
/**
    A version of a bug reported on golang-nuts. Also tests top-level
    slice of interfaces. The issue was registering *T caused T to be
    stored as the concrete type.
**/
function testInterfaceIndirect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testInterfaceIndirect(t);
    }
function testDecodeIntoNothing(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodeIntoNothing(t);
    }
function testIgnoreRecursiveType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreRecursiveType(t);
    }
function testNestedInterfaces(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNestedInterfaces(t);
    }
function testMapBug1(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMapBug1(t);
    }
function testGobMapInterfaceEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobMapInterfaceEncode(t);
    }
function testSliceReusesMemory(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceReusesMemory(t);
    }
/**
    Used to crash: negative count in recvMessage.
**/
function testBadCount(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadCount(t);
    }
/**
    Verify that sequential Decoders built on a single input will
    succeed if the input implements ReadByte and there is no
    type information in the stream.
**/
function testSequentialDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSequentialDecoder(t);
    }
function testChanFuncIgnored(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testChanFuncIgnored(t);
    }
function testSliceIncompatibility(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceIncompatibility(t);
    }
function testGobPtrSlices(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobPtrSlices(t);
    }
/**
    getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
    a *map and then tried to reuse its engine to decode the inner map.
**/
function testPtrToMapOfMap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testPtrToMapOfMap(t);
    }
/**
    Test that untyped nils generate an error, not a panic.
    See Issue 16204.
**/
function testCatchInvalidNilValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCatchInvalidNilValue(t);
    }
/**
    A top-level nil pointer generates a panic with a helpful string-valued message.
**/
function testTopLevelNilPointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTopLevelNilPointer(t);
    }
function testNilPointerPanics(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNilPointerPanics(t);
    }
function testNilPointerInsideInterface(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNilPointerInsideInterface(t);
    }
/**
    Test that a failed compilation doesn't leave around an executable encoder.
    Issue 3723.
**/
function testMutipleEncodingsOfBadType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMutipleEncodingsOfBadType(t);
    }
function test29ElementSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.test29ElementSlice(t);
    }
/**
    Don't crash, just give error when allocating a huge slice.
    Issue 8084.
**/
function testErrorForHugeSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testErrorForHugeSlice(t);
    }
/**
    TestBadData tests that various problems caused by malformed input
    are caught as errors and do not cause panics.
**/
function testBadData(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBadData(t);
    }
@:forward @:forward.new abstract T_testDecodeErrorMultipleTypes_80___localname___Test(stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test) from stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test to stdgo._internal.encoding.gob.Gob.T_testDecodeErrorMultipleTypes_80___localname___Test {

}
function testDecodeErrorMultipleTypes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodeErrorMultipleTypes(t);
    }
@:forward @:forward.new abstract T_testMarshalFloatMap_81___localname___mapEntry(stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry) from stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry to stdgo._internal.encoding.gob.Gob.T_testMarshalFloatMap_81___localname___mapEntry {

}
/**
    Issue 24075
**/
function testMarshalFloatMap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMarshalFloatMap(t);
    }
@:forward @:forward.new abstract T_testDecodePartial_82___localname___T(stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T) from stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T to stdgo._internal.encoding.gob.Gob.T_testDecodePartial_82___localname___T {

}
function testDecodePartial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecodePartial(t);
    }
function testDecoderOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testDecoderOverflow(t);
    }
function testGobEncoderField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderField(t);
    }
/**
    Even though the field is a value, we can still take its address
    and should be able to call the methods.
**/
function testGobEncoderValueField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueField(t);
    }
/**
    GobEncode/Decode should work even if the value is
    more indirect than the receiver.
**/
function testGobEncoderIndirectField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIndirectField(t);
    }
/**
    Test with a large field with methods.
**/
function testGobEncoderArrayField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderArrayField(t);
    }
/**
    Test an indirection to a large field with methods.
**/
function testGobEncoderIndirectArrayField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIndirectArrayField(t);
    }
/**
    As long as the fields have the same name and implement the
    interface, we can cross-connect them. Not sure it's useful
    and may even be bad but it works and it's hard to prevent
    without exposing the contents of the object, which would
    defeat the purpose.
**/
function testGobEncoderFieldsOfDifferentType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderFieldsOfDifferentType(t);
    }
/**
    Test that we can encode a value and decode into a pointer.
**/
function testGobEncoderValueEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueEncoder(t);
    }
/**
    Test that we can use a value then a pointer type of a GobEncoder
    in the same encoded value. Bug 4647.
**/
function testGobEncoderValueThenPointer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderValueThenPointer(t);
    }
/**
    Test that we can use a pointer then a value type of a GobEncoder
    in the same encoded value.
**/
function testGobEncoderPointerThenValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderPointerThenValue(t);
    }
function testGobEncoderFieldTypeError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderFieldTypeError(t);
    }
/**
    Even though ByteStruct is a struct, it's treated as a singleton at the top level.
**/
function testGobEncoderStructSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderStructSingleton(t);
    }
function testGobEncoderNonStructSingleton(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderNonStructSingleton(t);
    }
function testGobEncoderIgnoreStructField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreStructField(t);
    }
function testGobEncoderIgnoreNonStructField(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreNonStructField(t);
    }
function testGobEncoderIgnoreNilEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderIgnoreNilEncoder(t);
    }
/**
    This was a bug: the receiver has a different indirection level
    than the variable.
**/
function testGobEncoderExtraIndirect(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncoderExtraIndirect(t);
    }
function testGobEncodeIsZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncodeIsZero(t);
    }
function testGobEncodePtrError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testGobEncodePtrError(t);
    }
function testNetIP(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testNetIP(t);
    }
function testIgnoreDepthLimit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testIgnoreDepthLimit(t);
    }
function benchmarkEndToEndPipe(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndPipe(b);
    }
function benchmarkEndToEndByteBuffer(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndByteBuffer(b);
    }
function benchmarkEndToEndSliceByteBuffer(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEndToEndSliceByteBuffer(b);
    }
function testCountEncodeMallocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCountEncodeMallocs(t);
    }
function testCountDecodeMallocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testCountDecodeMallocs(t);
    }
function benchmarkEncodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeComplex128Slice(b);
    }
function benchmarkEncodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeFloat64Slice(b);
    }
function benchmarkEncodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeInt32Slice(b);
    }
function benchmarkEncodeStringSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeStringSlice(b);
    }
function benchmarkEncodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkEncodeInterfaceSlice(b);
    }
function benchmarkDecodeComplex128Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeComplex128Slice(b);
    }
function benchmarkDecodeFloat64Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeFloat64Slice(b);
    }
function benchmarkDecodeInt32Slice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeInt32Slice(b);
    }
function benchmarkDecodeStringSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeStringSlice(b);
    }
function benchmarkDecodeStringsSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeStringsSlice(b);
    }
function benchmarkDecodeBytesSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeBytesSlice(b);
    }
function benchmarkDecodeInterfaceSlice(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeInterfaceSlice(b);
    }
function benchmarkDecodeMap(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.gob.Gob.benchmarkDecodeMap(b);
    }
/**
    RegisterName is like Register but uses the provided name rather than the
    type's default.
**/
function registerName(name:String, value:stdgo.AnyInterface):Void {
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
function register(value:stdgo.AnyInterface):Void {
        stdgo._internal.encoding.gob.Gob.register(value);
    }
/**
    Sanity checks
**/
function testBasic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testBasic(t);
    }
/**
    Reregister some basic types to check registration is idempotent.
**/
function testReregistration(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testReregistration(t);
    }
function testArrayType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testArrayType(t);
    }
function testSliceType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testSliceType(t);
    }
function testMapType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testMapType(t);
    }
function testStructType(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStructType(t);
    }
@:forward @:forward.new abstract T_testRegistration_83___localname___T(stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T) from stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T to stdgo._internal.encoding.gob.Gob.T_testRegistration_83___localname___T {

}
/**
    Should be OK to register the same type multiple times, as long as they're
    at the same level of indirection.
**/
function testRegistration(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRegistration(t);
    }
/**
    See comment in type.go/Register.
**/
function testRegistrationNaming(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testRegistrationNaming(t);
    }
@:forward @:forward.new abstract T_testStressParallel_84___localname___T2(stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2) from stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2 to stdgo._internal.encoding.gob.Gob.T_testStressParallel_84___localname___T2 {

}
function testStressParallel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testStressParallel(t);
    }
/**
    Issue 23328. Note that this test name is known to cmd/dist/test.go.
**/
function testTypeRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.gob.Gob.testTypeRace(t);
    }
@:forward @:forward.new abstract Point_asInterface(stdgo._internal.encoding.gob.Gob.Point_asInterface) from stdgo._internal.encoding.gob.Gob.Point_asInterface to stdgo._internal.encoding.gob.Gob.Point_asInterface {

}
@:forward @:forward.new abstract Point_static_extension(stdgo._internal.encoding.gob.Gob.Point_static_extension) from stdgo._internal.encoding.gob.Gob.Point_static_extension to stdgo._internal.encoding.gob.Gob.Point_static_extension {

}
@:forward @:forward.new abstract T_decoderState_asInterface(stdgo._internal.encoding.gob.Gob.T_decoderState_asInterface) from stdgo._internal.encoding.gob.Gob.T_decoderState_asInterface to stdgo._internal.encoding.gob.Gob.T_decoderState_asInterface {

}
@:forward @:forward.new abstract T_decoderState_static_extension(stdgo._internal.encoding.gob.Gob.T_decoderState_static_extension) from stdgo._internal.encoding.gob.Gob.T_decoderState_static_extension to stdgo._internal.encoding.gob.Gob.T_decoderState_static_extension {

}
@:forward @:forward.new abstract T_decBuffer_asInterface(stdgo._internal.encoding.gob.Gob.T_decBuffer_asInterface) from stdgo._internal.encoding.gob.Gob.T_decBuffer_asInterface to stdgo._internal.encoding.gob.Gob.T_decBuffer_asInterface {

}
@:forward @:forward.new abstract T_decBuffer_static_extension(stdgo._internal.encoding.gob.Gob.T_decBuffer_static_extension) from stdgo._internal.encoding.gob.Gob.T_decBuffer_static_extension to stdgo._internal.encoding.gob.Gob.T_decBuffer_static_extension {

}
@:forward @:forward.new abstract Decoder_asInterface(stdgo._internal.encoding.gob.Gob.Decoder_asInterface) from stdgo._internal.encoding.gob.Gob.Decoder_asInterface to stdgo._internal.encoding.gob.Gob.Decoder_asInterface {

}
@:forward @:forward.new abstract Decoder_static_extension(stdgo._internal.encoding.gob.Gob.Decoder_static_extension) from stdgo._internal.encoding.gob.Gob.Decoder_static_extension to stdgo._internal.encoding.gob.Gob.Decoder_static_extension {

}
@:forward @:forward.new abstract T_encoderState_asInterface(stdgo._internal.encoding.gob.Gob.T_encoderState_asInterface) from stdgo._internal.encoding.gob.Gob.T_encoderState_asInterface to stdgo._internal.encoding.gob.Gob.T_encoderState_asInterface {

}
@:forward @:forward.new abstract T_encoderState_static_extension(stdgo._internal.encoding.gob.Gob.T_encoderState_static_extension) from stdgo._internal.encoding.gob.Gob.T_encoderState_static_extension to stdgo._internal.encoding.gob.Gob.T_encoderState_static_extension {

}
@:forward @:forward.new abstract T_encBuffer_asInterface(stdgo._internal.encoding.gob.Gob.T_encBuffer_asInterface) from stdgo._internal.encoding.gob.Gob.T_encBuffer_asInterface to stdgo._internal.encoding.gob.Gob.T_encBuffer_asInterface {

}
@:forward @:forward.new abstract T_encBuffer_static_extension(stdgo._internal.encoding.gob.Gob.T_encBuffer_static_extension) from stdgo._internal.encoding.gob.Gob.T_encBuffer_static_extension to stdgo._internal.encoding.gob.Gob.T_encBuffer_static_extension {

}
@:forward @:forward.new abstract Encoder_asInterface(stdgo._internal.encoding.gob.Gob.Encoder_asInterface) from stdgo._internal.encoding.gob.Gob.Encoder_asInterface to stdgo._internal.encoding.gob.Gob.Encoder_asInterface {

}
@:forward @:forward.new abstract Encoder_static_extension(stdgo._internal.encoding.gob.Gob.Encoder_static_extension) from stdgo._internal.encoding.gob.Gob.Encoder_static_extension to stdgo._internal.encoding.gob.Gob.Encoder_static_extension {

}
@:forward @:forward.new abstract T_interfaceIndirectTestT_asInterface(stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_asInterface) from stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_asInterface to stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_asInterface {

}
@:forward @:forward.new abstract T_interfaceIndirectTestT_static_extension(stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension) from stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension to stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension {

}
@:forward @:forward.new abstract ByteStruct_asInterface(stdgo._internal.encoding.gob.Gob.ByteStruct_asInterface) from stdgo._internal.encoding.gob.Gob.ByteStruct_asInterface to stdgo._internal.encoding.gob.Gob.ByteStruct_asInterface {

}
@:forward @:forward.new abstract ByteStruct_static_extension(stdgo._internal.encoding.gob.Gob.ByteStruct_static_extension) from stdgo._internal.encoding.gob.Gob.ByteStruct_static_extension to stdgo._internal.encoding.gob.Gob.ByteStruct_static_extension {

}
@:forward @:forward.new abstract StringStruct_asInterface(stdgo._internal.encoding.gob.Gob.StringStruct_asInterface) from stdgo._internal.encoding.gob.Gob.StringStruct_asInterface to stdgo._internal.encoding.gob.Gob.StringStruct_asInterface {

}
@:forward @:forward.new abstract StringStruct_static_extension(stdgo._internal.encoding.gob.Gob.StringStruct_static_extension) from stdgo._internal.encoding.gob.Gob.StringStruct_static_extension to stdgo._internal.encoding.gob.Gob.StringStruct_static_extension {

}
@:forward @:forward.new abstract ArrayStruct_asInterface(stdgo._internal.encoding.gob.Gob.ArrayStruct_asInterface) from stdgo._internal.encoding.gob.Gob.ArrayStruct_asInterface to stdgo._internal.encoding.gob.Gob.ArrayStruct_asInterface {

}
@:forward @:forward.new abstract ArrayStruct_static_extension(stdgo._internal.encoding.gob.Gob.ArrayStruct_static_extension) from stdgo._internal.encoding.gob.Gob.ArrayStruct_static_extension to stdgo._internal.encoding.gob.Gob.ArrayStruct_static_extension {

}
@:forward @:forward.new abstract T_gobDecoderBug0_asInterface(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface) from stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface to stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface {

}
@:forward @:forward.new abstract T_gobDecoderBug0_static_extension(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_static_extension) from stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_static_extension to stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_static_extension {

}
@:forward @:forward.new abstract T_isZeroBugInterface_asInterface(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_asInterface) from stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_asInterface to stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_asInterface {

}
@:forward @:forward.new abstract T_isZeroBugInterface_static_extension(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_static_extension) from stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_static_extension to stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_static_extension {

}
@:forward @:forward.new abstract T_benchmarkBuf_asInterface(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface) from stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface to stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface {

}
@:forward @:forward.new abstract T_benchmarkBuf_static_extension(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_static_extension) from stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_static_extension to stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_static_extension {

}
@:forward @:forward.new abstract CommonType_asInterface(stdgo._internal.encoding.gob.Gob.CommonType_asInterface) from stdgo._internal.encoding.gob.Gob.CommonType_asInterface to stdgo._internal.encoding.gob.Gob.CommonType_asInterface {

}
@:forward @:forward.new abstract CommonType_static_extension(stdgo._internal.encoding.gob.Gob.CommonType_static_extension) from stdgo._internal.encoding.gob.Gob.CommonType_static_extension to stdgo._internal.encoding.gob.Gob.CommonType_static_extension {

}
@:forward @:forward.new abstract T_arrayType_asInterface(stdgo._internal.encoding.gob.Gob.T_arrayType_asInterface) from stdgo._internal.encoding.gob.Gob.T_arrayType_asInterface to stdgo._internal.encoding.gob.Gob.T_arrayType_asInterface {

}
@:forward @:forward.new abstract T_arrayType_static_extension(stdgo._internal.encoding.gob.Gob.T_arrayType_static_extension) from stdgo._internal.encoding.gob.Gob.T_arrayType_static_extension to stdgo._internal.encoding.gob.Gob.T_arrayType_static_extension {

}
@:forward @:forward.new abstract T_gobEncoderType_asInterface(stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface) from stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface to stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface {

}
@:forward @:forward.new abstract T_gobEncoderType_static_extension(stdgo._internal.encoding.gob.Gob.T_gobEncoderType_static_extension) from stdgo._internal.encoding.gob.Gob.T_gobEncoderType_static_extension to stdgo._internal.encoding.gob.Gob.T_gobEncoderType_static_extension {

}
@:forward @:forward.new abstract T_mapType_asInterface(stdgo._internal.encoding.gob.Gob.T_mapType_asInterface) from stdgo._internal.encoding.gob.Gob.T_mapType_asInterface to stdgo._internal.encoding.gob.Gob.T_mapType_asInterface {

}
@:forward @:forward.new abstract T_mapType_static_extension(stdgo._internal.encoding.gob.Gob.T_mapType_static_extension) from stdgo._internal.encoding.gob.Gob.T_mapType_static_extension to stdgo._internal.encoding.gob.Gob.T_mapType_static_extension {

}
@:forward @:forward.new abstract T_sliceType_asInterface(stdgo._internal.encoding.gob.Gob.T_sliceType_asInterface) from stdgo._internal.encoding.gob.Gob.T_sliceType_asInterface to stdgo._internal.encoding.gob.Gob.T_sliceType_asInterface {

}
@:forward @:forward.new abstract T_sliceType_static_extension(stdgo._internal.encoding.gob.Gob.T_sliceType_static_extension) from stdgo._internal.encoding.gob.Gob.T_sliceType_static_extension to stdgo._internal.encoding.gob.Gob.T_sliceType_static_extension {

}
@:forward @:forward.new abstract T_structType_asInterface(stdgo._internal.encoding.gob.Gob.T_structType_asInterface) from stdgo._internal.encoding.gob.Gob.T_structType_asInterface to stdgo._internal.encoding.gob.Gob.T_structType_asInterface {

}
@:forward @:forward.new abstract T_structType_static_extension(stdgo._internal.encoding.gob.Gob.T_structType_static_extension) from stdgo._internal.encoding.gob.Gob.T_structType_static_extension to stdgo._internal.encoding.gob.Gob.T_structType_static_extension {

}
@:forward @:forward.new abstract T_wireType_asInterface(stdgo._internal.encoding.gob.Gob.T_wireType_asInterface) from stdgo._internal.encoding.gob.Gob.T_wireType_asInterface to stdgo._internal.encoding.gob.Gob.T_wireType_asInterface {

}
@:forward @:forward.new abstract T_wireType_static_extension(stdgo._internal.encoding.gob.Gob.T_wireType_static_extension) from stdgo._internal.encoding.gob.Gob.T_wireType_static_extension to stdgo._internal.encoding.gob.Gob.T_wireType_static_extension {

}
@:forward @:forward.new abstract Int__asInterface(stdgo._internal.encoding.gob.Gob.Int__asInterface) from stdgo._internal.encoding.gob.Gob.Int__asInterface to stdgo._internal.encoding.gob.Gob.Int__asInterface {

}
@:forward @:forward.new abstract Int__static_extension(stdgo._internal.encoding.gob.Gob.Int__static_extension) from stdgo._internal.encoding.gob.Gob.Int__static_extension to stdgo._internal.encoding.gob.Gob.Int__static_extension {

}
@:forward @:forward.new abstract Float__asInterface(stdgo._internal.encoding.gob.Gob.Float__asInterface) from stdgo._internal.encoding.gob.Gob.Float__asInterface to stdgo._internal.encoding.gob.Gob.Float__asInterface {

}
@:forward @:forward.new abstract Float__static_extension(stdgo._internal.encoding.gob.Gob.Float__static_extension) from stdgo._internal.encoding.gob.Gob.Float__static_extension to stdgo._internal.encoding.gob.Gob.Float__static_extension {

}
@:forward @:forward.new abstract Vector_asInterface(stdgo._internal.encoding.gob.Gob.Vector_asInterface) from stdgo._internal.encoding.gob.Gob.Vector_asInterface to stdgo._internal.encoding.gob.Gob.Vector_asInterface {

}
@:forward @:forward.new abstract Vector_static_extension(stdgo._internal.encoding.gob.Gob.Vector_static_extension) from stdgo._internal.encoding.gob.Gob.Vector_static_extension to stdgo._internal.encoding.gob.Gob.Vector_static_extension {

}
@:forward @:forward.new abstract Gobber_asInterface(stdgo._internal.encoding.gob.Gob.Gobber_asInterface) from stdgo._internal.encoding.gob.Gob.Gobber_asInterface to stdgo._internal.encoding.gob.Gob.Gobber_asInterface {

}
@:forward @:forward.new abstract Gobber_static_extension(stdgo._internal.encoding.gob.Gob.Gobber_static_extension) from stdgo._internal.encoding.gob.Gob.Gobber_static_extension to stdgo._internal.encoding.gob.Gob.Gobber_static_extension {

}
@:forward @:forward.new abstract ValueGobber_asInterface(stdgo._internal.encoding.gob.Gob.ValueGobber_asInterface) from stdgo._internal.encoding.gob.Gob.ValueGobber_asInterface to stdgo._internal.encoding.gob.Gob.ValueGobber_asInterface {

}
@:forward @:forward.new abstract ValueGobber_static_extension(stdgo._internal.encoding.gob.Gob.ValueGobber_static_extension) from stdgo._internal.encoding.gob.Gob.ValueGobber_static_extension to stdgo._internal.encoding.gob.Gob.ValueGobber_static_extension {

}
@:forward @:forward.new abstract BinaryGobber_asInterface(stdgo._internal.encoding.gob.Gob.BinaryGobber_asInterface) from stdgo._internal.encoding.gob.Gob.BinaryGobber_asInterface to stdgo._internal.encoding.gob.Gob.BinaryGobber_asInterface {

}
@:forward @:forward.new abstract BinaryGobber_static_extension(stdgo._internal.encoding.gob.Gob.BinaryGobber_static_extension) from stdgo._internal.encoding.gob.Gob.BinaryGobber_static_extension to stdgo._internal.encoding.gob.Gob.BinaryGobber_static_extension {

}
@:forward @:forward.new abstract BinaryValueGobber_asInterface(stdgo._internal.encoding.gob.Gob.BinaryValueGobber_asInterface) from stdgo._internal.encoding.gob.Gob.BinaryValueGobber_asInterface to stdgo._internal.encoding.gob.Gob.BinaryValueGobber_asInterface {

}
@:forward @:forward.new abstract BinaryValueGobber_static_extension(stdgo._internal.encoding.gob.Gob.BinaryValueGobber_static_extension) from stdgo._internal.encoding.gob.Gob.BinaryValueGobber_static_extension to stdgo._internal.encoding.gob.Gob.BinaryValueGobber_static_extension {

}
@:forward @:forward.new abstract TextGobber_asInterface(stdgo._internal.encoding.gob.Gob.TextGobber_asInterface) from stdgo._internal.encoding.gob.Gob.TextGobber_asInterface to stdgo._internal.encoding.gob.Gob.TextGobber_asInterface {

}
@:forward @:forward.new abstract TextGobber_static_extension(stdgo._internal.encoding.gob.Gob.TextGobber_static_extension) from stdgo._internal.encoding.gob.Gob.TextGobber_static_extension to stdgo._internal.encoding.gob.Gob.TextGobber_static_extension {

}
@:forward @:forward.new abstract TextValueGobber_asInterface(stdgo._internal.encoding.gob.Gob.TextValueGobber_asInterface) from stdgo._internal.encoding.gob.Gob.TextValueGobber_asInterface to stdgo._internal.encoding.gob.Gob.TextValueGobber_asInterface {

}
@:forward @:forward.new abstract TextValueGobber_static_extension(stdgo._internal.encoding.gob.Gob.TextValueGobber_static_extension) from stdgo._internal.encoding.gob.Gob.TextValueGobber_static_extension to stdgo._internal.encoding.gob.Gob.TextValueGobber_static_extension {

}
@:forward @:forward.new abstract T_isZeroBugArray_asInterface(stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_asInterface) from stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_asInterface to stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_asInterface {

}
@:forward @:forward.new abstract T_isZeroBugArray_static_extension(stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_static_extension) from stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_static_extension to stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_static_extension {

}
@:forward @:forward.new abstract T_typeId_asInterface(stdgo._internal.encoding.gob.Gob.T_typeId_asInterface) from stdgo._internal.encoding.gob.Gob.T_typeId_asInterface to stdgo._internal.encoding.gob.Gob.T_typeId_asInterface {

}
@:forward @:forward.new abstract T_typeId_static_extension(stdgo._internal.encoding.gob.Gob.T_typeId_static_extension) from stdgo._internal.encoding.gob.Gob.T_typeId_static_extension to stdgo._internal.encoding.gob.Gob.T_typeId_static_extension {

}
