package stdgo._internal.html.template;
function _urlFilter(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        if (_t == ((6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            return _s?.__copy__();
        };
        if (!stdgo._internal.html.template.Template__issafeurl._isSafeURL(_s?.__copy__())) {
            return ("#ZgotmplZ" : stdgo.GoString);
        };
        return _s?.__copy__();
    }
