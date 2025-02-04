package stdgo._internal.html.template;
function _urlEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.html.template.Template__urlprocessor._urlProcessor(false, ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
