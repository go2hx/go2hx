package stdgo._internal.text.template;
function htmlescaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.text.template.Template_htmlescapeString.htmlescapeString(stdgo._internal.text.template.Template__evalArgs._evalArgs(_args)?.__copy__())?.__copy__();
    }
