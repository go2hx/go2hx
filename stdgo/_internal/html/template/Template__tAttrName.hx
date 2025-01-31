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
function _tAttrName(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        var __tmp__ = stdgo._internal.html.template.Template__eatAttrName._eatAttrName(_s, (0 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Ref<stdgo._internal.html.template.Template_Error.Error> = __tmp__._1;
        if ((_err != null && ((_err : Dynamic).__nil__ == null || !(_err : Dynamic).__nil__))) {
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : _err } : stdgo._internal.html.template.Template_T_context.T_context), _1 : (_s.length) };
        } else if (_i != ((_s.length))) {
            _c._state = (3 : stdgo._internal.html.template.Template_T_state.T_state);
        };
        return { _0 : _c?.__copy__(), _1 : _i };
    }
