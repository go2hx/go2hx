package stdgo._internal.text.template;
function testExecuteOnNewTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1055"
        stdgo._internal.text.template.Template_new_.new_(("Name" : stdgo.GoString)).templates();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1057"
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>).templates();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1058"
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>).parse((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1059"
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>).new_(("abc" : stdgo.GoString)).parse((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1060"
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>).execute((null : stdgo._internal.io.Io_writer.Writer), (null : stdgo.AnyInterface));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1061"
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>).executeTemplate((null : stdgo._internal.io.Io_writer.Writer), ("XXX" : stdgo.GoString), (null : stdgo.AnyInterface));
    }
