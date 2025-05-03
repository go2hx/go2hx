package stdgo._internal.text.template;
function testUnterminatedStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello\n\n{{`unterminated\n\n\n\n}}\n some more\n\n" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1343"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1344"
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        var _str = (_err.error()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1347"
        if (!stdgo._internal.strings.Strings_contains.contains(_str?.__copy__(), ("X:3: unterminated raw quoted string" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1348"
            _t.fatalf(("unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_str));
        };
    }
