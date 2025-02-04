package stdgo._internal.html.template;
function _endsWithCSSKeyword(_b:stdgo.Slice<stdgo.GoUInt8>, _kw:stdgo.GoString):Bool {
        var _i = ((_b.length) - (_kw.length) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return false;
        };
        if (_i != ((0 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, __6:stdgo.GoInt = __tmp__._1;
            if (stdgo._internal.html.template.Template__iscssnmchar._isCSSNmchar(_r)) {
                return false;
            };
        };
        return (stdgo._internal.bytes.Bytes_tolower.toLower((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString) == (_kw);
    }
