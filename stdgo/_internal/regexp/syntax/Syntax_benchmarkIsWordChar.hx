package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                for (__9 => _r in ("Don\'t communicate by sharing memory, share memory by communicating." : stdgo.GoString)) {
                    stdgo._internal.regexp.syntax.Syntax__sink._sink = stdgo.Go.toInterface(stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r));
                };
                _i++;
            };
        };
        if (stdgo._internal.regexp.syntax.Syntax__sink._sink == null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(("Benchmark did not run" : stdgo.GoString)));
        };
        stdgo._internal.regexp.syntax.Syntax__sink._sink = (null : stdgo.AnyInterface);
    }
