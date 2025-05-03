package stdgo._internal.html.template;
function _urlFilter(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L36"
        if (_t == ((6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L37"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L39"
        if (!stdgo._internal.html.template.Template__issafeurl._isSafeURL(_s?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L40"
            return ("#ZgotmplZ" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L42"
        return _s?.__copy__();
    }
