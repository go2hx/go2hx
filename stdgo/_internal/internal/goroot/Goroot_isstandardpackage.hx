package stdgo._internal.internal.goroot;
function isStandardPackage(_goroot:stdgo.GoString, _compiler:stdgo.GoString, _path:stdgo.GoString):Bool {
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : stdgo.GoString))) {
                var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_goroot?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return ((_err == null) && _info.isDir() : Bool);
            } else if (__value__ == (("gccgo" : stdgo.GoString))) {
                return @:check2 stdgo._internal.internal.goroot.Goroot__gccgosearch._gccgoSearch._isStandard(_path?.__copy__());
            } else {
                throw stdgo.Go.toInterface((("unknown compiler " : stdgo.GoString) + _compiler?.__copy__() : stdgo.GoString));
            };
        };
    }
