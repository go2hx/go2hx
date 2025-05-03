package stdgo._internal.strconv;
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ctoa.go#L15"
        if (((_bitSize != (64 : stdgo.GoInt)) && (_bitSize != (128 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ctoa.go#L16"
            throw stdgo.Go.toInterface(("invalid bitSize" : stdgo.GoString));
        };
        _bitSize = (_bitSize >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _im = (stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_c : stdgo.GoComplex128).imag, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ctoa.go#L22"
        if (((_im[(0 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) && (_im[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            _im = (("+" : stdgo.GoString) + _im?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ctoa.go#L26"
        return (((("(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_c : stdgo.GoComplex128).real, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString) + _im?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
