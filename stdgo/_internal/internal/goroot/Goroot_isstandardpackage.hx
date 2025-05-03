package stdgo._internal.internal.goroot;
function isStandardPackage(_goroot:stdgo.GoString, _compiler:stdgo.GoString, _path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/goroot/gc.go#L20"
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : stdgo.GoString))) {
                var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_goroot?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/goroot/gc.go#L24"
                return ((_err == null) && _info.isDir() : Bool);
            } else if (__value__ == (("gccgo" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/goroot/gc.go#L26"
                return stdgo._internal.internal.goroot.Goroot__gccgosearch._gccgoSearch._isStandard(_path?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/goroot/gc.go#L28"
                throw stdgo.Go.toInterface((("unknown compiler " : stdgo.GoString) + _compiler?.__copy__() : stdgo.GoString));
            };
        };
    }
