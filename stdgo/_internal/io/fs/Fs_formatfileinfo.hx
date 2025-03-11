package stdgo._internal.io.fs;
function formatFileInfo(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoString {
        var _name = (_info.name()?.__copy__() : stdgo.GoString);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((40 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((_info.mode().string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        var _size = (_info.size() : stdgo.GoInt64);
        var _usize:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if ((_size >= (0i64 : stdgo.GoInt64) : Bool)) {
            _usize = (_size : stdgo.GoUInt64);
        } else {
            _b = (_b.__append__((45 : stdgo.GoUInt8)));
            _usize = (-_size : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _i = (19 : stdgo.GoInt);
        while ((_usize >= (10i64 : stdgo.GoUInt64) : Bool)) {
            var _q = (_usize / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _buf[(_i : stdgo.GoInt)] = ((((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) - (_q * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _i--;
            _usize = _q;
        };
        _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b = (_b.__append__(...((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_info.modTime().format(("2006-01-02 15:04:05" : stdgo.GoString)) : Array<stdgo.GoUInt8>)));
        _b = (_b.__append__((32 : stdgo.GoUInt8)));
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
        if (_info.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
