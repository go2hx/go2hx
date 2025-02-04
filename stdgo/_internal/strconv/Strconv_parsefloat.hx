package stdgo._internal.strconv;
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv__parsefloatprefix._parseFloatPrefix(_s?.__copy__(), _bitSize), _f:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_n != (_s.length)) && (((_err == null) || (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw "null pointer dereference").err) != stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errsyntax.errSyntax)) : Bool)) : Bool)) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
        };
        return { _0 : _f, _1 : _err };
    }
