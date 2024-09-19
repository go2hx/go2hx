package stdgo._internal.text.template;
function testUnterminatedStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello\n\n{{`unterminated\n\n\n\n}}\n some more\n\n" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        var _str = (_err.error()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_str?.__copy__(), ("X:3: unterminated raw quoted string" : stdgo.GoString))) {
            _t.fatalf(("unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_str));
        };
    }