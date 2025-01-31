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
function _truth(_arg:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var __tmp__ = stdgo._internal.text.template.Template__isTrue._isTrue(stdgo._internal.text.template.Template__indirectInterface._indirectInterface(_arg?.__copy__())?.__copy__()), _t:Bool = __tmp__._0, __8:Bool = __tmp__._1;
        return _t;
    }
