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
function _tLineCmt(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        var _lineTerminators:stdgo.GoString = ("" : stdgo.GoString);
        var _endState:stdgo._internal.html.template.Template_T_state.T_state = ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_T_state.T_state);
        {
            final __value__ = _c._state;
            if (__value__ == ((16 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((17 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((18 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = ("\n\r\u2028\u2029" : stdgo.GoString);
                    final __tmp__1 = (10 : stdgo._internal.html.template.Template_T_state.T_state);
                    _lineTerminators = __tmp__0;
                    _endState = __tmp__1;
                };
            } else if (__value__ == ((26 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = ("\n\x0C\r" : stdgo.GoString);
                    final __tmp__1 = (19 : stdgo._internal.html.template.Template_T_state.T_state);
                    _lineTerminators = __tmp__0;
                    _endState = __tmp__1;
                };
            } else {
                throw stdgo.Go.toInterface((_c._state.string() : stdgo.GoString));
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexAny.indexAny(_s, _lineTerminators?.__copy__()) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        _c._state = _endState;
        return { _0 : _c?.__copy__(), _1 : _i };
    }
