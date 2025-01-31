package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
function _createValueFuncs(_funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect_Value.Value>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect_Value.Value);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>);
        stdgo._internal.text.template.Template__addValueFuncs._addValueFuncs(_m, _funcMap);
        return _m;
    }
