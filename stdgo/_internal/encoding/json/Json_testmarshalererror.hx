package stdgo._internal.encoding.json;
function testMarshalerError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (("test variable" : stdgo.GoString) : stdgo.GoString);
        var _st = (stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_s)) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _errText = (("json: test error" : stdgo.GoString) : stdgo.GoString);
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35>(2, 2, ...[({ _err : (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_st, stdgo._internal.fmt.Fmt_errorf.errorf(_errText?.__copy__()), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>), _want : (((("json: error calling MarshalJSON for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _errText?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35), ({ _err : (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_st, stdgo._internal.fmt.Fmt_errorf.errorf(_errText?.__copy__()), ("TestMarshalerError" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>), _want : (((("json: error calling TestMarshalerError for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _errText?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1184"
        for (_i => _tt in _tests) {
            var _got = (_tt._err.error()?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1186"
            if (_got != (_tt._want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L1187"
                _t.errorf(("MarshalerError test %d, got: %s, want: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
