package stdgo._internal.regexp.syntax;
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__9 => _r in ("Don\'t communicate by sharing memory, share memory by communicating." : stdgo.GoString)) {
                    stdgo._internal.regexp.syntax.Syntax__sink._sink = stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r));
                };
            });
        };
        if (stdgo._internal.regexp.syntax.Syntax__sink._sink == null) {
            _b.fatal(stdgo.Go.toInterface(("Benchmark did not run" : stdgo.GoString)));
        };
        stdgo._internal.regexp.syntax.Syntax__sink._sink = (null : stdgo.AnyInterface);
    }