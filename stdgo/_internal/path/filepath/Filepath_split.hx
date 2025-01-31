package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _vol = (stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
            _dir = __tmp__._0;
            _file = __tmp__._1;
            __tmp__;
        };
    }
