package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString).__copy__();
                };
                _i--;
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
