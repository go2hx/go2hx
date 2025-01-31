package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _join(_elem:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        for (_i => _e in _elem) {
            if (_e != (stdgo.Go.str())) {
                return stdgo._internal.path.filepath.Filepath_clean.clean(stdgo._internal.strings.Strings_join.join((_elem.__slice__(_i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__())?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
