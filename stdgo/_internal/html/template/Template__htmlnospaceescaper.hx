package stdgo._internal.html.template;
function _htmlNospaceEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return ("ZgotmplZ" : stdgo.GoString);
        };
        if (_t == ((2 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            return stdgo._internal.html.template.Template__htmlreplacer._htmlReplacer(stdgo._internal.html.template.Template__striptags._stripTags(_s?.__copy__())?.__copy__(), stdgo._internal.html.template.Template__htmlnospacenormreplacementtable._htmlNospaceNormReplacementTable, false)?.__copy__();
        };
        return stdgo._internal.html.template.Template__htmlreplacer._htmlReplacer(_s?.__copy__(), stdgo._internal.html.template.Template__htmlnospacereplacementtable._htmlNospaceReplacementTable, false)?.__copy__();
    }
