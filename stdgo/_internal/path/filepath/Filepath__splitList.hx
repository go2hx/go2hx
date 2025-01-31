package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        if (_path == (stdgo.Go.str())) {
            return (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        return stdgo._internal.strings.Strings_split.split(_path?.__copy__(), ((58 : stdgo.GoInt32) : stdgo.GoString));
    }
