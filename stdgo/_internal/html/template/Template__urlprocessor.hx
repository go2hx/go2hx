package stdgo._internal.html.template;
function _urlProcessor(_norm:Bool, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L75"
        if (_t == ((6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            _norm = true;
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L79"
        if (stdgo._internal.html.template.Template__processurlonto._processURLOnto(_s?.__copy__(), _norm, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L80"
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L82"
        return _s?.__copy__();
    }
