package stdgo._internal.encoding.json;
function testUnmarshalErrorAfterMultipleJSON(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest>(5, 5, ...[({ _in : ("1 false null :" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \':\' looking for beginning of value" : stdgo.GoString), (14i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) } : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest), ({ _in : ("1 [] [,]" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \',\' looking for beginning of value" : stdgo.GoString), (7i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) } : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest), ({ _in : ("1 [] [true:]" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \':\' after array element" : stdgo.GoString), (11i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) } : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest), ({ _in : ("1  {}    {\"x\"=}" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \'=\' after object key" : stdgo.GoString), (14i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) } : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest), ({ _in : ("falsetruenul#" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \'#\' in literal null (expecting \'l\')" : stdgo.GoString), (13i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) } : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest>);
        for (_i => _tt in _tests) {
            var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_tt._in?.__copy__())));
            var _err:stdgo.Error = (null : stdgo.Error);
            while (true) {
                var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                {
                    _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>)));
                    if (_err != null) {
                        break;
                    };
                };
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err))) {
                _t.errorf(("#%d: got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
            };
        };
    }