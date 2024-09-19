package stdgo._internal.encoding.json;
function testInvalidUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (("123" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        for (__8 => _tt in stdgo._internal.encoding.json.Json__invalidUnmarshalTextTests._invalidUnmarshalTextTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_buf, _tt._v) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                continue;
            };
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }