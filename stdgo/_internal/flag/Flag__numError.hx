package stdgo._internal.flag;
function _numError(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : false };
        }, _ne = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return _err;
        };
        if (stdgo.Go.toInterface((@:checkr _ne ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errSyntax.errSyntax))) {
            return stdgo._internal.flag.Flag__errParse._errParse;
        };
        if (stdgo.Go.toInterface((@:checkr _ne ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errRange.errRange))) {
            return stdgo._internal.flag.Flag__errRange._errRange;
        };
        return _err;
    }
