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
function _joinRange(_c0:stdgo._internal.html.template.Template_T_context.T_context, _rc:stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>):stdgo._internal.html.template.Template_T_context.T_context {
        for (__6 => _c in (@:checkr _rc ?? throw "null pointer dereference")._breaks) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("at range loop break: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
        };
        for (__7 => _c in (@:checkr _rc ?? throw "null pointer dereference")._continues) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("at range loop continue: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
        };
        return _c0?.__copy__();
    }
