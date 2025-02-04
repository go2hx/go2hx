package stdgo._internal.encoding.json;
function testInterfaceSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__interfacesettests._interfaceSetTests) {
            var _b = ({ x : _tt._pre } : stdgo._internal.encoding.json.Json_t__struct_9.T__struct_9);
            var _blob = (((("{\"X\":" : stdgo.GoString) + _tt._json?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_blob : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_9.T__struct_9>)))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Unmarshal %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_blob), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_b.x, _tt._post)) {
                @:check2r _t.errorf(("Unmarshal %#q into %#v: X=%#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_blob), _tt._pre, _b.x, _tt._post);
            };
        };
    }
