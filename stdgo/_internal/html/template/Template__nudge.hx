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
function _nudge(_c:stdgo._internal.html.template.Template_T_context.T_context):stdgo._internal.html.template.Template_T_context.T_context {
        {
            final __value__ = _c._state;
            if (__value__ == ((1 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _c._state = (2 : stdgo._internal.html.template.Template_T_state.T_state);
            } else if (__value__ == ((4 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = stdgo._internal.html.template.Template__attrStartStates._attrStartStates[(_c._attr : stdgo.GoInt)];
                    final __tmp__1 = (3 : stdgo._internal.html.template.Template_T_delim.T_delim);
                    final __tmp__2 = (0 : stdgo._internal.html.template.Template_T_attr.T_attr);
                    _c._state = __tmp__0;
                    _c._delim = __tmp__1;
                    _c._attr = __tmp__2;
                };
            } else if (__value__ == ((3 : stdgo._internal.html.template.Template_T_state.T_state))) {
                {
                    final __tmp__0 = (2 : stdgo._internal.html.template.Template_T_state.T_state);
                    final __tmp__1 = (0 : stdgo._internal.html.template.Template_T_attr.T_attr);
                    _c._state = __tmp__0;
                    _c._attr = __tmp__1;
                };
            };
        };
        return _c?.__copy__();
    }
