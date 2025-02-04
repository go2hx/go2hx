package stdgo._internal.path.filepath;
function _splitList(_path:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        return stdgo._internal.strings.Strings_split.split(_path?.__copy__(), ((58 : stdgo.GoInt32) : stdgo.GoString));
    }
