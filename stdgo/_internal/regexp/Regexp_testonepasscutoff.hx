package stdgo._internal.regexp;
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(("^x{1,1000}y{1,1000}$" : stdgo.GoString), (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L564"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L565"
            _t.fatalf(("parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re.simplify()), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L568"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L569"
            _t.fatalf(("compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L571"
        if (({
            final value = stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p);
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L572"
            _t.fatalf(("makeOnePass succeeded; wanted nil" : stdgo.GoString));
        };
    }
