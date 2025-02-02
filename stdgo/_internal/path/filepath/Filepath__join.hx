package stdgo._internal.path.filepath;
function _join(_elem:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        for (_i => _e in _elem) {
            if (_e != ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo._internal.path.filepath.Filepath_clean.clean(stdgo._internal.strings.Strings_join.join((_elem.__slice__(_i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__())?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
