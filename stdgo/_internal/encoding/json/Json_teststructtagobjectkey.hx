package stdgo._internal.encoding.json;
function testStructTagObjectKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L99"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__structtagobjectkeytests._structTagObjectKeyTests) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._raw), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L101"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L102"
                _t.fatalf(("Marshal(%#q) failed: %v" : stdgo.GoString), _tt._raw, stdgo.Go.toInterface(_err));
            };
            var _f:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo.AnyInterface>)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L106"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L107"
                _t.fatalf(("Unmarshal(%#q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L109"
            for (_i => _v in (stdgo.Go.typeAssert((_f : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L110"
                {
                    final __value__ = _i;
                    if (__value__ == (_tt._key)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L112"
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            }, _s = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_s != _tt._value) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L113"
                                _t.fatalf(("Unexpected value: %#q, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._value));
                            };
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tagkey_test.go#L116"
                        _t.fatalf(("Unexpected key: %#q, from %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b));
                    };
                };
            };
        };
    }
