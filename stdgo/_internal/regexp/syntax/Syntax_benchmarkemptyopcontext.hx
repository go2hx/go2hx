package stdgo._internal.regexp.syntax;
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r1:stdgo.GoInt32 = (-1 : stdgo.GoInt32);
for (__9 => _r2 in ("foo, bar, baz\nsome input text.\n" : stdgo.GoString)) {
                    stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, (-1 : stdgo.GoInt32));
                _i++;
            };
        };
    }
