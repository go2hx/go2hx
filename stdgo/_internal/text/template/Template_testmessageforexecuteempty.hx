package stdgo._internal.text.template;
function testMessageForExecuteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("empty" : stdgo.GoString));
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _err = (_tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1071"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1072"
            _t.fatal(stdgo.Go.toInterface(("expected initial error" : stdgo.GoString)));
        };
        var _got = (_err.error()?.__copy__() : stdgo.GoString);
        var _want = (("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1076"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1077"
            _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{define \"one\"}}one{{end}}{{define \"two\"}}two{{end}}" : stdgo.GoString)), _tests:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1081"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1082"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1084"
        _tmpl.addParseTree(("secondary" : stdgo.GoString), (@:checkr _tests ?? throw "null pointer dereference").tree);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1086"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1087"
            _t.fatal(stdgo.Go.toInterface(("expected second error" : stdgo.GoString)));
        };
        _got = _err.error()?.__copy__();
        _want = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1091"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1092"
            _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _err = _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("secondary" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1096"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1097"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
