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
function _jsIsSpecial(_r:stdgo.GoInt32):Bool {
        {
            final __value__ = _r;
            if (__value__ == ((92 : stdgo.GoInt32)) || __value__ == ((39 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((38 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32))) {
                return true;
            };
        };
        return ((_r < (32 : stdgo.GoInt32) : Bool) || ((128 : stdgo.GoInt32) <= _r : Bool) : Bool);
    }
