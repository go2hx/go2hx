package _internal.encoding.json_test;
@:keep @:allow(_internal.encoding.json_test.Json_test.Size_asInterface) class Size_static_extension {
    @:keep
    static public function marshalText( _s:_internal.encoding.json_test.Json_test_Size.Size):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:_internal.encoding.json_test.Json_test_Size.Size = _s;
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _s;
            if (__value__ == ((1 : _internal.encoding.json_test.Json_test_Size.Size))) {
                _name = ("small" : stdgo.GoString);
            } else if (__value__ == ((2 : _internal.encoding.json_test.Json_test_Size.Size))) {
                _name = ("large" : stdgo.GoString);
            } else {
                _name = ("unrecognized" : stdgo.GoString);
            };
        };
        return { _0 : (_name : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function unmarshalText(____:_internal.encoding.json_test.Json_test_Size.Size,  _s:stdgo.Pointer<_internal.encoding.json_test.Json_test_Size.Size>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        {
            final __value__ = stdgo._internal.strings.Strings_toLower.toLower((_text : stdgo.GoString)?.__copy__());
            if (__value__ == (("small" : stdgo.GoString))) {
                _s.value = (1 : _internal.encoding.json_test.Json_test_Size.Size);
            } else if (__value__ == (("large" : stdgo.GoString))) {
                _s.value = (2 : _internal.encoding.json_test.Json_test_Size.Size);
            } else {
                _s.value = (0 : _internal.encoding.json_test.Json_test_Size.Size);
            };
        };
        return (null : stdgo.Error);
    }
}
