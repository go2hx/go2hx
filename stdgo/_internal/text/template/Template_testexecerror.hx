package stdgo._internal.text.template;
function testExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("top" : stdgo.GoString)).parse(("line 1\nline 2\nline 3\n{{template \"one\" .}}\n{{define \"one\"}}{{template \"two\" .}}{{end}}\n{{define \"two\"}}{{template \"three\" .}}{{end}}\n{{define \"three\"}}{{index \"hi\" $}}{{end}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L908"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L909"
            _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((5 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L913"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L914"
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        {};
        var _got = (_err.error()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L918"
        if (_got != (("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L919"
            _t.errorf(("expected\n%q\ngot\n%q" : stdgo.GoString), stdgo.Go.toInterface(("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
