package stdgo._internal.text.template;
function testExecuteError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("error" : stdgo.GoString));
        var __tmp__ = @:check2r _tmpl.parse(("{{.MyError true}}" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tval._tVal)));
        if (_err == null) {
            @:check2r _t.errorf(("expected error; got none" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), stdgo._internal.text.template.Template__myerror._myError.error()?.__copy__())) {
            if (stdgo._internal.text.template.Template__debug._debug.value) {
                stdgo._internal.fmt.Fmt_printf.printf(("test execute error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            @:check2r _t.errorf(("expected myError; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
