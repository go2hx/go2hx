package stdgo._internal.text.template;
function _builtins():stdgo._internal.text.template.Template_funcmap.FuncMap {
        return (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("and" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__and._and));
x.set(("call" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__call._call));
x.set(("html" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template_htmlescaper.hTMLEscaper));
x.set(("index" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__index._index));
x.set(("slice" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__slice._slice));
x.set(("js" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template_jsescaper.jSEscaper));
x.set(("len" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__length._length));
x.set(("not" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__not._not));
x.set(("or" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__or._or));
x.set(("print" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprint.sprint));
x.set(("printf" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf));
x.set(("println" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintln.sprintln));
x.set(("urlquery" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template_urlqueryescaper.uRLQueryEscaper));
x.set(("eq" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__eq._eq));
x.set(("ge" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__ge._ge));
x.set(("gt" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__gt._gt));
x.set(("le" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__le._le));
x.set(("lt" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__lt._lt));
x.set(("ne" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__ne._ne));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_funcmap.FuncMap);
    }
