package stdgo._internal.html.template;
function _htmlNospaceEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._1;
        if (_s == (stdgo.Go.str())) {
            return ("ZgotmplZ" : stdgo.GoString);
        };
        if (_t == ((2 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
            return stdgo._internal.html.template.Template__htmlReplacer._htmlReplacer(stdgo._internal.html.template.Template__stripTags._stripTags(_s?.__copy__())?.__copy__(), stdgo._internal.html.template.Template__htmlNospaceNormReplacementTable._htmlNospaceNormReplacementTable, false)?.__copy__();
        };
        return stdgo._internal.html.template.Template__htmlReplacer._htmlReplacer(_s?.__copy__(), stdgo._internal.html.template.Template__htmlNospaceReplacementTable._htmlNospaceReplacementTable, false)?.__copy__();
    }