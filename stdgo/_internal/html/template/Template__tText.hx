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
function _tText(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        var _k = (0 : stdgo.GoInt);
        while (true) {
            var _i = (_k + stdgo._internal.bytes.Bytes_indexByte.indexByte((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>), (60 : stdgo.GoUInt8)) : stdgo.GoInt);
            if (((_i < _k : Bool) || ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (_s.length)) : Bool)) {
                return { _0 : _c?.__copy__(), _1 : (_s.length) };
            } else if ((((_i + (4 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.html.template.Template__commentStart._commentStart, (_s.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                return { _0 : ({ _state : (5 : stdgo._internal.html.template.Template_T_state.T_state) } : stdgo._internal.html.template.Template_T_context.T_context), _1 : (_i + (4 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _i++;
            var _end = (false : Bool);
            if (_s[(_i : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                if ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_s.length))) {
                    return { _0 : _c?.__copy__(), _1 : (_s.length) };
                };
                {
                    final __tmp__0 = true;
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _end = __tmp__0;
                    _i = __tmp__1;
                };
            };
            var __tmp__ = stdgo._internal.html.template.Template__eatTagName._eatTagName(_s, _i), _j:stdgo.GoInt = __tmp__._0, _e:stdgo._internal.html.template.Template_T_element.T_element = __tmp__._1;
            if (_j != (_i)) {
                if (_end) {
                    _e = (0 : stdgo._internal.html.template.Template_T_element.T_element);
                };
                return { _0 : ({ _state : (1 : stdgo._internal.html.template.Template_T_state.T_state), _element : _e } : stdgo._internal.html.template.Template_T_context.T_context), _1 : _j };
            };
            _k = _j;
        };
    }
