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
var _basicKeys : stdgo.GoMap<stdgo.GoString, Bool> = ({
        final x = new stdgo.GoMap.GoStringMap<Bool>();
        x.__defaultValue__ = () -> false;
        x.set(("path" : stdgo.GoString), true);
x.set(("linkpath" : stdgo.GoString), true);
x.set(("size" : stdgo.GoString), true);
x.set(("uid" : stdgo.GoString), true);
x.set(("gid" : stdgo.GoString), true);
x.set(("uname" : stdgo.GoString), true);
x.set(("gname" : stdgo.GoString), true);
x.set(("mtime" : stdgo.GoString), true);
x.set(("atime" : stdgo.GoString), true);
x.set(("ctime" : stdgo.GoString), true);
        x;
    } : stdgo.GoMap<stdgo.GoString, Bool>);
