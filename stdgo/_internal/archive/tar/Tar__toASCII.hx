package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
function _toASCII(_s:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.archive.tar.Tar__isASCII._isASCII(_s?.__copy__())) {
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__1 => _c in _s) {
            if (((_c < (128 : stdgo.GoInt32) : Bool) && (_c != (0 : stdgo.GoInt32)) : Bool)) {
                _b = (_b.__append__((_c : stdgo.GoUInt8)));
            };
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
