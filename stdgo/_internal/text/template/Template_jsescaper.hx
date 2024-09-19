package stdgo._internal.text.template;
function jsescaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.text.template.Template_jsescapeString.jsescapeString(stdgo._internal.text.template.Template__evalArgs._evalArgs(_args)?.__copy__())?.__copy__();
    }
