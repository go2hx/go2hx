package stdgo._internal.html.template;
function hTMLEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L985"
        return stdgo._internal.text.template.Template_htmlescaper.hTMLEscaper(...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
