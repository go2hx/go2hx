package stdgo._internal.html.template;
function _htmlNameFilter(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L235"
        if (_t == ((3 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L236"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L238"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L244"
            return ("ZgotmplZ" : stdgo.GoString);
        };
        _s = stdgo._internal.strings.Strings_tolower.toLower(_s?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L247"
        {
            var _t = (stdgo._internal.html.template.Template__attrtype._attrType(_s?.__copy__()) : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
            if (_t != ((0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L249"
                return ("ZgotmplZ" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L251"
        for (__6 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L252"
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {} else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {} else {
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L256"
                return ("ZgotmplZ" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L259"
        return _s?.__copy__();
    }
