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
function _join(_a:stdgo._internal.html.template.Template_T_context.T_context, _b:stdgo._internal.html.template.Template_T_context.T_context, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_T_context.T_context {
        if (_a._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
            return _a?.__copy__();
        };
        if (_b._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
            return _b?.__copy__();
        };
        if (_a._state == ((28 : stdgo._internal.html.template.Template_T_state.T_state))) {
            return _b?.__copy__();
        };
        if (_b._state == ((28 : stdgo._internal.html.template.Template_T_state.T_state))) {
            return _a?.__copy__();
        };
        if (_a._eq(_b?.__copy__())) {
            return _a?.__copy__();
        };
        var _c = (_a?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context);
        _c._urlPart = _b._urlPart;
        if (_c._eq(_b?.__copy__())) {
            _c._urlPart = (3 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart);
            return _c?.__copy__();
        };
        _c = _a?.__copy__();
        _c._jsCtx = _b._jsCtx;
        if (_c._eq(_b?.__copy__())) {
            _c._jsCtx = (2 : stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx);
            return _c?.__copy__();
        };
        {
            var __0 = (stdgo._internal.html.template.Template__nudge._nudge(_a?.__copy__())?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context), __1 = (stdgo._internal.html.template.Template__nudge._nudge(_b?.__copy__())?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context);
var _d = __1, _c = __0;
            if (!((_c._eq(_a?.__copy__()) && _d._eq(_b?.__copy__()) : Bool))) {
                {
                    var _e = (stdgo._internal.html.template.Template__join._join(_c?.__copy__(), _d?.__copy__(), _node, _nodeName?.__copy__())?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context);
                    if (_e._state != ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        return _e?.__copy__();
                    };
                };
            };
        };
        return ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((3 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), _node, (0 : stdgo.GoInt), ("{{%s}} branches end in different contexts: %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_nodeName), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b))) } : stdgo._internal.html.template.Template_T_context.T_context);
    }
