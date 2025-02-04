package stdgo._internal.encoding.json;
function testUnsupportedValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__4 => _v in stdgo._internal.encoding.json.Json__unsupportedvalues._unsupportedValues) {
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), __5:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), _1 : false };
                        }, __6 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            @:check2r _t.errorf(("for %v, got %T want UnsupportedValueError" : stdgo.GoString), _v, stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    @:check2r _t.errorf(("for %v, expected error" : stdgo.GoString), _v);
                };
            };
        };
    }
