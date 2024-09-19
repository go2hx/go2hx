package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function lookupRune(_r:stdgo.GoInt32):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties), _size = (0 : stdgo.GoInt);
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        var _n = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
        return _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_lookup.lookup((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
    }
