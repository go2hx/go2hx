package stdgo._internal.encoding.json;
function testValid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__validtests._validTests) {
            {
                var _ok = (stdgo._internal.encoding.json.Json_valid.valid((_tt._data : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
                if (_ok != (_tt._ok)) {
                    @:check2r _t.errorf(("Valid(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._data), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
