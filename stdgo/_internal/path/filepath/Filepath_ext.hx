package stdgo._internal.path.filepath;
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor(((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool), _i--, {
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return stdgo.Go.str()?.__copy__();
    }