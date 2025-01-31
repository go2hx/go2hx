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
function _goodName(_name:stdgo.GoString):Bool {
        if (_name == (stdgo.Go.str())) {
            return false;
        };
        for (_i => _r in _name) {
            if (_r == ((95 : stdgo.GoInt32))) {} else if (((_i == (0 : stdgo.GoInt)) && !stdgo._internal.unicode.Unicode_isLetter.isLetter(_r) : Bool)) {
                return false;
            } else if ((!stdgo._internal.unicode.Unicode_isLetter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isDigit.isDigit(_r) : Bool)) {
                return false;
            };
        };
        return true;
    }
