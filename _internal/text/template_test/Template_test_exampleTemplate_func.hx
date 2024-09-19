package _internal.text.template_test;
function exampleTemplate_func():Void {
        var _funcMap = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("title" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_title.title));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_FuncMap.FuncMap);
        {};
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("titleTest" : stdgo.GoString)).funcs(_funcMap).parse(("\nInput: {{printf \"%q\" .}}\nOutput 0: {{title .}}\nOutput 1: {{title . | printf \"%q\"}}\nOutput 2: {{printf \"%q\" . | title}}\n" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatalf.fatalf(("parsing: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.toInterface(("the go programming language" : stdgo.GoString)));
        if (_err != null) {
            stdgo._internal.log.Log_fatalf.fatalf(("execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
