package stdgo._internal.regexp.syntax;
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L135"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L136"
                for (__9 => _r in ("Don\'t communicate by sharing memory, share memory by communicating." : stdgo.GoString)) {
                    stdgo._internal.regexp.syntax.Syntax__sink._sink = stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r));
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L140"
        if (stdgo._internal.regexp.syntax.Syntax__sink._sink == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L141"
            _b.fatal(stdgo.Go.toInterface(("Benchmark did not run" : stdgo.GoString)));
        };
        stdgo._internal.regexp.syntax.Syntax__sink._sink = (null : stdgo.AnyInterface);
    }
