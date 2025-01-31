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
function _tHTMLCmt(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, stdgo._internal.html.template.Template__commentEnd._commentEnd) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                return { _0 : (new stdgo._internal.html.template.Template_T_context.T_context() : stdgo._internal.html.template.Template_T_context.T_context), _1 : (_i + (3 : stdgo.GoInt) : stdgo.GoInt) };
            };
        };
        return { _0 : _c?.__copy__(), _1 : (_s.length) };
    }
