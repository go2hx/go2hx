package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.FS_asInterface) class FS_static_extension {
    @:keep
    static public function readFile( _f:stdgo._internal.embed.Embed_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_FS.FS = _f?.__copy__();
        var __tmp__ = _f.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>)) : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>), _1 : false };
        }, _ofile = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("is a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        return { _0 : (_ofile._f._data : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readDir( _f:stdgo._internal.embed.Embed_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_FS.FS = _f?.__copy__();
        var __tmp__ = _f.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>)) : stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>), _1 : false };
        }, _dir = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("not a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>((_dir._files.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        for (_i => _ in _list) {
            _list[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(_dir._files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>));
        };
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function open( _f:stdgo._internal.embed.Embed_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_FS.FS = _f?.__copy__();
        var _file = _f._lookup(_name?.__copy__());
        if (_file == null || (_file : Dynamic).__nil__) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errNotExist.errNotExist } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        if (_file.isDir()) {
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.embed.Embed_T_openDir.T_openDir(_file, _f._readDir(_name?.__copy__()), (0 : stdgo.GoInt)) : stdgo._internal.embed.Embed_T_openDir.T_openDir)) : stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>)), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.embed.Embed_T_openFile.T_openFile(_file, (0i64 : stdgo.GoInt64)) : stdgo._internal.embed.Embed_T_openFile.T_openFile)) : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readDir( _f:stdgo._internal.embed.Embed_FS.FS, _dir:stdgo.GoString):stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file> {
        @:recv var _f:stdgo._internal.embed.Embed_FS.FS = _f?.__copy__();
        if (_f._files == null || (_f._files : Dynamic).__nil__) {
            return (null : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>);
        };
        var _files = (_f._files : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>);
        var _i = (stdgo._internal.embed.Embed__sortSearch._sortSearch((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
            return (_idir >= _dir : Bool);
        }) : stdgo.GoInt);
        var _j = (stdgo._internal.embed.Embed__sortSearch._sortSearch((_files.length), function(_j:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_j : stdgo.GoInt)]._name?.__copy__()), _jdir:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
            return (_jdir > _dir : Bool);
        }) : stdgo.GoInt);
        return (_files.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>);
    }
    @:keep
    static public function _lookup( _f:stdgo._internal.embed.Embed_FS.FS, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> {
        @:recv var _f:stdgo._internal.embed.Embed_FS.FS = _f?.__copy__();
        if (!stdgo._internal.io.fs.Fs_validPath.validPath(_name?.__copy__())) {
            return null;
        };
        if (_name == (("." : stdgo.GoString))) {
            return stdgo._internal.embed.Embed__dotFile._dotFile;
        };
        if (_f._files == null || (_f._files : Dynamic).__nil__) {
            return null;
        };
        var __tmp__ = stdgo._internal.embed.Embed__split._split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __12:Bool = __tmp__._2;
        var _files = (_f._files : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>);
        var _i = (stdgo._internal.embed.Embed__sortSearch._sortSearch((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, _ielem:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
            return ((_idir > _dir : Bool) || (_idir == (_dir) && (_ielem >= _elem : Bool) : Bool) : Bool);
        }) : stdgo.GoInt);
        if (((_i < (_files.length) : Bool) && (stdgo._internal.embed.Embed__trimSlash._trimSlash(_files[(_i : stdgo.GoInt)]._name?.__copy__()) == _name) : Bool)) {
            return (stdgo.Go.setRef(_files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        };
        return null;
    }
}