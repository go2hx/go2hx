package stdgo._internal.encoding.json;
function testUnmarshalTypeError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _item in stdgo._internal.encoding.json.Json__decodeTypeErrorTests._decodeTypeErrorTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_item._src : stdgo.Slice<stdgo.GoUInt8>), _item._dest) : stdgo.Error);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>), _1 : false };
                }, __5 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("expected type error for Unmarshal(%q, type %T): got %T" : stdgo.GoString), stdgo.Go.toInterface(_item._src), _item._dest, stdgo.Go.toInterface(_err));
                };
            };
        };
    }
