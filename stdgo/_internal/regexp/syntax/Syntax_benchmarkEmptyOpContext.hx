package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r1:stdgo.GoInt32 = (-1 : stdgo.GoInt32);
for (__9 => _r2 in ("foo, bar, baz\nsome input text.\n" : stdgo.GoString)) {
                    stdgo._internal.regexp.syntax.Syntax_emptyOpContext.emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
stdgo._internal.regexp.syntax.Syntax_emptyOpContext.emptyOpContext(_r1, (-1 : stdgo.GoInt32));
                _i++;
            };
        };
    }
