package stdgo._internal.strconv;
function unquote(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv__unquote._unquote(_s?.__copy__(), true), _out:stdgo.GoString = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_rem.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
        };
        return { _0 : _out?.__copy__(), _1 : _err };
    }
