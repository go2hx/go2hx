package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.T_openDir_asInterface) class T_openDir_static_extension {
    @:keep
    static public function readDir( _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir> = _d;
        var _n = ((_d._files.length) - _d._offset : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            if ((_count <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : (null : stdgo.Error) };
            };
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : stdgo._internal.io.Io_eof.eof };
        };
        if (((_count > (0 : stdgo.GoInt) : Bool) && (_n > _count : Bool) : Bool)) {
            _n = _count;
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        for (_i => _ in _list) {
            _list[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(_d._files[(_d._offset + _i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>));
        };
        _d._offset = (_d._offset + (_n) : stdgo.GoInt);
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir> = _d;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _d._f._name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("is a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
    }
    @:keep
    static public function stat( _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir> = _d;
        return { _0 : stdgo.Go.asInterface(_d._f), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function close( _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.embed.Embed_T_openDir.T_openDir> = _d;
        return (null : stdgo.Error);
    }
}
