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
function _builtinFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> {
        stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce.do_(function():Void {
            stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce._v = stdgo._internal.text.template.Template__createValueFuncs._createValueFuncs(stdgo._internal.text.template.Template__builtins._builtins());
        });
        return stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce._v;
    }
