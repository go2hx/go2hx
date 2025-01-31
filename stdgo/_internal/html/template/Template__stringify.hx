package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
function _stringify(_args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoString; var _1 : stdgo._internal.html.template.Template_T_contentType.T_contentType; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                final __type__ = stdgo._internal.html.template.Template__indirect._indirect(_args[(0 : stdgo.GoInt)]);
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    return { _0 : _s?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_CSS.CSS))) {
                    var _s:stdgo._internal.html.template.Template_CSS.CSS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_CSS.CSS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_CSS.CSS) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_CSS.CSS) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (1 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_HTML.HTML))) {
                    var _s:stdgo._internal.html.template.Template_HTML.HTML = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTML.HTML) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTML.HTML) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTML.HTML) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (2 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr))) {
                    var _s:stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_HTMLAttr.HTMLAttr) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (3 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_JS.JS))) {
                    var _s:stdgo._internal.html.template.Template_JS.JS = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JS.JS) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JS.JS) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JS.JS) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (4 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_JSStr.JSStr))) {
                    var _s:stdgo._internal.html.template.Template_JSStr.JSStr = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JSStr.JSStr) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JSStr.JSStr) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_JSStr.JSStr) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (5 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_URL.URL))) {
                    var _s:stdgo._internal.html.template.Template_URL.URL = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_URL.URL) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_URL.URL) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_URL.URL) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (6 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.html.template.Template_Srcset.Srcset))) {
                    var _s:stdgo._internal.html.template.Template_Srcset.Srcset = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_Srcset.Srcset) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_Srcset.Srcset) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.html.template.Template_Srcset.Srcset) : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.GoString)?.__copy__(), _1 : (7 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
                };
            };
        };
        var _i = (0 : stdgo.GoInt);
        for (__6 => _arg in _args) {
            if (_arg == null) {
                continue;
            };
            _args[(_i : stdgo.GoInt)] = stdgo._internal.html.template.Template__indirectToStringerOrError._indirectToStringerOrError(_arg);
            _i++;
        };
        return { _0 : stdgo._internal.fmt.Fmt_sprint.sprint(...((_args.__slice__(0, _i) : stdgo.Slice<stdgo.AnyInterface>) : Array<stdgo.AnyInterface>))?.__copy__(), _1 : (0 : stdgo._internal.html.template.Template_T_contentType.T_contentType) };
    }
