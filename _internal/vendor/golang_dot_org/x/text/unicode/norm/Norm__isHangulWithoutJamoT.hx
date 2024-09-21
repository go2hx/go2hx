package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _isHangulWithoutJamoT(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_b), _c:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        _c = (_c - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        return ((_c < (11172 : stdgo.GoInt32) : Bool) && ((_c % (28 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool);
    }
