package stdgo._internal.io.fs;
function formatDirEntry(_dir:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.GoString {
        var _name = (_dir.name()?.__copy__() : stdgo.GoString);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((5 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mode = ((_dir.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _mode = (_mode.__slice__(0, ((_mode.length) - (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _b = (_b.__append__(...(_mode : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
        if (_dir.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
