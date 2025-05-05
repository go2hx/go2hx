package stdgo._internal.html.template;
function _stringify(_args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoString; var _1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L152"
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L153"
            {
                final __type__ = stdgo._internal.html.template.Template__indirect._indirect(_args[(0 : stdgo.GoInt)]);
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L155"
                    return { _0 : _s?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_css.CSS))) {
                    var _s:stdgo._internal.html.template.Template_css.CSS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L157"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_html.HTML))) {
                    var _s:stdgo._internal.html.template.Template_html.HTML = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L159"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (2 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_htmlattr.HTMLAttr))) {
                    var _s:stdgo._internal.html.template.Template_htmlattr.HTMLAttr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L161"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (3 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_js.JS))) {
                    var _s:stdgo._internal.html.template.Template_js.JS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L163"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (4 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_jsstr.JSStr))) {
                    var _s:stdgo._internal.html.template.Template_jsstr.JSStr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L165"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (5 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_url.URL))) {
                    var _s:stdgo._internal.html.template.Template_url.URL = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L167"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_srcset.Srcset))) {
                    var _s:stdgo._internal.html.template.Template_srcset.Srcset = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L169"
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (7 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                };
            };
        };
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L173"
        for (__6 => _arg in _args) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L177"
            if (_arg == null) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L178"
                continue;
            };
            _args[(_i : stdgo.GoInt)] = stdgo._internal.html.template.Template__indirecttostringerorerror._indirectToStringerOrError(_arg);
            //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L182"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/content.go#L184"
        return { _0 : stdgo._internal.fmt.Fmt_sprint.sprint(...((_args.__slice__(0, _i) : stdgo.Slice<stdgo.AnyInterface>) : Array<stdgo.AnyInterface>))?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
    }
