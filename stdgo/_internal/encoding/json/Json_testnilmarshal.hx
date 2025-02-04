package stdgo._internal.encoding.json;
function testNilMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12>(13, 13, ...[
({ _v : (null : stdgo.AnyInterface), _want : ("null" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat64))), _want : ("0" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.AnyInterface>)), _want : ("null" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoString>)), _want : ("null" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), _want : ("null" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoUInt8>)), _want : ("null" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : ("gopher" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_24.T__struct_24))), _want : ("{\"M\":\"gopher\"}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (null : stdgo._internal.encoding.json.Json_marshaler.Marshaler) } : stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25))), _want : ("{\"M\":null}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.asInterface((null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niljsonmarshaler.T_nilJSONMarshaler>)) } : stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25))), _want : ("{\"M\":\"0zenil0\"}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niljsonmarshaler.T_nilJSONMarshaler>)) } : stdgo._internal.encoding.json.Json_t__struct_26.T__struct_26))), _want : ("{\"M\":null}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler) } : stdgo._internal.encoding.json.Json_t__struct_27.T__struct_27))), _want : ("{\"M\":null}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.asInterface((null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niltextmarshaler.T_nilTextMarshaler>)) } : stdgo._internal.encoding.json.Json_t__struct_27.T__struct_27))), _want : ("{\"M\":\"0zenil0\"}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niltextmarshaler.T_nilTextMarshaler>)) } : stdgo._internal.encoding.json.Json_t__struct_26.T__struct_26))), _want : ("{\"M\":null}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _v : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12>);
        for (__4 => _tt in _testCases) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._v), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_out : stdgo.GoString) != _tt._want) : Bool)) {
                @:check2r _t.errorf(("Marshal(%#v) = %#q, %#v, want %#q, nil" : stdgo.GoString), _tt._v, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
                continue;
            };
        };
    }
