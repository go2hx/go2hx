package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _decomposeHangul(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt {
        {};
        _r = (_r - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _x = (_r % (28 : stdgo.GoInt32) : stdgo.GoInt32);
        _r = (_r / ((28 : stdgo.GoInt32)) : stdgo.GoInt32);
        stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, ((4352 : stdgo.GoInt32) + (_r / (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((4449 : stdgo.GoInt32) + (_r % (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        if (_x != ((0 : stdgo.GoInt32))) {
            stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((4519 : stdgo.GoInt32) + _x : stdgo.GoInt32));
            return (9 : stdgo.GoInt);
        };
        return (6 : stdgo.GoInt);
    }
