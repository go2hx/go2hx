package stdgo._internal.html.template;
function _jsRegexpEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, __6:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        _s = stdgo._internal.html.template.Template__replace._replace(_s?.__copy__(), stdgo._internal.html.template.Template__jsregexpreplacementtable._jsRegexpReplacementTable)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L248"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L250"
            return ("(?:)" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L252"
        return _s?.__copy__();
    }
