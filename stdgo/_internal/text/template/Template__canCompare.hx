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
function _canCompare(_v1:stdgo._internal.reflect.Reflect_Value.Value, _v2:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var _k1 = (_v1.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        var _k2 = (_v2.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        if (_k1 == (_k2)) {
            return true;
        };
        return ((_k1 == (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_k2 == (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
    }
