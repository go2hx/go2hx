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
function _goodFunc(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        if (_typ.numOut() == ((1 : stdgo.GoInt))) {
            return true;
        } else if (((_typ.numOut() == (2 : stdgo.GoInt)) && ((_typ.out((1 : stdgo.GoInt)).string() : String) == (stdgo._internal.text.template.Template__errorType._errorType.string() : String)) : Bool)) {
            return true;
        };
        return false;
    }
