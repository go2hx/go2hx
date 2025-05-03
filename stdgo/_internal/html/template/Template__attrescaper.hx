package stdgo._internal.html.template;
function _attrEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L29"
        if (_t == ((2 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L30"
            return stdgo._internal.html.template.Template__htmlreplacer._htmlReplacer(stdgo._internal.html.template.Template__striptags._stripTags(_s?.__copy__())?.__copy__(), stdgo._internal.html.template.Template__htmlnormreplacementtable._htmlNormReplacementTable, true)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L32"
        return stdgo._internal.html.template.Template__htmlreplacer._htmlReplacer(_s?.__copy__(), stdgo._internal.html.template.Template__htmlreplacementtable._htmlReplacementTable, true)?.__copy__();
    }
