package stdgo._internal.io.fs;
@:keep @:allow(stdgo._internal.io.fs.Fs.T_subFS_asInterface) class T_subFS_static_extension {
    @:keep
    static public function sub( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _f._fullName(("sub" : stdgo.GoString), _dir?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_FS.FS), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs_T_subFS.T_subFS(_f._fsys, _full?.__copy__()) : stdgo._internal.io.fs.Fs_T_subFS.T_subFS)) : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function glob( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        {
            var __tmp__ = stdgo._internal.path.Path_match.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (_pattern == (("." : stdgo.GoString))) {
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _full = (((_f._dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(_f._fsys, _full?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _name in _list) {
            var __tmp__ = _f._shorten(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.errors.Errors_new_.new_((((("invalid result from inner fsys Glob: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" not in " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _f._dir?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _list[(_i : stdgo.GoInt)] = _name?.__copy__();
        };
        return { _0 : _list, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readFile( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(_f._fsys, _full?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _data, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function readDir( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        var __tmp__ = _f._fullName(("read" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(_f._fsys, _full?.__copy__()), _dir:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dir, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function open( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        var __tmp__ = _f._fullName(("open" : stdgo.GoString), _name?.__copy__()), _full:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : _err };
        };
        var __tmp__ = _f._fsys.open(_full?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _file, _1 : _f._fixErr(_err) };
    }
    @:keep
    static public function _fixErr( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _err:stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _f._shorten(_e.path?.__copy__()), _short:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.path = _short?.__copy__();
                    };
                };
            };
        };
        return _err;
    }
    @:keep
    static public function _shorten( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        var _rel = ("" : stdgo.GoString), _ok = false;
        if (_name == (_f._dir)) {
            return { _0 : _rel = ("." : stdgo.GoString), _1 : _ok = true };
        };
        if (((((_name.length) >= ((_f._dir.length) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _name[(_f._dir.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && ((_name.__slice__(0, (_f._dir.length)) : stdgo.GoString) == _f._dir) : Bool)) {
            return { _0 : _rel = (_name.__slice__(((_f._dir.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : _ok = true };
        };
        return { _0 : _rel = stdgo.Go.str()?.__copy__(), _1 : _ok = false };
    }
    @:keep
    static public function _fullName( _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>, _op:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS> = _f;
        if (!stdgo._internal.io.fs.Fs_validPath.validPath(_name?.__copy__())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : _op?.__copy__(), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("invalid name" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        return { _0 : stdgo._internal.path.Path_join.join(_f._dir?.__copy__(), _name?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
