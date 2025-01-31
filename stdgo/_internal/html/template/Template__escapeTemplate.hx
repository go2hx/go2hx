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
function _escapeTemplate(_tmpl:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:stdgo.GoString):stdgo.Error {
        var __tmp__ = @:check2 (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._esc._escapeTree((new stdgo._internal.html.template.Template_T_context.T_context() : stdgo._internal.html.template.Template_T_context.T_context), _node, _name?.__copy__(), (0 : stdgo.GoInt)), _c:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, __14:stdgo.GoString = __tmp__._1;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_c._err != null && ((_c._err : Dynamic).__nil__ == null || !(_c._err : Dynamic).__nil__))) {
            {
                final __tmp__0 = stdgo.Go.asInterface(_c._err);
                final __tmp__1 = _name?.__copy__();
                _err = __tmp__0;
                (@:checkr _c._err ?? throw "null pointer dereference").name = __tmp__1;
            };
        } else if (_c._state != ((0 : stdgo._internal.html.template.Template_T_state.T_state))) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.html.template.Template_Error.Error((4 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_Node.Node), _name?.__copy__(), (0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("ends in a non-text context: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__()) : stdgo._internal.html.template.Template_Error.Error)) : stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>));
        };
        if (_err != null) {
            {
                var _t = ((@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
                if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    (@:checkr _t ?? throw "null pointer dereference")._escapeErr = _err;
                    (@:checkr (@:checkr _t ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree = null;
                    (@:checkr _t ?? throw "null pointer dereference").tree = null;
                };
            };
            return _err;
        };
        @:check2 (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._esc._commit();
        {
            var _t = ((@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                (@:checkr _t ?? throw "null pointer dereference")._escapeErr = stdgo._internal.html.template.Template__escapeOK._escapeOK;
                (@:checkr _t ?? throw "null pointer dereference").tree = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree;
            };
        };
        return (null : stdgo.Error);
    }
