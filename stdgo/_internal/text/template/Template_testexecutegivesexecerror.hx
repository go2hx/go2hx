package stdgo._internal.text.template;
function testExecuteGivesExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1365"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1366"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface((0 : stdgo._internal.text.template.Template_errorwriter.ErrorWriter)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1369"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1370"
            _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1372"
        if (_err.error() != (("always be failing" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1373"
            _t.errorf(("expected %q error; got %q" : stdgo.GoString), stdgo.Go.toInterface(("always be failing" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello, {{.X.Y}}" : stdgo.GoString));
            _tmpl = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1377"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1378"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo._internal.io.Io_discard.discard, stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1381"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1382"
            _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.text.template.Template_execerror.ExecError)) : stdgo._internal.text.template.Template_execerror.ExecError), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.text.template.Template_execerror.ExecError), _1 : false };
        }, _eerr = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1385"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1386"
            _t.fatalf(("did not expect ExecError %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_eerr)));
        };
        var _expect = (("field X in type int" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1389"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _expect?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1390"
            _t.errorf(("expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_err));
        };
    }
