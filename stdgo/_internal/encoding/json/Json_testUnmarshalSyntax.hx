package stdgo._internal.encoding.json;
function testUnmarshalSyntax(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        for (__8 => _src in stdgo._internal.encoding.json.Json__unmarshalSyntaxTests._unmarshalSyntaxTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_src : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>), _1 : false };
                }, __9 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("expected syntax error for Unmarshal(%q): got %T" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
