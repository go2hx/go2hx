package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function evalSymlinks(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return stdgo._internal.path.filepath.Filepath__evalSymlinks._evalSymlinks(_path?.__copy__());
    }
