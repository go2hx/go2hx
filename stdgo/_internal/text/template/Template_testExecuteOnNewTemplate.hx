package stdgo._internal.text.template;
function testExecuteOnNewTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.text.template.Template_new_.new_(("Name" : stdgo.GoString)).templates();
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).templates();
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).parse(stdgo.Go.str()?.__copy__());
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).new_(("abc" : stdgo.GoString)).parse(stdgo.Go.str()?.__copy__());
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).execute((null : stdgo._internal.io.Io_Writer.Writer), (null : stdgo.AnyInterface));
        (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>).executeTemplate((null : stdgo._internal.io.Io_Writer.Writer), ("XXX" : stdgo.GoString), (null : stdgo.AnyInterface));
    }