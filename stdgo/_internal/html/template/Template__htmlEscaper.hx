package stdgo._internal.html.template;
function _htmlEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._1;
        if (_t == ((2 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
            return _s?.__copy__();
        };
        return stdgo._internal.html.template.Template__htmlReplacer._htmlReplacer(_s?.__copy__(), stdgo._internal.html.template.Template__htmlReplacementTable._htmlReplacementTable, true)?.__copy__();
    }