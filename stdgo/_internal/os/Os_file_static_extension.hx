package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function stat( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } throw "File:os.stat is not yet implemented";
    @:keep
    @:tdfield
    static public function _readFrom( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } throw "File:os._readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function _seek( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os._seek is not yet implemented";
    @:keep
    @:tdfield
    static public function fd( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.GoUIntptr throw "File:os.fd is not yet implemented";
    @:keep
    @:tdfield
    static public function _checkValid( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _op:stdgo.GoString):stdgo.Error throw "File:os._checkValid is not yet implemented";
    @:keep
    @:tdfield
    static public function _setWriteDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os._setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function _setReadDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os._setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function _setDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os._setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function chdir( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Error throw "File:os.chdir is not yet implemented";
    @:keep
    @:tdfield
    static public function sync( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Error throw "File:os.sync is not yet implemented";
    @:keep
    @:tdfield
    static public function truncate( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        #if (sys || hxnodejs) {
            @:privateAccess _f._output.close();
            final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
            sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0, (_size : stdgo.GoInt).toBasic()));
            @:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
        } #else null #end;
        return null;
    }
    @:keep
    @:tdfield
    static public function chown( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw "File:os.chown is not yet implemented";
    @:keep
    @:tdfield
    static public function _chmod( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error throw "File:os._chmod is not yet implemented";
    @:keep
    @:tdfield
    static public function _pwrite( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pwrite is not yet implemented";
    @:keep
    @:tdfield
    static public function _write( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._write is not yet implemented";
    @:keep
    @:tdfield
    static public function _pread( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pread is not yet implemented";
    @:keep
    @:tdfield
    static public function _read( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._read is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        @:privateAccess _f._input.close();
        @:privateAccess _f._output.close();
        return null;
    }
    @:keep
    @:tdfield
    static public function syscallConn( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } throw "File:os.syscallConn is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "File:os.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function chmod( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error throw "File:os.chmod is not yet implemented";
    @:keep
    @:tdfield
    static public function _wrapErr( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw "File:os._wrapErr is not yet implemented";
    @:keep
    @:tdfield
    static public function writeString( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _f.write(_s);
    @:keep
    @:tdfield
    static public function seek( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        #if (sys || hxnodejs) {
            final input:sys.io.FileInput = cast @:privateAccess _f._input;
            final pos = sys.io.FileSeek.createByIndex(_whence.toBasic());
            @:privateAccess input.seek(_offset.toBasic().low, pos);
            return { _0 : input.tell(), _1 : null };
        } #else null #end;
        trace("not supported on non sys target");
        return { _0 : 0, _1 : null };
    }
    @:keep
    @:tdfield
    static public function writeAt( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.writeAt is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        if (_b.length == 0) return { _0 : 0, _1 : null };
        final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
        if (i != _b.length.toBasic()) return { _0 : i, _1 : stdgo._internal.errors.Errors_new_.new_("invalid write") };
        return { _0 : i, _1 : null };
    }
    @:keep
    @:tdfield
    static public function readFrom( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        final data = stdgo._internal.io.Io_readall.readAll(_r);
        if (data._1 != null) return { _0 : 0, _1 : data._1 };
        final obj = _f.write(data._0);
        return { _0 : obj._0, _1 : obj._1 };
    }
    @:keep
    @:tdfield
    static public function readAt( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.readAt is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = _f;
        final bytes = @:privateAccess _f._input.read(_b.length);
        for (i in 0 ... bytes.length) {
            _b[i] = bytes.get(i);
        };
        return { _0 : bytes.length, _1 : null };
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.GoString throw "File:os.name is not yet implemented";
    @:keep
    @:tdfield
    static public function _readdir( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _n:stdgo.GoInt, _mode:stdgo._internal.os.Os_t_readdirmode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _3 : stdgo.Error; } throw "File:os._readdir is not yet implemented";
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } throw "File:os.readDir is not yet implemented";
    @:keep
    @:tdfield
    static public function readdirnames( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "File:os.readdirnames is not yet implemented";
    @:keep
    @:tdfield
    static public function readdir( _f:stdgo.Ref<stdgo._internal.os.Os_file.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } throw "File:os.readdir is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _close( __self__:stdgo._internal.os.Os_file.File):stdgo.Error return @:_5 __self__._close();
}
