package stdgo._internal.text.template;
function hTMLEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.text.template.Template_htmlescapestring.hTMLEscapeString(stdgo._internal.text.template.Template__evalargs._evalArgs(_args)?.__copy__())?.__copy__();
    }
