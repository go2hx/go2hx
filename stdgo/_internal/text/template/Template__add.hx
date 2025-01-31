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
function _add(_args:haxe.Rest<stdgo.GoInt>):stdgo.GoInt {
        var _args = new stdgo.Slice<stdgo.GoInt>(_args.length, 0, ..._args);
        var _sum = (0 : stdgo.GoInt);
        for (__8 => _x in _args) {
            _sum = (_sum + (_x) : stdgo.GoInt);
        };
        return _sum;
    }
