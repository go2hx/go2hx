package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
    @:keep
    @:tdfield
    static public function sub( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        return stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub(_fsys) : stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub)), _dir?.__copy__());
    }
    @:keep
    @:tdfield
    static public function glob( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        return stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly)), _pattern?.__copy__());
    }
    @:keep
    @:tdfield
    static public function readDir( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        return stdgo._internal.io.fs.Fs_readDir.readDir(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function stat( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        return stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function readFile( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        return stdgo._internal.io.fs.Fs_readFile.readFile(stdgo.Go.asInterface((new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(stdgo.Go.asInterface(_fsys)) : stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly)), _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function open( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = _fsys;
        if (!stdgo._internal.io.fs.Fs_validPath.validPath(_name?.__copy__())) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errNotExist.errNotExist } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _file = (_fsys[_name] ?? (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>));
        if (((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__)) && (((@:checkr _file ?? throw "null pointer dereference").mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : Bool)) {
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile(_name?.__copy__(), (new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(stdgo._internal.path.Path_base.base(_name?.__copy__())?.__copy__(), _file) : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo), (0i64 : stdgo.GoInt64)) : stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>)), _1 : (null : stdgo.Error) };
        };
        var _list:stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo> = (null : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        var _elem:stdgo.GoString = ("" : stdgo.GoString);
        var _need = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        if (_name == (("." : stdgo.GoString))) {
            _elem = ("." : stdgo.GoString);
            for (_fname => _f in _fsys) {
                var _i = (stdgo._internal.strings.Strings_index.index(_fname?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    if (_fname != (("." : stdgo.GoString))) {
                        _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(_fname?.__copy__(), _f) : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo)));
                    };
                } else {
                    _need[(_fname.__slice__(0, _i) : stdgo.GoString)] = true;
                };
            };
        } else {
            _elem = (_name.__slice__((stdgo._internal.strings.Strings_lastIndex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            var _prefix = ((_name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            for (_fname => _f in _fsys) {
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_fname?.__copy__(), _prefix?.__copy__())) {
                    var _felem = ((_fname.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    var _i = (stdgo._internal.strings.Strings_index.index(_felem?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                        _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(_felem?.__copy__(), _f) : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo)));
                    } else {
                        _need[(_fname.__slice__((_prefix.length), ((_prefix.length) + _i : stdgo.GoInt)) : stdgo.GoString)] = true;
                    };
                };
            };
            if ((((_file == null || (_file : Dynamic).__nil__) && _list == null : Bool) && (_need.length == (0 : stdgo.GoInt)) : Bool)) {
                return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errNotExist.errNotExist } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
            };
        };
        for (__2 => _fi in _list) {
            if (_need != null) _need.remove(_fi._name);
        };
        for (_name => _ in _need) {
            _list = (_list.__append__((new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(_name?.__copy__(), (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>)) : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo)));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_list[(_i : stdgo.GoInt)]._name < _list[(_j : stdgo.GoInt)]._name : Bool);
        });
        if ((_file == null || (_file : Dynamic).__nil__)) {
            _file = (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir(_name?.__copy__(), (new stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo(_elem?.__copy__(), _file) : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo), _list, (0 : stdgo.GoInt)) : stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>)), _1 : (null : stdgo.Error) };
    }
}
