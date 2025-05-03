package stdgo._internal.io.fs;
function _glob(_fs:stdgo._internal.io.fs.Fs_fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _m = (null : stdgo.Slice<stdgo.GoString>), _e = (null : stdgo.Error);
        _m = _matches;
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_fs, _dir?.__copy__()), _infos:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L102"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L103"
            return { _0 : _m, _1 : _e };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L106"
        for (__0 => _info in _infos) {
            var _n = (_info.name()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.Path_match.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L109"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L110"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _err };
                    _m = __tmp__._0;
                    _e = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L112"
            if (_matched) {
                _m = (_m.__append__(stdgo._internal.path.Path_join.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L116"
        return { _0 : _m, _1 : _e };
    }
