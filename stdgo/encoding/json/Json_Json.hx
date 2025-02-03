package stdgo.encoding.json;
/**
    Package json implements encoding and decoding of JSON as defined in
    RFC 7159. The mapping between JSON and Go values is described
    in the documentation for the Marshal and Unmarshal functions.
    
    See "JSON and Go" for an introduction to this package:
    https://golang.org/doc/articles/json_and_go.html
**/
class Json {
    static public inline function benchmarkCodeEncoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeEncoder.benchmarkCodeEncoder(_b);
    }
    static public inline function benchmarkCodeEncoderError(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeEncoderError.benchmarkCodeEncoderError(_b);
    }
    static public inline function benchmarkCodeMarshal(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeMarshal.benchmarkCodeMarshal(_b);
    }
    static public inline function benchmarkCodeMarshalError(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeMarshalError.benchmarkCodeMarshalError(_b);
    }
    static public inline function benchmarkMarshalBytes(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkMarshalBytes.benchmarkMarshalBytes(_b);
    }
    static public inline function benchmarkMarshalBytesError(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkMarshalBytesError.benchmarkMarshalBytesError(_b);
    }
    static public inline function benchmarkCodeDecoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeDecoder.benchmarkCodeDecoder(_b);
    }
    static public inline function benchmarkUnicodeDecoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkUnicodeDecoder.benchmarkUnicodeDecoder(_b);
    }
    static public inline function benchmarkDecoderStream(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkDecoderStream.benchmarkDecoderStream(_b);
    }
    static public inline function benchmarkCodeUnmarshal(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeUnmarshal.benchmarkCodeUnmarshal(_b);
    }
    static public inline function benchmarkCodeUnmarshalReuse(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkCodeUnmarshalReuse.benchmarkCodeUnmarshalReuse(_b);
    }
    static public inline function benchmarkUnmarshalString(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalString.benchmarkUnmarshalString(_b);
    }
    static public inline function benchmarkUnmarshalFloat64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalFloat64.benchmarkUnmarshalFloat64(_b);
    }
    static public inline function benchmarkUnmarshalInt64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalInt64.benchmarkUnmarshalInt64(_b);
    }
    static public inline function benchmarkIssue10335(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkIssue10335.benchmarkIssue10335(_b);
    }
    static public inline function benchmarkIssue34127(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkIssue34127.benchmarkIssue34127(_b);
    }
    static public inline function benchmarkUnmapped(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkUnmapped.benchmarkUnmapped(_b);
    }
    static public inline function benchmarkTypeFieldsCache(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkTypeFieldsCache.benchmarkTypeFieldsCache(_b);
    }
    static public inline function benchmarkEncodeMarshaler(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkEncodeMarshaler.benchmarkEncodeMarshaler(_b);
    }
    static public inline function benchmarkEncoderEncode(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkEncoderEncode.benchmarkEncoderEncode(_b);
    }
    static public inline function benchmarkNumberIsValid(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkNumberIsValid.benchmarkNumberIsValid(_b);
    }
    static public inline function benchmarkNumberIsValidRegexp(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.json.Json_benchmarkNumberIsValidRegexp.benchmarkNumberIsValidRegexp(_b);
    }
    /**
        Unmarshal parses the JSON-encoded data and stores the result
        in the value pointed to by v. If v is nil or not a pointer,
        Unmarshal returns an InvalidUnmarshalError.
        
        Unmarshal uses the inverse of the encodings that
        Marshal uses, allocating maps, slices, and pointers as necessary,
        with the following additional rules:
        
        To unmarshal JSON into a pointer, Unmarshal first handles the case of
        the JSON being the JSON literal null. In that case, Unmarshal sets
        the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
        the value pointed at by the pointer. If the pointer is nil, Unmarshal
        allocates a new value for it to point to.
        
        To unmarshal JSON into a value implementing the Unmarshaler interface,
        Unmarshal calls that value's UnmarshalJSON method, including
        when the input is a JSON null.
        Otherwise, if the value implements encoding.TextUnmarshaler
        and the input is a JSON quoted string, Unmarshal calls that value's
        UnmarshalText method with the unquoted form of the string.
        
        To unmarshal JSON into a struct, Unmarshal matches incoming object
        keys to the keys used by Marshal (either the struct field name or its tag),
        preferring an exact match but also accepting a case-insensitive match. By
        default, object keys which don't have a corresponding struct field are
        ignored (see Decoder.DisallowUnknownFields for an alternative).
        
        To unmarshal JSON into an interface value,
        Unmarshal stores one of these in the interface value:
        
        	bool, for JSON booleans
        	float64, for JSON numbers
        	string, for JSON strings
        	[]interface{}, for JSON arrays
        	map[string]interface{}, for JSON objects
        	nil for JSON null
        
        To unmarshal a JSON array into a slice, Unmarshal resets the slice length
        to zero and then appends each element to the slice.
        As a special case, to unmarshal an empty JSON array into a slice,
        Unmarshal replaces the slice with a new empty slice.
        
        To unmarshal a JSON array into a Go array, Unmarshal decodes
        JSON array elements into corresponding Go array elements.
        If the Go array is smaller than the JSON array,
        the additional JSON array elements are discarded.
        If the JSON array is smaller than the Go array,
        the additional Go array elements are set to zero values.
        
        To unmarshal a JSON object into a map, Unmarshal first establishes a map to
        use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
        reuses the existing map, keeping existing entries. Unmarshal then stores
        key-value pairs from the JSON object into the map. The map's key type must
        either be any string type, an integer, implement json.Unmarshaler, or
        implement encoding.TextUnmarshaler.
        
        If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
        
        If a JSON value is not appropriate for a given target type,
        or if a JSON number overflows the target type, Unmarshal
        skips that field and completes the unmarshaling as best it can.
        If no more serious errors are encountered, Unmarshal returns
        an UnmarshalTypeError describing the earliest such error. In any
        case, it's not guaranteed that all the remaining fields following
        the problematic one will be unmarshaled into the target object.
        
        The JSON null value unmarshals into an interface, map, pointer, or slice
        by setting that Go value to nil. Because null is often used in JSON to mean
        “not present,” unmarshaling a JSON null into any other Go type has no effect
        on the value and produces no error.
        
        When unmarshaling quoted strings, invalid UTF-8 or
        invalid UTF-16 surrogate pairs are not treated as an error.
        Instead, they are replaced by the Unicode replacement
        character U+FFFD.
    **/
    static public inline function unmarshal(_data:Array<std.UInt>, _v:stdgo.AnyInterface):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, _v);
    }
    static public inline function testMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshal.testMarshal(_t);
    }
    static public inline function testMarshalBadUTF8(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalBadUTF8.testMarshalBadUTF8(_t);
    }
    static public inline function testMarshalNumberZeroVal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalNumberZeroVal.testMarshalNumberZeroVal(_t);
    }
    static public inline function testMarshalEmbeds(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalEmbeds.testMarshalEmbeds(_t);
    }
    static public inline function testUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshal.testUnmarshal(_t);
    }
    static public inline function testUnmarshalMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalMarshal.testUnmarshalMarshal(_t);
    }
    /**
        Independent of Decode, basic coverage of the accessors in Number
    **/
    static public inline function testNumberAccessors(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNumberAccessors.testNumberAccessors(_t);
    }
    static public inline function testLargeByteSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testLargeByteSlice.testLargeByteSlice(_t);
    }
    static public inline function testUnmarshalInterface(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalInterface.testUnmarshalInterface(_t);
    }
    static public inline function testUnmarshalPtrPtr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalPtrPtr.testUnmarshalPtrPtr(_t);
    }
    static public inline function testEscape(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEscape.testEscape(_t);
    }
    /**
        If people misuse the ,string modifier, the error message should be
        helpful, telling the user that they're doing it wrong.
    **/
    static public inline function testErrorMessageFromMisusedString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testErrorMessageFromMisusedString.testErrorMessageFromMisusedString(_t);
    }
    static public inline function testRefUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testRefUnmarshal.testRefUnmarshal(_t);
    }
    /**
        Test that the empty string doesn't panic decoding when ,string is specified
        Issue 3450
    **/
    static public inline function testEmptyString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEmptyString.testEmptyString(_t);
    }
    /**
        Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
        It should also not be an error (issue 2540, issue 8587).
    **/
    static public inline function testNullString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNullString.testNullString(_t);
    }
    static public inline function testInterfaceSet(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testInterfaceSet.testInterfaceSet(_t);
    }
    /**
        JSON null values should be ignored for primitives and string values instead of resulting in an error.
        Issue 2540
    **/
    static public inline function testUnmarshalNulls(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalNulls.testUnmarshalNulls(_t);
    }
    static public inline function testStringKind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testStringKind.testStringKind(_t);
    }
    /**
        Custom types with []byte as underlying type could not be marshaled
        and then unmarshaled.
        Issue 8962.
    **/
    static public inline function testByteKind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testByteKind.testByteKind(_t);
    }
    /**
        The fix for issue 8962 introduced a regression.
        Issue 12921.
    **/
    static public inline function testSliceOfCustomByte(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testSliceOfCustomByte.testSliceOfCustomByte(_t);
    }
    static public inline function testUnmarshalTypeError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalTypeError.testUnmarshalTypeError(_t);
    }
    static public inline function testUnmarshalSyntax(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalSyntax.testUnmarshalSyntax(_t);
    }
    static public inline function testUnmarshalUnexported(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalUnexported.testUnmarshalUnexported(_t);
    }
    static public inline function testUnmarshalJSONLiteralError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalJSONLiteralError.testUnmarshalJSONLiteralError(_t);
    }
    /**
        Test that extra object elements in an array do not result in a
        "data changing underfoot" error.
        Issue 3717
    **/
    static public inline function testSkipArrayObjects(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testSkipArrayObjects.testSkipArrayObjects(_t);
    }
    /**
        Test semantics of pre-filled data, such as struct fields, map elements,
        slices, and arrays.
        Issues 4900 and 8837, among others.
    **/
    static public inline function testPrefilled(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testPrefilled.testPrefilled(_t);
    }
    static public inline function testInvalidUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testInvalidUnmarshal.testInvalidUnmarshal(_t);
    }
    static public inline function testInvalidUnmarshalText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testInvalidUnmarshalText.testInvalidUnmarshalText(_t);
    }
    /**
        Test that string option is ignored for invalid types.
        Issue 9812.
    **/
    static public inline function testInvalidStringOption(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testInvalidStringOption.testInvalidStringOption(_t);
    }
    /**
        Test unmarshal behavior with regards to embedded unexported structs.
        
        (Issue 21357) If the embedded struct is a pointer and is unallocated,
        this returns an error because unmarshal cannot set the field.
        
        (Issue 24152) If the embedded struct is given an explicit name,
        ensure that the normal unmarshal logic does not panic in reflect.
        
        (Issue 28145) If the embedded struct is given an explicit name and has
        exported methods, don't cause a panic trying to get its value.
    **/
    static public inline function testUnmarshalEmbeddedUnexported(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalEmbeddedUnexported.testUnmarshalEmbeddedUnexported(_t);
    }
    static public inline function testUnmarshalErrorAfterMultipleJSON(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalErrorAfterMultipleJSON.testUnmarshalErrorAfterMultipleJSON(_t);
    }
    static public inline function testUnmarshalPanic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalPanic.testUnmarshalPanic(_t);
    }
    /**
        The decoder used to hang if decoding into an interface pointing to its own address.
        See golang.org/issues/31740.
    **/
    static public inline function testUnmarshalRecursivePointer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalRecursivePointer.testUnmarshalRecursivePointer(_t);
    }
    /**
        Test unmarshal to a map, where the map key is a user defined type.
        See golang.org/issues/34437.
    **/
    static public inline function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalMapWithTextUnmarshalerStringKey.testUnmarshalMapWithTextUnmarshalerStringKey(_t);
    }
    static public inline function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalRescanLiteralMangledUnquote.testUnmarshalRescanLiteralMangledUnquote(_t);
    }
    static public inline function testUnmarshalMaxDepth(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnmarshalMaxDepth.testUnmarshalMaxDepth(_t);
    }
    /**
        Marshal returns the JSON encoding of v.
        
        Marshal traverses the value v recursively.
        If an encountered value implements the Marshaler interface
        and is not a nil pointer, Marshal calls its MarshalJSON method
        to produce JSON. If no MarshalJSON method is present but the
        value implements encoding.TextMarshaler instead, Marshal calls
        its MarshalText method and encodes the result as a JSON string.
        The nil pointer exception is not strictly necessary
        but mimics a similar, necessary exception in the behavior of
        UnmarshalJSON.
        
        Otherwise, Marshal uses the following type-dependent default encodings:
        
        Boolean values encode as JSON booleans.
        
        Floating point, integer, and Number values encode as JSON numbers.
        NaN and +/-Inf values will return an [UnsupportedValueError].
        
        String values encode as JSON strings coerced to valid UTF-8,
        replacing invalid bytes with the Unicode replacement rune.
        So that the JSON will be safe to embed inside HTML <script> tags,
        the string is encoded using HTMLEscape,
        which replaces "<", ">", "&", U+2028, and U+2029 are escaped
        to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
        This replacement can be disabled when using an Encoder,
        by calling SetEscapeHTML(false).
        
        Array and slice values encode as JSON arrays, except that
        []byte encodes as a base64-encoded string, and a nil slice
        encodes as the null JSON value.
        
        Struct values encode as JSON objects.
        Each exported struct field becomes a member of the object, using the
        field name as the object key, unless the field is omitted for one of the
        reasons given below.
        
        The encoding of each struct field can be customized by the format string
        stored under the "json" key in the struct field's tag.
        The format string gives the name of the field, possibly followed by a
        comma-separated list of options. The name may be empty in order to
        specify options without overriding the default field name.
        
        The "omitempty" option specifies that the field should be omitted
        from the encoding if the field has an empty value, defined as
        false, 0, a nil pointer, a nil interface value, and any empty array,
        slice, map, or string.
        
        As a special case, if the field tag is "-", the field is always omitted.
        Note that a field with name "-" can still be generated using the tag "-,".
        
        Examples of struct field tags and their meanings:
        
        	// Field appears in JSON as key "myName".
        	Field int `json:"myName"`
        
        	// Field appears in JSON as key "myName" and
        	// the field is omitted from the object if its value is empty,
        	// as defined above.
        	Field int `json:"myName,omitempty"`
        
        	// Field appears in JSON as key "Field" (the default), but
        	// the field is skipped if empty.
        	// Note the leading comma.
        	Field int `json:",omitempty"`
        
        	// Field is ignored by this package.
        	Field int `json:"-"`
        
        	// Field appears in JSON as key "-".
        	Field int `json:"-,"`
        
        The "string" option signals that a field is stored as JSON inside a
        JSON-encoded string. It applies only to fields of string, floating point,
        integer, or boolean types. This extra level of encoding is sometimes used
        when communicating with JavaScript programs:
        
        	Int64String int64 `json:",string"`
        
        The key name will be used if it's a non-empty string consisting of
        only Unicode letters, digits, and ASCII punctuation except quotation
        marks, backslash, and comma.
        
        Anonymous struct fields are usually marshaled as if their inner exported fields
        were fields in the outer struct, subject to the usual Go visibility rules amended
        as described in the next paragraph.
        An anonymous struct field with a name given in its JSON tag is treated as
        having that name, rather than being anonymous.
        An anonymous struct field of interface type is treated the same as having
        that type as its name, rather than being anonymous.
        
        The Go visibility rules for struct fields are amended for JSON when
        deciding which field to marshal or unmarshal. If there are
        multiple fields at the same level, and that level is the least
        nested (and would therefore be the nesting level selected by the
        usual Go rules), the following extra rules apply:
        
        1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
        even if there are multiple untagged fields that would otherwise conflict.
        
        2) If there is exactly one field (tagged or not according to the first rule), that is selected.
        
        3) Otherwise there are multiple fields, and all are ignored; no error occurs.
        
        Handling of anonymous struct fields is new in Go 1.1.
        Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
        an anonymous struct field in both current and earlier versions, give the field
        a JSON tag of "-".
        
        Map values encode as JSON objects. The map's key type must either be a
        string, an integer type, or implement encoding.TextMarshaler. The map keys
        are sorted and used as JSON object keys by applying the following rules,
        subject to the UTF-8 coercion described for string values above:
          - keys of any string type are used directly
          - encoding.TextMarshalers are marshaled
          - integer keys are converted to strings
        
        Pointer values encode as the value pointed to.
        A nil pointer encodes as the null JSON value.
        
        Interface values encode as the value contained in the interface.
        A nil interface value encodes as the null JSON value.
        
        Channel, complex, and function values cannot be encoded in JSON.
        Attempting to encode such a value causes Marshal to return
        an UnsupportedTypeError.
        
        JSON cannot represent cyclic data structures and Marshal does not
        handle them. Passing cyclic structures to Marshal will result in
        an error.
    **/
    static public inline function marshal(_v:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.encoding.json.Json_marshal.marshal(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        MarshalIndent is like Marshal but applies Indent to format the output.
        Each JSON element in the output will begin on a new line beginning with prefix
        followed by one or more copies of indent according to the indentation nesting.
    **/
    static public inline function marshalIndent(_v:stdgo.AnyInterface, _prefix:String, _indent:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(_v, _prefix, _indent);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function testOmitEmpty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testOmitEmpty.testOmitEmpty(_t);
    }
    static public inline function testRoundtripStringTag(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testRoundtripStringTag.testRoundtripStringTag(_t);
    }
    static public inline function testEncodeRenamedByteSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncodeRenamedByteSlice.testEncodeRenamedByteSlice(_t);
    }
    static public inline function testSamePointerNoCycle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testSamePointerNoCycle.testSamePointerNoCycle(_t);
    }
    static public inline function testSliceNoCycle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testSliceNoCycle.testSliceNoCycle(_t);
    }
    static public inline function testUnsupportedValues(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testUnsupportedValues.testUnsupportedValues(_t);
    }
    /**
        Issue 43207
    **/
    static public inline function testMarshalTextFloatMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalTextFloatMap.testMarshalTextFloatMap(_t);
    }
    static public inline function testRefValMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testRefValMarshal.testRefValMarshal(_t);
    }
    static public inline function testMarshalerEscaping(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalerEscaping.testMarshalerEscaping(_t);
    }
    static public inline function testAnonymousFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testAnonymousFields.testAnonymousFields(_t);
    }
    /**
        See golang.org/issue/16042 and golang.org/issue/34235.
    **/
    static public inline function testNilMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNilMarshal.testNilMarshal(_t);
    }
    /**
        Issue 5245.
    **/
    static public inline function testEmbeddedBug(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEmbeddedBug.testEmbeddedBug(_t);
    }
    /**
        Test that a field with a tag dominates untagged fields.
    **/
    static public inline function testTaggedFieldDominates(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testTaggedFieldDominates.testTaggedFieldDominates(_t);
    }
    static public inline function testDuplicatedFieldDisappears(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testDuplicatedFieldDisappears.testDuplicatedFieldDisappears(_t);
    }
    static public inline function testIssue10281(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testIssue10281.testIssue10281(_t);
    }
    static public inline function testMarshalErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalErrorAndReuseEncodeState.testMarshalErrorAndReuseEncodeState(_t);
    }
    static public inline function testHTMLEscape(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testHTMLEscape.testHTMLEscape(_t);
    }
    /**
        golang.org/issue/8582
    **/
    static public inline function testEncodePointerString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncodePointerString.testEncodePointerString(_t);
    }
    static public inline function testEncodeString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncodeString.testEncodeString(_t);
    }
    /**
        Issue 13783
    **/
    static public inline function testEncodeBytekind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncodeBytekind.testEncodeBytekind(_t);
    }
    static public inline function testTextMarshalerMapKeysAreSorted(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testTextMarshalerMapKeysAreSorted.testTextMarshalerMapKeysAreSorted(_t);
    }
    /**
        https://golang.org/issue/33675
    **/
    static public inline function testNilMarshalerTextMapKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNilMarshalerTextMapKey.testNilMarshalerTextMapKey(_t);
    }
    static public inline function testMarshalFloat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalFloat.testMarshalFloat(_t);
    }
    static public inline function testMarshalRawMessageValue(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalRawMessageValue.testMarshalRawMessageValue(_t);
    }
    static public inline function testMarshalPanic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalPanic.testMarshalPanic(_t);
    }
    static public inline function testMarshalUncommonFieldNames(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalUncommonFieldNames.testMarshalUncommonFieldNames(_t);
    }
    static public inline function testMarshalerError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testMarshalerError.testMarshalerError(_t);
    }
    static public inline function fuzzEqualFold(_f:stdgo._internal.testing.Testing_F.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.encoding.json.Json_fuzzEqualFold.fuzzEqualFold(_f);
    }
    static public inline function fuzzUnmarshalJSON(_f:stdgo._internal.testing.Testing_F.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.encoding.json.Json_fuzzUnmarshalJSON.fuzzUnmarshalJSON(_f);
    }
    static public inline function fuzzDecoderToken(_f:stdgo._internal.testing.Testing_F.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.encoding.json.Json_fuzzDecoderToken.fuzzDecoderToken(_f);
    }
    /**
        HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
        characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
        so that the JSON will be safe to embed inside HTML <script> tags.
        For historical reasons, web browsers don't honor standard HTML
        escaping within <script> tags, so an alternative JSON encoding must be used.
    **/
    static public inline function hTMLEscape(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>):Void {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.json.Json_hTMLEscape.hTMLEscape(_dst, _src);
    }
    /**
        Compact appends to dst the JSON-encoded src with
        insignificant space characters elided.
    **/
    static public inline function compact(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>):stdgo.Error {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_compact.compact(_dst, _src);
    }
    /**
        Indent appends to dst an indented form of the JSON-encoded src.
        Each element in a JSON object or array begins on a new,
        indented line beginning with prefix followed by one or more
        copies of indent according to the indentation nesting.
        The data appended to dst does not begin with the prefix nor
        any indentation, to make it easier to embed inside other formatted JSON data.
        Although leading space characters (space, tab, carriage return, newline)
        at the beginning of src are dropped, trailing space characters
        at the end of src are preserved and copied to dst.
        For example, if src has no trailing spaces, neither will dst;
        if src ends in a trailing newline, so will dst.
    **/
    static public inline function indent(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>, _prefix:String, _indent:String):stdgo.Error {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        return stdgo._internal.encoding.json.Json_indent.indent(_dst, _src, _prefix, _indent);
    }
    static public inline function testNumberIsValid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNumberIsValid.testNumberIsValid(_t);
    }
    /**
        Valid reports whether data is a valid JSON encoding.
    **/
    static public inline function valid(_data:Array<std.UInt>):Bool {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_valid.valid(_data);
    }
    static public inline function testValid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testValid.testValid(_t);
    }
    static public inline function testCompact(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testCompact.testCompact(_t);
    }
    static public inline function testCompactSeparators(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testCompactSeparators.testCompactSeparators(_t);
    }
    static public inline function testIndent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testIndent.testIndent(_t);
    }
    static public inline function testCompactBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testCompactBig.testCompactBig(_t);
    }
    static public inline function testIndentBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testIndentBig.testIndentBig(_t);
    }
    static public inline function testIndentErrors(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testIndentErrors.testIndentErrors(_t);
    }
    /**
        NewDecoder returns a new decoder that reads from r.
        
        The decoder introduces its own buffering and may
        read data from r beyond the JSON values requested.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):Decoder {
        return stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_r);
    }
    /**
        NewEncoder returns a new encoder that writes to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):Encoder {
        return stdgo._internal.encoding.json.Json_newEncoder.newEncoder(_w);
    }
    static public inline function testEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncoder.testEncoder(_t);
    }
    static public inline function testEncoderErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncoderErrorAndReuseEncodeState.testEncoderErrorAndReuseEncodeState(_t);
    }
    static public inline function testEncoderIndent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncoderIndent.testEncoderIndent(_t);
    }
    static public inline function testEncoderSetEscapeHTML(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testEncoderSetEscapeHTML.testEncoderSetEscapeHTML(_t);
    }
    static public inline function testDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testDecoder.testDecoder(_t);
    }
    static public inline function testDecoderBuffered(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testDecoderBuffered.testDecoderBuffered(_t);
    }
    static public inline function testRawMessage(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testRawMessage.testRawMessage(_t);
    }
    static public inline function testNullRawMessage(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testNullRawMessage.testNullRawMessage(_t);
    }
    static public inline function testBlocking(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testBlocking.testBlocking(_t);
    }
    static public inline function testDecodeInStream(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testDecodeInStream.testDecodeInStream(_t);
    }
    /**
        Test from golang.org/issue/11893
    **/
    static public inline function testHTTPDecoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testHTTPDecoding.testHTTPDecoding(_t);
    }
    static public inline function testStructTagObjectKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testStructTagObjectKey.testStructTagObjectKey(_t);
    }
    static public inline function testTagParsing(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.json.Json_testTagParsing.testTagParsing(_t);
    }
}
