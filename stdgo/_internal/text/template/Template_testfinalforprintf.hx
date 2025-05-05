package stdgo._internal.text.template;
function testFinalForPrintf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{\"x\" | printf}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1103"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1104"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1108"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1109"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
