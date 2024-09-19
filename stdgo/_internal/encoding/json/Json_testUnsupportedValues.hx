package stdgo._internal.encoding.json;
function testUnsupportedValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _v in stdgo._internal.encoding.json.Json__unsupportedValues._unsupportedValues) {
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), __9:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>), _1 : false };
                        }, __10 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.errorf(("for %v, got %T want UnsupportedValueError" : stdgo.GoString), _v, stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    _t.errorf(("for %v, expected error" : stdgo.GoString), _v);
                };
            };
        };
    }
