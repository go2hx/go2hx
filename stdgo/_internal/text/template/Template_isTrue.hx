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
function isTrue(_val:stdgo.AnyInterface):{ var _0 : Bool; var _1 : Bool; } {
        var _truth = false, _ok = false;
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = stdgo._internal.text.template.Template__isTrue._isTrue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_val)?.__copy__());
            _truth = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
