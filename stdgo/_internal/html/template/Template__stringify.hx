package stdgo._internal.html.template;
function _stringify(_args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoString; var _1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                final __type__ = stdgo._internal.html.template.Template__indirect._indirect(_args[(0 : stdgo.GoInt)]);
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    return { _0 : _s?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_css.CSS))) {
                    var _s:stdgo._internal.html.template.Template_css.CSS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_css.CSS) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_html.HTML))) {
                    var _s:stdgo._internal.html.template.Template_html.HTML = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_html.HTML) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (2 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_htmlattr.HTMLAttr))) {
                    var _s:stdgo._internal.html.template.Template_htmlattr.HTMLAttr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_htmlattr.HTMLAttr) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (3 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_js.JS))) {
                    var _s:stdgo._internal.html.template.Template_js.JS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_js.JS) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (4 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_jsstr.JSStr))) {
                    var _s:stdgo._internal.html.template.Template_jsstr.JSStr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_jsstr.JSStr) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (5 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_url.URL))) {
                    var _s:stdgo._internal.html.template.Template_url.URL = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_url.URL) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_srcset.Srcset))) {
                    var _s:stdgo._internal.html.template.Template_srcset.Srcset = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_srcset.Srcset) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (7 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
                };
            };
        };
        var _i = (0 : stdgo.GoInt);
        for (__6 => _arg in _args) {
            if (_arg == null) {
                continue;
            };
            _args[(_i : stdgo.GoInt)] = stdgo._internal.html.template.Template__indirecttostringerorerror._indirectToStringerOrError(_arg);
            _i++;
        };
        return { _0 : stdgo._internal.fmt.Fmt_sprint.sprint(...((_args.__slice__(0, _i) : stdgo.Slice<stdgo.AnyInterface>) : Array<stdgo.AnyInterface>))?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType) };
    }
