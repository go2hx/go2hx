package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function dir(_path:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.path.Path_split.split(_path?.__copy__()), _dir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return stdgo._internal.path.Path_clean.clean(_dir?.__copy__())?.__copy__();
    }
