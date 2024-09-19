package _internal.encoding.json_test;
@:keep @:allow(_internal.encoding.json_test.Json_test.Animal_asInterface) class Animal_static_extension {
    @:keep
    static public function marshalJSON( _a:_internal.encoding.json_test.Json_test_Animal.Animal):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:_internal.encoding.json_test.Json_test_Animal.Animal = _a;
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _a;
            if (__value__ == ((1 : _internal.encoding.json_test.Json_test_Animal.Animal))) {
                _s = ("gopher" : stdgo.GoString);
            } else if (__value__ == ((2 : _internal.encoding.json_test.Json_test_Animal.Animal))) {
                _s = ("zebra" : stdgo.GoString);
            } else {
                _s = ("unknown" : stdgo.GoString);
            };
        };
        return stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s));
    }
    @:keep
    @:pointer
    static public function unmarshalJSON(____:_internal.encoding.json_test.Json_test_Animal.Animal,  _a:stdgo.Pointer<_internal.encoding.json_test.Json_test_Animal.Animal>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.pointer(_s))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            final __value__ = stdgo._internal.strings.Strings_toLower.toLower(_s?.__copy__());
            if (__value__ == (("gopher" : stdgo.GoString))) {
                _a.value = (1 : _internal.encoding.json_test.Json_test_Animal.Animal);
            } else if (__value__ == (("zebra" : stdgo.GoString))) {
                _a.value = (2 : _internal.encoding.json_test.Json_test_Animal.Animal);
            } else {
                _a.value = (0 : _internal.encoding.json_test.Json_test_Animal.Animal);
            };
        };
        return (null : stdgo.Error);
    }
}
