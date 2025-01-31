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
function _ne(_arg1:stdgo._internal.reflect.Reflect_Value.Value, _arg2:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__eq._eq(_arg1?.__copy__(), _arg2?.__copy__()), _equal:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : !_equal, _1 : _err };
    }
