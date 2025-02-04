package stdgo._internal.html.template;
function _urlNormalizer(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return stdgo._internal.html.template.Template__urlprocessor._urlProcessor(true, ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
