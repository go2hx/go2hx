package stdgo._internal.text.template;
function urlqueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.net.url.Url_queryEscape.queryEscape(stdgo._internal.text.template.Template__evalArgs._evalArgs(_args)?.__copy__())?.__copy__();
    }
