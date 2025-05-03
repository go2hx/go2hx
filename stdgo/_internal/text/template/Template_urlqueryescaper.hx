package stdgo._internal.text.template;
function uRLQueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L749"
        return stdgo._internal.net.url.Url_queryescape.queryEscape(stdgo._internal.text.template.Template__evalargs._evalArgs(_args)?.__copy__())?.__copy__();
    }
