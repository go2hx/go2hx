package _internal.text.template_test;
function exampleTemplate_block():Void {
        {};
        var __0:stdgo._internal.text.template.Template_FuncMap.FuncMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("join" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), __1:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("Gamora" : stdgo.GoString), ("Groot" : stdgo.GoString), ("Nebula" : stdgo.GoString), ("Rocket" : stdgo.GoString), ("Star-Lord" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _guardians = __1, _funcs = __0;
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("master" : stdgo.GoString)).funcs(_funcs).parse(("Names:{{block \"list\" .}}{{\"\\n\"}}{{range .}}{{println \"-\" .}}{{end}}{{end}}" : stdgo.GoString)), _masterTmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = ({
            var __tmp__ = _masterTmpl.clone();
            stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        }).parse(("{{define \"list\"}} {{join . \", \"}}{{end}} " : stdgo.GoString)), _overlayTmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_masterTmpl.execute(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.toInterface(_guardians)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_overlayTmpl.execute(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.toInterface(_guardians)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
