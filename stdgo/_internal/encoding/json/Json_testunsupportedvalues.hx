package stdgo._internal.encoding.json;
function testUnsupportedValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L237"
        for (__4 => _v in stdgo._internal.encoding.json.Json__unsupportedvalues._unsupportedValues) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L238"
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), __5:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L239"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), _1 : false };
                        }, __6 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L240"
                            _t.errorf(("for %v, got %T want UnsupportedValueError" : stdgo.GoString), _v, stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L243"
                    _t.errorf(("for %v, expected error" : stdgo.GoString), _v);
                };
            };
        };
    }
