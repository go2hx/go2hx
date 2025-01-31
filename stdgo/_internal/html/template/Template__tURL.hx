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
function _tURL(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        if (stdgo._internal.bytes.Bytes_containsAny.containsAny(_s, ("#?" : stdgo.GoString))) {
            _c._urlPart = (2 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart);
        } else if (((_s.length != stdgo._internal.html.template.Template__eatWhiteSpace._eatWhiteSpace(_s, (0 : stdgo.GoInt))) && (_c._urlPart == (0 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)) : Bool)) {
            _c._urlPart = (1 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart);
        };
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
