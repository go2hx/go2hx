package stdgo._internal.flag;
function _numError(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
        }, _ne = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L113"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L114"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L116"
        if (stdgo.Go.toInterface((@:checkr _ne ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errsyntax.errSyntax))) {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L117"
            return stdgo._internal.flag.Flag__errparse._errParse;
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L119"
        if (stdgo.Go.toInterface((@:checkr _ne ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errrange.errRange))) {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L120"
            return stdgo._internal.flag.Flag__errrange._errRange;
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L122"
        return _err;
    }
