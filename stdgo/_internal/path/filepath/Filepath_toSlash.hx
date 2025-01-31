package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function toSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path?.__copy__();
        };
        return stdgo._internal.strings.Strings_replaceAll.replaceAll(_path?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
    }
