package stdgo._internal.internal.testenv;
function skipFlakyNet(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        _t.helper();
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(stdgo._internal.os.Os_getenv.getenv(("GO_BUILDER_FLAKY_NET" : stdgo.GoString))?.__copy__()), _v:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_v) {
                _t.skip(stdgo.Go.toInterface(("skipping test on builder known to have frequent network failures" : stdgo.GoString)));
            };
        };
    }
