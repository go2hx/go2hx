package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.T_openFile_asInterface) class T_openFile_static_extension {
    @:keep
    static public function readAt( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile> = _f;
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > (_f._f._data.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _f._f._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _n = (_b.__copyTo__((_f._f._data.__slice__(_offset) : stdgo.GoString)) : stdgo.GoInt);
        if ((_n < (_b.length) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eof };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function seek( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile> = _f;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + (_f._offset) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + ((_f._f._data.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > (_f._f._data.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("seek" : stdgo.GoString), path : _f._f._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        _f._offset = _offset;
        return { _0 : _offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile> = _f;
        if ((_f._offset >= (_f._f._data.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
        };
        if ((_f._offset < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _f._f._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _n = (_b.__copyTo__((_f._f._data.__slice__(_f._offset) : stdgo.GoString)) : stdgo.GoInt);
        _f._offset = (_f._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function stat( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile> = _f;
        return { _0 : stdgo.Go.asInterface(_f._f), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile> = _f;
        return (null : stdgo.Error);
    }
}
