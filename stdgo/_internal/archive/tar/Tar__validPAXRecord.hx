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
function _validPAXRecord(_k:stdgo.GoString, _v:stdgo.GoString):Bool {
        if (((_k == stdgo.Go.str()) || stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), ("=" : stdgo.GoString)) : Bool)) {
            return false;
        };
        {
            final __value__ = _k;
            if (__value__ == (("path" : stdgo.GoString)) || __value__ == (("linkpath" : stdgo.GoString)) || __value__ == (("uname" : stdgo.GoString)) || __value__ == (("gname" : stdgo.GoString))) {
                return !stdgo._internal.archive.tar.Tar__hasNUL._hasNUL(_v?.__copy__());
            } else {
                return !stdgo._internal.archive.tar.Tar__hasNUL._hasNUL(_k?.__copy__());
            };
        };
    }
