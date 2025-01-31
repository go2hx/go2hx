package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _path;
            if (__value__ == (stdgo.Go.str())) {
                return ("." : stdgo.GoString);
            } else if (__value__ == (((47 : stdgo.GoInt32) : stdgo.GoString))) {
                return _path?.__copy__();
            } else {
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
