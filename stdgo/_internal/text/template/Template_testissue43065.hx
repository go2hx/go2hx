package stdgo._internal.text.template;
function testIssue43065(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _tmp = ({
            @:tupleArg var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{range .}}{{end}}" : stdgo.GoString));
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{range .}}{{end}}" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _ch = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _err = (_tmp.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface(_ch)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1756"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1757"
            _t.error(stdgo.Go.toInterface(("expected err got nil" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("range over send-only channel" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1759"
            _t.errorf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
