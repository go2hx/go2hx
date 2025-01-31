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
function _tBeforeValue(_c:stdgo._internal.html.template.Template_T_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.html.template.Template__eatWhiteSpace._eatWhiteSpace(_s, (0 : stdgo.GoInt)) : stdgo.GoInt);
        if (_i == ((_s.length))) {
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        var _delim = (3 : stdgo._internal.html.template.Template_T_delim.T_delim);
        {
            final __value__ = _s[(_i : stdgo.GoInt)];
            if (__value__ == ((39 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (2 : stdgo._internal.html.template.Template_T_delim.T_delim);
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _delim = __tmp__0;
                    _i = __tmp__1;
                };
            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (1 : stdgo._internal.html.template.Template_T_delim.T_delim);
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _delim = __tmp__0;
                    _i = __tmp__1;
                };
            };
        };
        {
            final __tmp__0 = stdgo._internal.html.template.Template__attrStartStates._attrStartStates[(_c._attr : stdgo.GoInt)];
            final __tmp__1 = _delim;
            _c._state = __tmp__0;
            _c._delim = __tmp__1;
        };
        return { _0 : _c?.__copy__(), _1 : _i };
    }
