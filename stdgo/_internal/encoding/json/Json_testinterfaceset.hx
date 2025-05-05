package stdgo._internal.encoding.json;
function testInterfaceSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1740"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__interfacesettests._interfaceSetTests) {
            var _b = ({ x : _tt._pre } : stdgo._internal.encoding.json.Json_t__struct_9.T__struct_9);
            var _blob = (((("{\"X\":" : stdgo.GoString) + _tt._json?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1743"
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_blob : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_9.T__struct_9>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1744"
                    _t.errorf(("Unmarshal %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_blob), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1745"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1747"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_b.x, _tt._post)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1748"
                _t.errorf(("Unmarshal %#q into %#v: X=%#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_blob), _tt._pre, _b.x, _tt._post);
            };
        };
    }
