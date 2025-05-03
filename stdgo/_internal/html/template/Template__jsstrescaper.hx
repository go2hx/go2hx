package stdgo._internal.html.template;
function _jsStrEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L235"
        if (_t == ((5 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L236"
            return stdgo._internal.html.template.Template__replace._replace(_s?.__copy__(), stdgo._internal.html.template.Template__jsstrnormreplacementtable._jsStrNormReplacementTable)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L238"
        return stdgo._internal.html.template.Template__replace._replace(_s?.__copy__(), stdgo._internal.html.template.Template__jsstrreplacementtable._jsStrReplacementTable)?.__copy__();
    }
