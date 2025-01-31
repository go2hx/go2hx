package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_p?.__copy__(), _prefix?.__copy__());
    }
