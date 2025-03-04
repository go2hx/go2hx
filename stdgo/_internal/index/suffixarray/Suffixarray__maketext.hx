package stdgo._internal.index.suffixarray;
function _makeText(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __value__ = _name;
            if (__value__ == (("opticks" : stdgo.GoString))) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("../../testdata/Isaac.Newton-Opticks.txt" : stdgo.GoString));
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            } else if (__value__ == (("go" : stdgo.GoString))) {
                var _err = (stdgo._internal.path.filepath.Filepath_walkdir.walkDir(("../.." : stdgo.GoString), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                    if (((_err == null && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_path?.__copy__(), (".go" : stdgo.GoString)) : Bool) && !_info.isDir() : Bool)) {
                        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_path?.__copy__()), _file:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                        _data = (_data.__append__(...(_file : Array<stdgo.GoUInt8>)));
                    };
                    return (null : stdgo.Error);
                }) : stdgo.Error);
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            } else if (__value__ == (("zero" : stdgo.GoString))) {
                _data = (new stdgo.Slice<stdgo.GoUInt8>((50000000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == (("rand" : stdgo.GoString))) {
                _data = (new stdgo.Slice<stdgo.GoUInt8>((50000000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (stdgo._internal.math.rand.Rand_intn.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8);
                };
            };
        };
        return { _0 : _data, _1 : (null : stdgo.Error) };
    }
