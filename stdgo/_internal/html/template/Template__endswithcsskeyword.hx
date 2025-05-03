package stdgo._internal.html.template;
function _endsWithCSSKeyword(_b:stdgo.Slice<stdgo.GoUInt8>, _kw:stdgo.GoString):Bool {
        var _i = ((_b.length) - (_kw.length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L19"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L21"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L23"
        if (_i != ((0 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, __6:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L25"
            if (stdgo._internal.html.template.Template__iscssnmchar._isCSSNmchar(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L27"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L35"
        return (stdgo._internal.bytes.Bytes_tolower.toLower((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString) == (_kw);
    }
