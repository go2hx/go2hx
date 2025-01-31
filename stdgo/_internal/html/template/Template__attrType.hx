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
function _attrType(_name:stdgo.GoString):stdgo._internal.html.template.Template_T_contentType.T_contentType {
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("data-" : stdgo.GoString))) {
            _name = (_name.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), (":" : stdgo.GoString)), _prefix:stdgo.GoString = __tmp__._0, _short:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                if (_prefix == (("xmlns" : stdgo.GoString))) {
                    return (6 : stdgo._internal.html.template.Template_T_contentType.T_contentType);
                };
                _name = _short?.__copy__();
            };
        };
        {
            var __tmp__ = (stdgo._internal.html.template.Template__attrTypeMap._attrTypeMap != null && stdgo._internal.html.template.Template__attrTypeMap._attrTypeMap.exists(_name?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__attrTypeMap._attrTypeMap[_name?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_T_contentType.T_contentType), _1 : false }), _t:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _t;
            };
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("on" : stdgo.GoString))) {
            return (4 : stdgo._internal.html.template.Template_T_contentType.T_contentType);
        };
        if (((stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("src" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("uri" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("url" : stdgo.GoString)) : Bool)) {
            return (6 : stdgo._internal.html.template.Template_T_contentType.T_contentType);
        };
        return (0 : stdgo._internal.html.template.Template_T_contentType.T_contentType);
    }
