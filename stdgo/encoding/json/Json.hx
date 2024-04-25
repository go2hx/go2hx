package stdgo.encoding.json;
/**
    // Package json implements encoding and decoding of JSON as defined in
    // RFC 7159. The mapping between JSON and Go values is described
    // in the documentation for the Marshal and Unmarshal functions.
    //
    // See "JSON and Go" for an introduction to this package:
    // https://golang.org/doc/articles/json_and_go.html
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef Unmarshaler_static_extension = Dynamic;
typedef Unmarshaler = stdgo._internal.encoding.json.Json.Unmarshaler;
@:invalid typedef Marshaler_static_extension = Dynamic;
typedef Marshaler = stdgo._internal.encoding.json.Json.Marshaler;
@:invalid typedef T_codeResponse = Dynamic;
@:invalid typedef T_codeNode = Dynamic;
@:invalid typedef UnmarshalTypeError = Dynamic;
@:invalid typedef UnmarshalFieldError = Dynamic;
@:invalid typedef InvalidUnmarshalError = Dynamic;
@:invalid typedef T_errorContext = Dynamic;
@:invalid typedef T_decodeState = Dynamic;
@:invalid typedef T_unquotedValue = Dynamic;
@:invalid typedef T_ = Dynamic;
@:invalid typedef U = Dynamic;
@:invalid typedef V = Dynamic;
@:invalid typedef VOuter = Dynamic;
@:invalid typedef W = Dynamic;
@:invalid typedef P = Dynamic;
@:invalid typedef PP = Dynamic;
@:invalid typedef T_tx = Dynamic;
@:invalid typedef T_unmarshaler = Dynamic;
@:invalid typedef T_ustruct = Dynamic;
@:invalid typedef T_unmarshalerText = Dynamic;
@:invalid typedef T_ustructText = Dynamic;
@:invalid typedef Point = Dynamic;
@:invalid typedef Top = Dynamic;
@:invalid typedef Embed0 = Dynamic;
@:invalid typedef Embed0a = Dynamic;
@:invalid typedef Embed0p = Dynamic;
@:invalid typedef Embed0q = Dynamic;
@:invalid typedef T_embed = Dynamic;
@:invalid typedef Loop = Dynamic;
@:invalid typedef S5 = Dynamic;
@:invalid typedef S6 = Dynamic;
@:invalid typedef S8 = Dynamic;
@:invalid typedef S9 = Dynamic;
@:invalid typedef S10 = Dynamic;
@:invalid typedef S11 = Dynamic;
@:invalid typedef S12 = Dynamic;
@:invalid typedef S13 = Dynamic;
@:invalid typedef Ambig = Dynamic;
@:invalid typedef XYZ = Dynamic;
@:invalid typedef T_unexportedWithMethods = Dynamic;
@:invalid typedef T_mapStringToStringData = Dynamic;
@:invalid typedef T_unmarshalTest = Dynamic;
@:invalid typedef B = Dynamic;
@:invalid typedef DoublePtr = Dynamic;
@:invalid typedef Xint = Dynamic;
@:invalid typedef WrongString = Dynamic;
@:invalid typedef T_wrongStringTest = Dynamic;
@:invalid typedef All = Dynamic;
@:invalid typedef Small = Dynamic;
@:invalid typedef NullTest = Dynamic;
@:invalid typedef MustNotUnmarshalJSON = Dynamic;
@:invalid typedef MustNotUnmarshalText = Dynamic;
@:invalid typedef T_unexportedFields = Dynamic;
@:invalid typedef T_unmarshalPanic = Dynamic;
@:invalid typedef UnsupportedTypeError = Dynamic;
@:invalid typedef UnsupportedValueError = Dynamic;
@:invalid typedef InvalidUTF8Error = Dynamic;
@:invalid typedef MarshalerError = Dynamic;
@:invalid typedef T_encodeState = Dynamic;
@:invalid typedef T_jsonError = Dynamic;
@:invalid typedef T_encOpts = Dynamic;
@:invalid typedef T_structEncoder = Dynamic;
@:invalid typedef T_structFields = Dynamic;
@:invalid typedef T_mapEncoder = Dynamic;
@:invalid typedef T_sliceEncoder = Dynamic;
@:invalid typedef T_arrayEncoder = Dynamic;
@:invalid typedef T_ptrEncoder = Dynamic;
@:invalid typedef T_condAddrEncoder = Dynamic;
@:invalid typedef T_reflectWithString = Dynamic;
@:invalid typedef T_field = Dynamic;
@:invalid typedef Optionals = Dynamic;
@:invalid typedef StringTag = Dynamic;
@:invalid typedef SamePointerNoCycle = Dynamic;
@:invalid typedef PointerCycle = Dynamic;
@:invalid typedef PointerCycleIndirect = Dynamic;
@:invalid typedef BugA = Dynamic;
@:invalid typedef BugB = Dynamic;
@:invalid typedef BugC = Dynamic;
@:invalid typedef BugX = Dynamic;
@:invalid typedef BugD = Dynamic;
@:invalid typedef BugY = Dynamic;
@:invalid typedef BugZ = Dynamic;
@:invalid typedef T_marshalPanic = Dynamic;
@:invalid typedef SyntaxError = Dynamic;
@:invalid typedef T_scanner = Dynamic;
@:invalid typedef T_example = Dynamic;
@:invalid typedef T_indentErrorTest = Dynamic;
@:invalid typedef Decoder = Dynamic;
@:invalid typedef Encoder = Dynamic;
@:invalid typedef T_tokenStreamCase = Dynamic;
@:invalid typedef T_decodeThis = Dynamic;
@:invalid typedef T_basicLatin2xTag = Dynamic;
@:invalid typedef T_basicLatin3xTag = Dynamic;
@:invalid typedef T_basicLatin4xTag = Dynamic;
@:invalid typedef T_basicLatin5xTag = Dynamic;
@:invalid typedef T_basicLatin6xTag = Dynamic;
@:invalid typedef T_basicLatin7xTag = Dynamic;
@:invalid typedef T_miscPlaneTag = Dynamic;
@:invalid typedef T_percentSlashTag = Dynamic;
@:invalid typedef T_punctuationTag = Dynamic;
@:invalid typedef T_dashTag = Dynamic;
@:invalid typedef T_emptyTag = Dynamic;
@:invalid typedef T_misnamedTag = Dynamic;
@:invalid typedef T_badFormatTag = Dynamic;
@:invalid typedef T_badCodeTag = Dynamic;
@:invalid typedef T_spaceTag = Dynamic;
@:invalid typedef T_unicodeTag = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.json.Json.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.json.Json.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.json.Json.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.encoding.json.Json.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.encoding.json.Json.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.encoding.json.Json.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.encoding.json.Json.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.encoding.json.Json.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.encoding.json.Json.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.encoding.json.Json.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.encoding.json.Json.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.encoding.json.Json.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
typedef T__struct_12 = stdgo._internal.encoding.json.Json.T__struct_12;
@:invalid typedef T__struct_13_asInterface = Dynamic;
@:invalid typedef T__struct_13_static_extension = Dynamic;
typedef T__struct_13 = stdgo._internal.encoding.json.Json.T__struct_13;
@:invalid typedef T__struct_14_asInterface = Dynamic;
@:invalid typedef T__struct_14_static_extension = Dynamic;
typedef T__struct_14 = stdgo._internal.encoding.json.Json.T__struct_14;
@:invalid typedef T__struct_15_asInterface = Dynamic;
@:invalid typedef T__struct_15_static_extension = Dynamic;
typedef T__struct_15 = stdgo._internal.encoding.json.Json.T__struct_15;
@:invalid typedef T__struct_16_asInterface = Dynamic;
@:invalid typedef T__struct_16_static_extension = Dynamic;
typedef T__struct_16 = stdgo._internal.encoding.json.Json.T__struct_16;
@:invalid typedef T__struct_17_asInterface = Dynamic;
@:invalid typedef T__struct_17_static_extension = Dynamic;
typedef T__struct_17 = stdgo._internal.encoding.json.Json.T__struct_17;
@:invalid typedef T__struct_18_asInterface = Dynamic;
@:invalid typedef T__struct_18_static_extension = Dynamic;
typedef T__struct_18 = stdgo._internal.encoding.json.Json.T__struct_18;
@:invalid typedef T__struct_19_asInterface = Dynamic;
@:invalid typedef T__struct_19_static_extension = Dynamic;
typedef T__struct_19 = stdgo._internal.encoding.json.Json.T__struct_19;
@:invalid typedef T__struct_20_asInterface = Dynamic;
@:invalid typedef T__struct_20_static_extension = Dynamic;
typedef T__struct_20 = stdgo._internal.encoding.json.Json.T__struct_20;
@:invalid typedef T__struct_21_asInterface = Dynamic;
@:invalid typedef T__struct_21_static_extension = Dynamic;
typedef T__struct_21 = stdgo._internal.encoding.json.Json.T__struct_21;
@:invalid typedef T__struct_22_asInterface = Dynamic;
@:invalid typedef T__struct_22_static_extension = Dynamic;
typedef T__struct_22 = stdgo._internal.encoding.json.Json.T__struct_22;
@:invalid typedef T__struct_23_asInterface = Dynamic;
@:invalid typedef T__struct_23_static_extension = Dynamic;
typedef T__struct_23 = stdgo._internal.encoding.json.Json.T__struct_23;
@:invalid typedef T__struct_24_asInterface = Dynamic;
@:invalid typedef T__struct_24_static_extension = Dynamic;
typedef T__struct_24 = stdgo._internal.encoding.json.Json.T__struct_24;
@:invalid typedef T__struct_25_asInterface = Dynamic;
@:invalid typedef T__struct_25_static_extension = Dynamic;
typedef T__struct_25 = stdgo._internal.encoding.json.Json.T__struct_25;
@:invalid typedef T__struct_26_asInterface = Dynamic;
@:invalid typedef T__struct_26_static_extension = Dynamic;
typedef T__struct_26 = stdgo._internal.encoding.json.Json.T__struct_26;
@:invalid typedef T__struct_27_asInterface = Dynamic;
@:invalid typedef T__struct_27_static_extension = Dynamic;
typedef T__struct_27 = stdgo._internal.encoding.json.Json.T__struct_27;
@:invalid typedef T__struct_28_asInterface = Dynamic;
@:invalid typedef T__struct_28_static_extension = Dynamic;
typedef T__struct_28 = stdgo._internal.encoding.json.Json.T__struct_28;
@:invalid typedef T__struct_29_asInterface = Dynamic;
@:invalid typedef T__struct_29_static_extension = Dynamic;
typedef T__struct_29 = stdgo._internal.encoding.json.Json.T__struct_29;
@:invalid typedef T__struct_30_asInterface = Dynamic;
@:invalid typedef T__struct_30_static_extension = Dynamic;
typedef T__struct_30 = stdgo._internal.encoding.json.Json.T__struct_30;
@:invalid typedef T__struct_31_asInterface = Dynamic;
@:invalid typedef T__struct_31_static_extension = Dynamic;
typedef T__struct_31 = stdgo._internal.encoding.json.Json.T__struct_31;
@:invalid typedef T__struct_32_asInterface = Dynamic;
@:invalid typedef T__struct_32_static_extension = Dynamic;
typedef T__struct_32 = stdgo._internal.encoding.json.Json.T__struct_32;
@:invalid typedef T__struct_33_asInterface = Dynamic;
@:invalid typedef T__struct_33_static_extension = Dynamic;
typedef T__struct_33 = stdgo._internal.encoding.json.Json.T__struct_33;
@:invalid typedef T__struct_34_asInterface = Dynamic;
@:invalid typedef T__struct_34_static_extension = Dynamic;
typedef T__struct_34 = stdgo._internal.encoding.json.Json.T__struct_34;
@:invalid typedef T__struct_35_asInterface = Dynamic;
@:invalid typedef T__struct_35_static_extension = Dynamic;
typedef T__struct_35 = stdgo._internal.encoding.json.Json.T__struct_35;
@:invalid typedef T__struct_36_asInterface = Dynamic;
@:invalid typedef T__struct_36_static_extension = Dynamic;
typedef T__struct_36 = stdgo._internal.encoding.json.Json.T__struct_36;
@:invalid typedef T__struct_37_asInterface = Dynamic;
@:invalid typedef T__struct_37_static_extension = Dynamic;
typedef T__struct_37 = stdgo._internal.encoding.json.Json.T__struct_37;
@:invalid typedef T__struct_38_asInterface = Dynamic;
@:invalid typedef T__struct_38_static_extension = Dynamic;
typedef T__struct_38 = stdgo._internal.encoding.json.Json.T__struct_38;
@:invalid typedef T__struct_39_asInterface = Dynamic;
@:invalid typedef T__struct_39_static_extension = Dynamic;
typedef T__struct_39 = stdgo._internal.encoding.json.Json.T__struct_39;
@:invalid typedef T__struct_40_asInterface = Dynamic;
@:invalid typedef T__struct_40_static_extension = Dynamic;
typedef T__struct_40 = stdgo._internal.encoding.json.Json.T__struct_40;
@:invalid typedef T__struct_41_asInterface = Dynamic;
@:invalid typedef T__struct_41_static_extension = Dynamic;
typedef T__struct_41 = stdgo._internal.encoding.json.Json.T__struct_41;
@:invalid typedef T__struct_42_asInterface = Dynamic;
@:invalid typedef T__struct_42_static_extension = Dynamic;
typedef T__struct_42 = stdgo._internal.encoding.json.Json.T__struct_42;
@:invalid typedef T__struct_43_asInterface = Dynamic;
@:invalid typedef T__struct_43_static_extension = Dynamic;
typedef T__struct_43 = stdgo._internal.encoding.json.Json.T__struct_43;
@:invalid typedef T__struct_44_asInterface = Dynamic;
@:invalid typedef T__struct_44_static_extension = Dynamic;
typedef T__struct_44 = stdgo._internal.encoding.json.Json.T__struct_44;
@:invalid typedef T__struct_45_asInterface = Dynamic;
@:invalid typedef T__struct_45_static_extension = Dynamic;
typedef T__struct_45 = stdgo._internal.encoding.json.Json.T__struct_45;
@:invalid typedef T__struct_46_asInterface = Dynamic;
@:invalid typedef T__struct_46_static_extension = Dynamic;
typedef T__struct_46 = stdgo._internal.encoding.json.Json.T__struct_46;
typedef Number = stdgo._internal.encoding.json.Json.Number;
typedef SS = stdgo._internal.encoding.json.Json.SS;
typedef T_u8 = stdgo._internal.encoding.json.Json.T_u8;
typedef T_u8marshal = stdgo._internal.encoding.json.Json.T_u8marshal;
typedef Embed0b = stdgo._internal.encoding.json.Json.Embed0b;
typedef Embed0c = stdgo._internal.encoding.json.Json.Embed0c;
typedef S7 = stdgo._internal.encoding.json.Json.S7;
typedef T_byteWithMarshalJSON = stdgo._internal.encoding.json.Json.T_byteWithMarshalJSON;
typedef T_byteWithPtrMarshalJSON = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalJSON;
typedef T_byteWithMarshalText = stdgo._internal.encoding.json.Json.T_byteWithMarshalText;
typedef T_byteWithPtrMarshalText = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText;
typedef T_intWithMarshalJSON = stdgo._internal.encoding.json.Json.T_intWithMarshalJSON;
typedef T_intWithPtrMarshalJSON = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON;
typedef T_intWithMarshalText = stdgo._internal.encoding.json.Json.T_intWithMarshalText;
typedef T_intWithPtrMarshalText = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText;
typedef Time3339 = stdgo._internal.encoding.json.Json.Time3339;
typedef T_textUnmarshalerString = stdgo._internal.encoding.json.Json.T_textUnmarshalerString;
typedef T_encoderFunc = stdgo._internal.encoding.json.Json.T_encoderFunc;
typedef T_floatEncoder = stdgo._internal.encoding.json.Json.T_floatEncoder;
typedef T_byIndex = stdgo._internal.encoding.json.Json.T_byIndex;
typedef T_renamedByte = stdgo._internal.encoding.json.Json.T_renamedByte;
typedef T_renamedByteSlice = stdgo._internal.encoding.json.Json.T_renamedByteSlice;
typedef T_renamedRenamedByteSlice = stdgo._internal.encoding.json.Json.T_renamedRenamedByteSlice;
typedef RecursiveSlice = stdgo._internal.encoding.json.Json.RecursiveSlice;
typedef Ref = stdgo._internal.encoding.json.Json.Ref;
typedef Val = stdgo._internal.encoding.json.Json.Val;
typedef RefText = stdgo._internal.encoding.json.Json.RefText;
typedef ValText = stdgo._internal.encoding.json.Json.ValText;
typedef C = stdgo._internal.encoding.json.Json.C;
typedef CText = stdgo._internal.encoding.json.Json.CText;
typedef T_nilJSONMarshaler = stdgo._internal.encoding.json.Json.T_nilJSONMarshaler;
typedef T_nilTextMarshaler = stdgo._internal.encoding.json.Json.T_nilTextMarshaler;
typedef T_jsonbyte = stdgo._internal.encoding.json.Json.T_jsonbyte;
typedef T_textbyte = stdgo._internal.encoding.json.Json.T_textbyte;
typedef T_jsonint = stdgo._internal.encoding.json.Json.T_jsonint;
typedef T_textint = stdgo._internal.encoding.json.Json.T_textint;
typedef T_textfloat = stdgo._internal.encoding.json.Json.T_textfloat;
typedef RawMessage = stdgo._internal.encoding.json.Json.RawMessage;
typedef Token = stdgo._internal.encoding.json.Json.Token;
typedef Delim = stdgo._internal.encoding.json.Json.Delim;
typedef T_strMarshaler = stdgo._internal.encoding.json.Json.T_strMarshaler;
typedef T_strPtrMarshaler = stdgo._internal.encoding.json.Json.T_strPtrMarshaler;
typedef T_tagOptions = stdgo._internal.encoding.json.Json.T_tagOptions;
inline function benchmarkCodeEncoder(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_benchmarkCodeEncoderError_85___localname___Dummy = Dynamic;
inline function benchmarkCodeEncoderError(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCodeMarshal(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_benchmarkCodeMarshalError_86___localname___Dummy = Dynamic;
inline function benchmarkCodeMarshalError(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T__benchMarshalBytesError_87___localname___Dummy = Dynamic;
inline function benchmarkMarshalBytes(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMarshalBytesError(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCodeDecoder(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkUnicodeDecoder(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecoderStream(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCodeUnmarshal(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCodeUnmarshalReuse(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkUnmarshalString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkUnmarshalFloat64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkUnmarshalInt64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIssue10335(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIssue34127(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkUnmapped(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkTypeFieldsCache(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncodeMarshaler(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_benchmarkEncoderEncode_88___localname___T = Dynamic;
inline function benchmarkEncoderEncode(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNumberIsValid(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNumberIsValidRegexp(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Unmarshal parses the JSON-encoded data and stores the result
    // in the value pointed to by v. If v is nil or not a pointer,
    // Unmarshal returns an InvalidUnmarshalError.
    //
    // Unmarshal uses the inverse of the encodings that
    // Marshal uses, allocating maps, slices, and pointers as necessary,
    // with the following additional rules:
    //
    // To unmarshal JSON into a pointer, Unmarshal first handles the case of
    // the JSON being the JSON literal null. In that case, Unmarshal sets
    // the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
    // the value pointed at by the pointer. If the pointer is nil, Unmarshal
    // allocates a new value for it to point to.
    //
    // To unmarshal JSON into a value implementing the Unmarshaler interface,
    // Unmarshal calls that value's UnmarshalJSON method, including
    // when the input is a JSON null.
    // Otherwise, if the value implements encoding.TextUnmarshaler
    // and the input is a JSON quoted string, Unmarshal calls that value's
    // UnmarshalText method with the unquoted form of the string.
    //
    // To unmarshal JSON into a struct, Unmarshal matches incoming object
    // keys to the keys used by Marshal (either the struct field name or its tag),
    // preferring an exact match but also accepting a case-insensitive match. By
    // default, object keys which don't have a corresponding struct field are
    // ignored (see Decoder.DisallowUnknownFields for an alternative).
    //
    // To unmarshal JSON into an interface value,
    // Unmarshal stores one of these in the interface value:
    //
    //	bool, for JSON booleans
    //	float64, for JSON numbers
    //	string, for JSON strings
    //	[]interface{}, for JSON arrays
    //	map[string]interface{}, for JSON objects
    //	nil for JSON null
    //
    // To unmarshal a JSON array into a slice, Unmarshal resets the slice length
    // to zero and then appends each element to the slice.
    // As a special case, to unmarshal an empty JSON array into a slice,
    // Unmarshal replaces the slice with a new empty slice.
    //
    // To unmarshal a JSON array into a Go array, Unmarshal decodes
    // JSON array elements into corresponding Go array elements.
    // If the Go array is smaller than the JSON array,
    // the additional JSON array elements are discarded.
    // If the JSON array is smaller than the Go array,
    // the additional Go array elements are set to zero values.
    //
    // To unmarshal a JSON object into a map, Unmarshal first establishes a map to
    // use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
    // reuses the existing map, keeping existing entries. Unmarshal then stores
    // key-value pairs from the JSON object into the map. The map's key type must
    // either be any string type, an integer, implement json.Unmarshaler, or
    // implement encoding.TextUnmarshaler.
    //
    // If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
    //
    // If a JSON value is not appropriate for a given target type,
    // or if a JSON number overflows the target type, Unmarshal
    // skips that field and completes the unmarshaling as best it can.
    // If no more serious errors are encountered, Unmarshal returns
    // an UnmarshalTypeError describing the earliest such error. In any
    // case, it's not guaranteed that all the remaining fields following
    // the problematic one will be unmarshaled into the target object.
    //
    // The JSON null value unmarshals into an interface, map, pointer, or slice
    // by setting that Go value to nil. Because null is often used in JSON to mean
    // “not present,” unmarshaling a JSON null into any other Go type has no effect
    // on the value and produces no error.
    //
    // When unmarshaling quoted strings, invalid UTF-8 or
    // invalid UTF-16 surrogate pairs are not treated as an error.
    // Instead, they are replaced by the Unicode replacement
    // character U+FFFD.
**/
inline function unmarshal(data:Array<Int>, v:stdgo.AnyInterface):stdgo.Error throw "not implemented";
inline function testMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalBadUTF8(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalNumberZeroVal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalEmbeds(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Independent of Decode, basic coverage of the accessors in Number
**/
inline function testNumberAccessors(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLargeByteSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalInterface(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalPtrPtr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEscape(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // If people misuse the ,string modifier, the error message should be
    // helpful, telling the user that they're doing it wrong.
**/
inline function testErrorMessageFromMisusedString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testRefUnmarshal_89___localname___S = Dynamic;
inline function testRefUnmarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testEmptyString_90___localname___T2 = Dynamic;
/**
    // Test that the empty string doesn't panic decoding when ,string is specified
    // Issue 3450
**/
inline function testEmptyString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testNullString_91___localname___T = Dynamic;
/**
    // Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
    // It should also not be an error (issue 2540, issue 8587).
**/
inline function testNullString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInterfaceSet(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // JSON null values should be ignored for primitives and string values instead of resulting in an error.
    // Issue 2540
**/
inline function testUnmarshalNulls(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testStringKind_92___localname___stringKind = stdgo._internal.encoding.json.Json.T_testStringKind_92___localname___stringKind;
inline function testStringKind(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testByteKind_93___localname___byteKind = stdgo._internal.encoding.json.Json.T_testByteKind_93___localname___byteKind;
/**
    // Custom types with []byte as underlying type could not be marshaled
    // and then unmarshaled.
    // Issue 8962.
**/
inline function testByteKind(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testSliceOfCustomByte_94___localname___Uint8 = stdgo._internal.encoding.json.Json.T_testSliceOfCustomByte_94___localname___Uint8;
/**
    // The fix for issue 8962 introduced a regression.
    // Issue 12921.
**/
inline function testSliceOfCustomByte(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalTypeError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalSyntax(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalUnexported(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalJSONLiteralError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that extra object elements in an array do not result in a
    // "data changing underfoot" error.
    // Issue 3717
**/
inline function testSkipArrayObjects(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test semantics of pre-filled data, such as struct fields, map elements,
    // slices, and arrays.
    // Issues 4900 and 8837, among others.
**/
inline function testPrefilled(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInvalidUnmarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInvalidUnmarshalText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that string option is ignored for invalid types.
    // Issue 9812.
**/
inline function testInvalidStringOption(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testUnmarshalEmbeddedUnexported_95___localname___embed1 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_96___localname___embed2 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_97___localname___embed3 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_98___localname___S1 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_99___localname___S2 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_100___localname___S3 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_101___localname___S4 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_102___localname___S5 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_103___localname___S6 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_104___localname___S7 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_105___localname___S8 = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_106___localname___S9 = Dynamic;
/**
    // Test unmarshal behavior with regards to embedded unexported structs.
    //
    // (Issue 21357) If the embedded struct is a pointer and is unallocated,
    // this returns an error because unmarshal cannot set the field.
    //
    // (Issue 24152) If the embedded struct is given an explicit name,
    // ensure that the normal unmarshal logic does not panic in reflect.
    //
    // (Issue 28145) If the embedded struct is given an explicit name and has
    // exported methods, don't cause a panic trying to get its value.
**/
inline function testUnmarshalEmbeddedUnexported(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalErrorAfterMultipleJSON(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalPanic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // The decoder used to hang if decoding into an interface pointing to its own address.
    // See golang.org/issues/31740.
**/
inline function testUnmarshalRecursivePointer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test unmarshal to a map, where the map key is a user defined type.
    // See golang.org/issues/34437.
**/
inline function testUnmarshalMapWithTextUnmarshalerStringKey(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testUnmarshalRescanLiteralMangledUnquote_107___localname___T = Dynamic;
inline function testUnmarshalRescanLiteralMangledUnquote(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalMaxDepth(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Marshal returns the JSON encoding of v.
    //
    // Marshal traverses the value v recursively.
    // If an encountered value implements the Marshaler interface
    // and is not a nil pointer, Marshal calls its MarshalJSON method
    // to produce JSON. If no MarshalJSON method is present but the
    // value implements encoding.TextMarshaler instead, Marshal calls
    // its MarshalText method and encodes the result as a JSON string.
    // The nil pointer exception is not strictly necessary
    // but mimics a similar, necessary exception in the behavior of
    // UnmarshalJSON.
    //
    // Otherwise, Marshal uses the following type-dependent default encodings:
    //
    // Boolean values encode as JSON booleans.
    //
    // Floating point, integer, and Number values encode as JSON numbers.
    // NaN and +/-Inf values will return an [UnsupportedValueError].
    //
    // String values encode as JSON strings coerced to valid UTF-8,
    // replacing invalid bytes with the Unicode replacement rune.
    // So that the JSON will be safe to embed inside HTML <script> tags,
    // the string is encoded using HTMLEscape,
    // which replaces "<", ">", "&", U+2028, and U+2029 are escaped
    // to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
    // This replacement can be disabled when using an Encoder,
    // by calling SetEscapeHTML(false).
    //
    // Array and slice values encode as JSON arrays, except that
    // []byte encodes as a base64-encoded string, and a nil slice
    // encodes as the null JSON value.
    //
    // Struct values encode as JSON objects.
    // Each exported struct field becomes a member of the object, using the
    // field name as the object key, unless the field is omitted for one of the
    // reasons given below.
    //
    // The encoding of each struct field can be customized by the format string
    // stored under the "json" key in the struct field's tag.
    // The format string gives the name of the field, possibly followed by a
    // comma-separated list of options. The name may be empty in order to
    // specify options without overriding the default field name.
    //
    // The "omitempty" option specifies that the field should be omitted
    // from the encoding if the field has an empty value, defined as
    // false, 0, a nil pointer, a nil interface value, and any empty array,
    // slice, map, or string.
    //
    // As a special case, if the field tag is "-", the field is always omitted.
    // Note that a field with name "-" can still be generated using the tag "-,".
    //
    // Examples of struct field tags and their meanings:
    //
    //	// Field appears in JSON as key "myName".
    //	Field int `json:"myName"`
    //
    //	// Field appears in JSON as key "myName" and
    //	// the field is omitted from the object if its value is empty,
    //	// as defined above.
    //	Field int `json:"myName,omitempty"`
    //
    //	// Field appears in JSON as key "Field" (the default), but
    //	// the field is skipped if empty.
    //	// Note the leading comma.
    //	Field int `json:",omitempty"`
    //
    //	// Field is ignored by this package.
    //	Field int `json:"-"`
    //
    //	// Field appears in JSON as key "-".
    //	Field int `json:"-,"`
    //
    // The "string" option signals that a field is stored as JSON inside a
    // JSON-encoded string. It applies only to fields of string, floating point,
    // integer, or boolean types. This extra level of encoding is sometimes used
    // when communicating with JavaScript programs:
    //
    //	Int64String int64 `json:",string"`
    //
    // The key name will be used if it's a non-empty string consisting of
    // only Unicode letters, digits, and ASCII punctuation except quotation
    // marks, backslash, and comma.
    //
    // Anonymous struct fields are usually marshaled as if their inner exported fields
    // were fields in the outer struct, subject to the usual Go visibility rules amended
    // as described in the next paragraph.
    // An anonymous struct field with a name given in its JSON tag is treated as
    // having that name, rather than being anonymous.
    // An anonymous struct field of interface type is treated the same as having
    // that type as its name, rather than being anonymous.
    //
    // The Go visibility rules for struct fields are amended for JSON when
    // deciding which field to marshal or unmarshal. If there are
    // multiple fields at the same level, and that level is the least
    // nested (and would therefore be the nesting level selected by the
    // usual Go rules), the following extra rules apply:
    //
    // 1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
    // even if there are multiple untagged fields that would otherwise conflict.
    //
    // 2) If there is exactly one field (tagged or not according to the first rule), that is selected.
    //
    // 3) Otherwise there are multiple fields, and all are ignored; no error occurs.
    //
    // Handling of anonymous struct fields is new in Go 1.1.
    // Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
    // an anonymous struct field in both current and earlier versions, give the field
    // a JSON tag of "-".
    //
    // Map values encode as JSON objects. The map's key type must either be a
    // string, an integer type, or implement encoding.TextMarshaler. The map keys
    // are sorted and used as JSON object keys by applying the following rules,
    // subject to the UTF-8 coercion described for string values above:
    //   - keys of any string type are used directly
    //   - encoding.TextMarshalers are marshaled
    //   - integer keys are converted to strings
    //
    // Pointer values encode as the value pointed to.
    // A nil pointer encodes as the null JSON value.
    //
    // Interface values encode as the value contained in the interface.
    // A nil interface value encodes as the null JSON value.
    //
    // Channel, complex, and function values cannot be encoded in JSON.
    // Attempting to encode such a value causes Marshal to return
    // an UnsupportedTypeError.
    //
    // JSON cannot represent cyclic data structures and Marshal does not
    // handle them. Passing cyclic structures to Marshal will result in
    // an error.
**/
inline function marshal(v:stdgo.AnyInterface):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    // MarshalIndent is like Marshal but applies Indent to format the output.
    // Each JSON element in the output will begin on a new line beginning with prefix
    // followed by one or more copies of indent according to the indentation nesting.
**/
inline function marshalIndent(v:stdgo.AnyInterface, prefix:String, indent:String):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
inline function testOmitEmpty(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRoundtripStringTag(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncodeRenamedByteSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSamePointerNoCycle(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSliceNoCycle(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnsupportedValues(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Issue 43207
**/
inline function testMarshalTextFloatMap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRefValMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalerEscaping(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testAnonymousFields_108___localname___S1 = Dynamic;
@:invalid typedef T_testAnonymousFields_109___localname___S2 = Dynamic;
@:invalid typedef T_testAnonymousFields_110___localname___S = Dynamic;
@:invalid typedef T_testAnonymousFields_111___localname___S1 = Dynamic;
@:invalid typedef T_testAnonymousFields_112___localname___S2 = Dynamic;
@:invalid typedef T_testAnonymousFields_113___localname___S = Dynamic;
typedef T_testAnonymousFields_114___localname___myInt = stdgo._internal.encoding.json.Json.T_testAnonymousFields_114___localname___myInt;
@:invalid typedef T_testAnonymousFields_115___localname___S = Dynamic;
typedef T_testAnonymousFields_116___localname___MyInt = stdgo._internal.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt;
@:invalid typedef T_testAnonymousFields_117___localname___S = Dynamic;
typedef T_testAnonymousFields_118___localname___myInt = stdgo._internal.encoding.json.Json.T_testAnonymousFields_118___localname___myInt;
@:invalid typedef T_testAnonymousFields_119___localname___S = Dynamic;
typedef T_testAnonymousFields_120___localname___MyInt = stdgo._internal.encoding.json.Json.T_testAnonymousFields_120___localname___MyInt;
@:invalid typedef T_testAnonymousFields_121___localname___S = Dynamic;
@:invalid typedef T_testAnonymousFields_122___localname___s1 = Dynamic;
@:invalid typedef T_testAnonymousFields_123___localname___S2 = Dynamic;
@:invalid typedef T_testAnonymousFields_124___localname___S = Dynamic;
@:invalid typedef T_testAnonymousFields_125___localname___s1 = Dynamic;
@:invalid typedef T_testAnonymousFields_126___localname___S2 = Dynamic;
@:invalid typedef T_testAnonymousFields_127___localname___S = Dynamic;
typedef T_testAnonymousFields_128___localname___MyInt1 = stdgo._internal.encoding.json.Json.T_testAnonymousFields_128___localname___MyInt1;
typedef T_testAnonymousFields_129___localname___MyInt2 = stdgo._internal.encoding.json.Json.T_testAnonymousFields_129___localname___MyInt2;
typedef T_testAnonymousFields_130___localname___myInt = stdgo._internal.encoding.json.Json.T_testAnonymousFields_130___localname___myInt;
@:invalid typedef T_testAnonymousFields_131___localname___s2 = Dynamic;
@:invalid typedef T_testAnonymousFields_132___localname___s1 = Dynamic;
@:invalid typedef T_testAnonymousFields_133___localname___S = Dynamic;
@:invalid typedef T_testAnonymousFields_134___localname___S2 = Dynamic;
@:invalid typedef T_testAnonymousFields_135___localname___S = Dynamic;
inline function testAnonymousFields(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // See golang.org/issue/16042 and golang.org/issue/34235.
**/
inline function testNilMarshal(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Issue 5245.
**/
inline function testEmbeddedBug(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test that a field with a tag dominates untagged fields.
**/
inline function testTaggedFieldDominates(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDuplicatedFieldDisappears(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testIssue10281_136___localname___Foo = Dynamic;
inline function testIssue10281(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testMarshalErrorAndReuseEncodeState_137___localname___Dummy = Dynamic;
@:invalid typedef T_testMarshalErrorAndReuseEncodeState_138___localname___Data = Dynamic;
inline function testMarshalErrorAndReuseEncodeState(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testHTMLEscape(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testEncodePointerString_139___localname___stringPointer = Dynamic;
/**
    // golang.org/issue/8582
**/
inline function testEncodePointerString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncodeString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Issue 13783
**/
inline function testEncodeBytekind(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTextMarshalerMapKeysAreSorted(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // https://golang.org/issue/33675
**/
inline function testNilMarshalerTextMapKey(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalFloat(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testMarshalRawMessageValue_140___localname___T1 = Dynamic;
@:invalid typedef T_testMarshalRawMessageValue_141___localname___T2 = Dynamic;
inline function testMarshalRawMessageValue(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalPanic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalUncommonFieldNames(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMarshalerError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function fuzzEqualFold(f:stdgo._internal.testing.Testing.F):Void throw "not implemented";
inline function fuzzUnmarshalJSON(f:stdgo._internal.testing.Testing.F):Void throw "not implemented";
inline function fuzzDecoderToken(f:stdgo._internal.testing.Testing.F):Void throw "not implemented";
/**
    // HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
    // characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
    // so that the JSON will be safe to embed inside HTML <script> tags.
    // For historical reasons, web browsers don't honor standard HTML
    // escaping within <script> tags, so an alternative JSON encoding must be used.
**/
inline function htmlescape(dst:stdgo._internal.bytes.Bytes.Buffer, src:Array<Int>):Void throw "not implemented";
/**
    // Compact appends to dst the JSON-encoded src with
    // insignificant space characters elided.
**/
inline function compact(dst:stdgo._internal.bytes.Bytes.Buffer, src:Array<Int>):stdgo.Error throw "not implemented";
/**
    // Indent appends to dst an indented form of the JSON-encoded src.
    // Each element in a JSON object or array begins on a new,
    // indented line beginning with prefix followed by one or more
    // copies of indent according to the indentation nesting.
    // The data appended to dst does not begin with the prefix nor
    // any indentation, to make it easier to embed inside other formatted JSON data.
    // Although leading space characters (space, tab, carriage return, newline)
    // at the beginning of src are dropped, trailing space characters
    // at the end of src are preserved and copied to dst.
    // For example, if src has no trailing spaces, neither will dst;
    // if src ends in a trailing newline, so will dst.
**/
inline function indent(dst:stdgo._internal.bytes.Bytes.Buffer, src:Array<Int>, prefix:String, indent:String):stdgo.Error throw "not implemented";
inline function testNumberIsValid(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Valid reports whether data is a valid JSON encoding.
**/
inline function valid(data:Array<Int>):Bool throw "not implemented";
inline function testValid(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompact(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompactSeparators(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIndent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompactBig(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIndentBig(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIndentErrors(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewDecoder returns a new decoder that reads from r.
    //
    // The decoder introduces its own buffering and may
    // read data from r beyond the JSON values requested.
**/
inline function newDecoder(r:stdgo._internal.io.Io.Reader):Decoder throw "not implemented";
/**
    // NewEncoder returns a new encoder that writes to w.
**/
inline function newEncoder(w:stdgo._internal.io.Io.Writer):Encoder throw "not implemented";
inline function testEncoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testEncoderErrorAndReuseEncodeState_142___localname___Dummy = Dynamic;
@:invalid typedef T_testEncoderErrorAndReuseEncodeState_143___localname___Data = Dynamic;
inline function testEncoderErrorAndReuseEncodeState(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoderIndent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoderSetEscapeHTML(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderBuffered(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRawMessage(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNullRawMessage(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBlocking(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeInStream(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test from golang.org/issue/11893
**/
inline function testHTTPDecoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStructTagObjectKey(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTagParsing(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef UnmarshalTypeError_asInterface = Dynamic;
@:invalid typedef UnmarshalTypeError_static_extension = Dynamic;
@:invalid typedef UnmarshalFieldError_asInterface = Dynamic;
@:invalid typedef UnmarshalFieldError_static_extension = Dynamic;
@:invalid typedef InvalidUnmarshalError_asInterface = Dynamic;
@:invalid typedef InvalidUnmarshalError_static_extension = Dynamic;
@:invalid typedef T_decodeState_asInterface = Dynamic;
@:invalid typedef T_decodeState_static_extension = Dynamic;
@:invalid typedef T_unmarshaler_asInterface = Dynamic;
@:invalid typedef T_unmarshaler_static_extension = Dynamic;
@:invalid typedef T_unmarshalerText_asInterface = Dynamic;
@:invalid typedef T_unmarshalerText_static_extension = Dynamic;
@:invalid typedef Top_asInterface = Dynamic;
@:invalid typedef Top_static_extension = Dynamic;
@:invalid typedef Embed0p_asInterface = Dynamic;
@:invalid typedef Embed0p_static_extension = Dynamic;
@:invalid typedef Embed0q_asInterface = Dynamic;
@:invalid typedef Embed0q_static_extension = Dynamic;
@:invalid typedef Loop_asInterface = Dynamic;
@:invalid typedef Loop_static_extension = Dynamic;
@:invalid typedef S5_asInterface = Dynamic;
@:invalid typedef S5_static_extension = Dynamic;
@:invalid typedef S8_asInterface = Dynamic;
@:invalid typedef S8_static_extension = Dynamic;
@:invalid typedef S10_asInterface = Dynamic;
@:invalid typedef S10_static_extension = Dynamic;
@:invalid typedef S11_asInterface = Dynamic;
@:invalid typedef S11_static_extension = Dynamic;
@:invalid typedef S12_asInterface = Dynamic;
@:invalid typedef S12_static_extension = Dynamic;
@:invalid typedef S13_asInterface = Dynamic;
@:invalid typedef S13_static_extension = Dynamic;
@:invalid typedef T_unexportedWithMethods_asInterface = Dynamic;
@:invalid typedef T_unexportedWithMethods_static_extension = Dynamic;
@:invalid typedef MustNotUnmarshalJSON_asInterface = Dynamic;
@:invalid typedef MustNotUnmarshalJSON_static_extension = Dynamic;
@:invalid typedef MustNotUnmarshalText_asInterface = Dynamic;
@:invalid typedef MustNotUnmarshalText_static_extension = Dynamic;
@:invalid typedef T_unmarshalPanic_asInterface = Dynamic;
@:invalid typedef T_unmarshalPanic_static_extension = Dynamic;
@:invalid typedef UnsupportedTypeError_asInterface = Dynamic;
@:invalid typedef UnsupportedTypeError_static_extension = Dynamic;
@:invalid typedef UnsupportedValueError_asInterface = Dynamic;
@:invalid typedef UnsupportedValueError_static_extension = Dynamic;
@:invalid typedef InvalidUTF8Error_asInterface = Dynamic;
@:invalid typedef InvalidUTF8Error_static_extension = Dynamic;
@:invalid typedef MarshalerError_asInterface = Dynamic;
@:invalid typedef MarshalerError_static_extension = Dynamic;
@:invalid typedef T_encodeState_asInterface = Dynamic;
@:invalid typedef T_encodeState_static_extension = Dynamic;
@:invalid typedef T_jsonError_asInterface = Dynamic;
@:invalid typedef T_jsonError_static_extension = Dynamic;
@:invalid typedef T_structEncoder_asInterface = Dynamic;
@:invalid typedef T_structEncoder_static_extension = Dynamic;
@:invalid typedef T_mapEncoder_asInterface = Dynamic;
@:invalid typedef T_mapEncoder_static_extension = Dynamic;
@:invalid typedef T_sliceEncoder_asInterface = Dynamic;
@:invalid typedef T_sliceEncoder_static_extension = Dynamic;
@:invalid typedef T_arrayEncoder_asInterface = Dynamic;
@:invalid typedef T_arrayEncoder_static_extension = Dynamic;
@:invalid typedef T_ptrEncoder_asInterface = Dynamic;
@:invalid typedef T_ptrEncoder_static_extension = Dynamic;
@:invalid typedef T_condAddrEncoder_asInterface = Dynamic;
@:invalid typedef T_condAddrEncoder_static_extension = Dynamic;
@:invalid typedef T_reflectWithString_asInterface = Dynamic;
@:invalid typedef T_reflectWithString_static_extension = Dynamic;
@:invalid typedef BugB_asInterface = Dynamic;
@:invalid typedef BugB_static_extension = Dynamic;
@:invalid typedef BugX_asInterface = Dynamic;
@:invalid typedef BugX_static_extension = Dynamic;
@:invalid typedef BugY_asInterface = Dynamic;
@:invalid typedef BugY_static_extension = Dynamic;
@:invalid typedef BugZ_asInterface = Dynamic;
@:invalid typedef BugZ_static_extension = Dynamic;
@:invalid typedef T_marshalPanic_asInterface = Dynamic;
@:invalid typedef T_marshalPanic_static_extension = Dynamic;
@:invalid typedef SyntaxError_asInterface = Dynamic;
@:invalid typedef SyntaxError_static_extension = Dynamic;
@:invalid typedef T_scanner_asInterface = Dynamic;
@:invalid typedef T_scanner_static_extension = Dynamic;
@:invalid typedef Decoder_asInterface = Dynamic;
@:invalid typedef Decoder_static_extension = Dynamic;
@:invalid typedef Encoder_asInterface = Dynamic;
@:invalid typedef Encoder_static_extension = Dynamic;
@:invalid typedef Number_asInterface = Dynamic;
@:invalid typedef Number_static_extension = Dynamic;
@:invalid typedef SS_asInterface = Dynamic;
@:invalid typedef SS_static_extension = Dynamic;
@:invalid typedef T_u8marshal_asInterface = Dynamic;
@:invalid typedef T_u8marshal_static_extension = Dynamic;
@:invalid typedef T_byteWithMarshalJSON_asInterface = Dynamic;
@:invalid typedef T_byteWithMarshalJSON_static_extension = Dynamic;
@:invalid typedef T_byteWithPtrMarshalJSON_asInterface = Dynamic;
@:invalid typedef T_byteWithPtrMarshalJSON_static_extension = Dynamic;
@:invalid typedef T_byteWithMarshalText_asInterface = Dynamic;
@:invalid typedef T_byteWithMarshalText_static_extension = Dynamic;
@:invalid typedef T_byteWithPtrMarshalText_asInterface = Dynamic;
@:invalid typedef T_byteWithPtrMarshalText_static_extension = Dynamic;
@:invalid typedef T_intWithMarshalJSON_asInterface = Dynamic;
@:invalid typedef T_intWithMarshalJSON_static_extension = Dynamic;
@:invalid typedef T_intWithPtrMarshalJSON_asInterface = Dynamic;
@:invalid typedef T_intWithPtrMarshalJSON_static_extension = Dynamic;
@:invalid typedef T_intWithMarshalText_asInterface = Dynamic;
@:invalid typedef T_intWithMarshalText_static_extension = Dynamic;
@:invalid typedef T_intWithPtrMarshalText_asInterface = Dynamic;
@:invalid typedef T_intWithPtrMarshalText_static_extension = Dynamic;
@:invalid typedef Time3339_asInterface = Dynamic;
@:invalid typedef Time3339_static_extension = Dynamic;
@:invalid typedef T_textUnmarshalerString_asInterface = Dynamic;
@:invalid typedef T_textUnmarshalerString_static_extension = Dynamic;
@:invalid typedef T_floatEncoder_asInterface = Dynamic;
@:invalid typedef T_floatEncoder_static_extension = Dynamic;
@:invalid typedef T_byIndex_asInterface = Dynamic;
@:invalid typedef T_byIndex_static_extension = Dynamic;
@:invalid typedef Ref_asInterface = Dynamic;
@:invalid typedef Ref_static_extension = Dynamic;
@:invalid typedef Val_asInterface = Dynamic;
@:invalid typedef Val_static_extension = Dynamic;
@:invalid typedef RefText_asInterface = Dynamic;
@:invalid typedef RefText_static_extension = Dynamic;
@:invalid typedef ValText_asInterface = Dynamic;
@:invalid typedef ValText_static_extension = Dynamic;
@:invalid typedef C_asInterface = Dynamic;
@:invalid typedef C_static_extension = Dynamic;
@:invalid typedef CText_asInterface = Dynamic;
@:invalid typedef CText_static_extension = Dynamic;
@:invalid typedef T_nilJSONMarshaler_asInterface = Dynamic;
@:invalid typedef T_nilJSONMarshaler_static_extension = Dynamic;
@:invalid typedef T_nilTextMarshaler_asInterface = Dynamic;
@:invalid typedef T_nilTextMarshaler_static_extension = Dynamic;
@:invalid typedef T_jsonbyte_asInterface = Dynamic;
@:invalid typedef T_jsonbyte_static_extension = Dynamic;
@:invalid typedef T_textbyte_asInterface = Dynamic;
@:invalid typedef T_textbyte_static_extension = Dynamic;
@:invalid typedef T_jsonint_asInterface = Dynamic;
@:invalid typedef T_jsonint_static_extension = Dynamic;
@:invalid typedef T_textint_asInterface = Dynamic;
@:invalid typedef T_textint_static_extension = Dynamic;
@:invalid typedef T_textfloat_asInterface = Dynamic;
@:invalid typedef T_textfloat_static_extension = Dynamic;
@:invalid typedef RawMessage_asInterface = Dynamic;
@:invalid typedef RawMessage_static_extension = Dynamic;
@:invalid typedef Delim_asInterface = Dynamic;
@:invalid typedef Delim_static_extension = Dynamic;
@:invalid typedef T_strMarshaler_asInterface = Dynamic;
@:invalid typedef T_strMarshaler_static_extension = Dynamic;
@:invalid typedef T_strPtrMarshaler_asInterface = Dynamic;
@:invalid typedef T_strPtrMarshaler_static_extension = Dynamic;
@:invalid typedef T_tagOptions_asInterface = Dynamic;
@:invalid typedef T_tagOptions_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_98___localname___S1_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_98___localname___S1_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_99___localname___S2_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_99___localname___S2_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_100___localname___S3_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_100___localname___S3_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_101___localname___S4_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_101___localname___S4_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_102___localname___S5_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_102___localname___S5_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_103___localname___S6_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_103___localname___S6_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_104___localname___S7_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_104___localname___S7_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_105___localname___S8_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_105___localname___S8_static_extension = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_106___localname___S9_asInterface = Dynamic;
@:invalid typedef T_testUnmarshalEmbeddedUnexported_106___localname___S9_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_110___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_110___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_113___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_113___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_115___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_115___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_117___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_117___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_119___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_119___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_121___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_121___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_124___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_124___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_127___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_127___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_131___localname___s2_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_131___localname___s2_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_132___localname___s1_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_132___localname___s1_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_133___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_133___localname___S_static_extension = Dynamic;
@:invalid typedef T_testAnonymousFields_135___localname___S_asInterface = Dynamic;
@:invalid typedef T_testAnonymousFields_135___localname___S_static_extension = Dynamic;
