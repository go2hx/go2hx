package stdgo._internal.regexp.syntax;
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L121"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r1:stdgo.GoInt32 = (-1 : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L123"
                for (__9 => _r2 in ("foo, bar, baz\nsome input text.\n" : stdgo.GoString)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L124"
                    stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
//"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog_test.go#L127"
                stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, (-1 : stdgo.GoInt32));
                _i++;
            };
        };
    }
