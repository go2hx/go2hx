package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_ioFile_asInterface) class T_ioFile_static_extension {
    @:keep
    @:tdfield
    static public function readdir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._file) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile)) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>), _1 : stdgo._internal.net.http.Http__errmissingreaddir._errMissingReadDir };
        };
        var _list:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>);
        while (true) {
            var __tmp__ = _d.readDir((_count - (_list.length) : stdgo.GoInt)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            for (__1980 => _dir in _dirs) {
                var __tmp__ = _dir.info(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    continue;
                };
                _list = (_list.__append__(_info));
            };
            if (_err != null) {
                return { _0 : _list, _1 : _err };
            };
            if (((_count < (0 : stdgo.GoInt) : Bool) || ((_list.length) >= _count : Bool) : Bool)) {
                break;
            };
        };
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._file) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile)) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : stdgo._internal.net.http.Http__errmissingreaddir._errMissingReadDir };
        };
        return _d.readDir(_count);
    }
    @:keep
    @:tdfield
    static public function seek( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._file) : stdgo._internal.io.Io_seeker.Seeker)) : stdgo._internal.io.Io_seeker.Seeker), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_seeker.Seeker), _1 : false };
        }, _s = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errmissingseek._errMissingSeek };
        };
        return _s.seek(_offset, _whence);
    }
    @:keep
    @:tdfield
    static public function stat( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        return _f._file.stat();
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        return _f._file.read(_b);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):stdgo.Error {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        return _f._file.close();
    }
}
