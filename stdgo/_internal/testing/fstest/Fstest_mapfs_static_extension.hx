package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
    @:keep
    @:tdfield
    static public function sub( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L144"
        return stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub(_fsys) : stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub)), _dir?.__copy__());
    }
    @:keep
    @:tdfield
    static public function glob( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L134"
        return stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly)), _pattern?.__copy__());
    }
    @:keep
    @:tdfield
    static public function readDir( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L130"
        return stdgo._internal.io.fs.Fs_readdir.readDir(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function stat( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L126"
        return stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function readFile( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L122"
        return stdgo._internal.io.fs.Fs_readfile.readFile(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_t_fsonly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function open( _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = _fsys;
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L48"
        if (!stdgo._internal.io.fs.Fs_validpath.validPath(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L49"
            return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errnotexist.errNotExist } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        var _file = (_fsys[_name] ?? (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>));
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L52"
        if ((({
            final value = _file;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _file ?? throw "null pointer dereference").mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L54"
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile(_name?.__copy__(), (new stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo(stdgo._internal.path.Path_base.base(_name?.__copy__())?.__copy__(), _file) : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo), (0i64 : stdgo.GoInt64)) : stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>)), _1 : (null : stdgo.Error) };
        };
        var _list:stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = (null : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>);
        var _elem:stdgo.GoString = ("" : stdgo.GoString);
        var _need = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L64"
        if (_name == (("." : stdgo.GoString))) {
            _elem = ("." : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L66"
            for (_fname => _f in _fsys) {
                var _i = (stdgo._internal.strings.Strings_index.index(_fname?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L68"
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L69"
                    if (_fname != (("." : stdgo.GoString))) {
                        _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo(_fname?.__copy__(), _f) : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo)) : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>);
                    };
                } else {
                    _need[(_fname.__slice__(0, _i) : stdgo.GoString)] = true;
                };
            };
        } else {
            _elem = (_name.__slice__((stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            var _prefix = ((_name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L79"
            for (_fname => _f in _fsys) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L80"
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_fname?.__copy__(), _prefix?.__copy__())) {
                    var _felem = ((_fname.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    var _i = (stdgo._internal.strings.Strings_index.index(_felem?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L83"
                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                        _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo(_felem?.__copy__(), _f) : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo)) : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>);
                    } else {
                        _need[(_fname.__slice__((_prefix.length), ((_prefix.length) + _i : stdgo.GoInt)) : stdgo.GoString)] = true;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L93"
            if (((({
                final value = _file;
                (value == null || (value : Dynamic).__nil__);
            }) && _list == null : Bool) && (_need.length == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L94"
                return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errnotexist.errNotExist } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L97"
        for (__2 => _fi in _list) {
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L98"
            if (_need != null) _need.__remove__(_fi._name);
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L100"
        for (_name => _ in _need) {
            _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo(_name?.__copy__(), (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>)) : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo)) : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>);
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L103"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L104"
            return (_list[(_i : stdgo.GoInt)]._name < _list[(_j : stdgo.GoInt)]._name : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L107"
        if (({
            final value = _file;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _file = (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/mapfs.go#L110"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir(_name?.__copy__(), (new stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo(_elem?.__copy__(), _file) : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo), _list, (0 : stdgo.GoInt)) : stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>)), _1 : (null : stdgo.Error) };
    }
}
