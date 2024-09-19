package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.os.Os.File_asInterface) class File_static_extension {
    @:keep
    static public function stat( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } throw "File:os.stat is not yet implemented";
    @:keep
    static public function _readFrom( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } throw "File:os._readFrom is not yet implemented";
    @:keep
    static public function _seek( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os._seek is not yet implemented";
    @:keep
    static public function fd( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.GoUIntptr throw "File:os.fd is not yet implemented";
    @:keep
    static public function _checkValid( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _op:stdgo.GoString):stdgo.Error throw "File:os._checkValid is not yet implemented";
    @:keep
    static public function _setWriteDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os._setWriteDeadline is not yet implemented";
    @:keep
    static public function _setReadDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os._setReadDeadline is not yet implemented";
    @:keep
    static public function _setDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os._setDeadline is not yet implemented";
    @:keep
    static public function chdir( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error throw "File:os.chdir is not yet implemented";
    @:keep
    static public function sync( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error throw "File:os.sync is not yet implemented";
    @:keep
    static public function truncate( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = _f;
        #if target.sys {
            @:privateAccess _f._output.close();
            final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
            sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0, (_size : stdgo.GoInt).toBasic()));
            @:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
        } #else null #end;
        return null;
    }
    @:keep
    static public function chown( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw "File:os.chown is not yet implemented";
    @:keep
    static public function _chmod( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error throw "File:os._chmod is not yet implemented";
    @:keep
    static public function _pwrite( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pwrite is not yet implemented";
    @:keep
    static public function _write( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._write is not yet implemented";
    @:keep
    static public function _pread( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pread is not yet implemented";
    @:keep
    static public function _read( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._read is not yet implemented";
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = _f;
        @:privateAccess _f._input.close();
        @:privateAccess _f._output.close();
        return null;
    }
    @:keep
    static public function syscallConn( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "File:os.syscallConn is not yet implemented";
    @:keep
    static public function setWriteDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os.setWriteDeadline is not yet implemented";
    @:keep
    static public function setReadDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os.setReadDeadline is not yet implemented";
    @:keep
    static public function setDeadline( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error throw "File:os.setDeadline is not yet implemented";
    @:keep
    static public function chmod( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error throw "File:os.chmod is not yet implemented";
    @:keep
    static public function _wrapErr( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw "File:os._wrapErr is not yet implemented";
    @:keep
    static public function writeString( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _f.write(_s);
    @:keep
    static public function seek( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os.seek is not yet implemented";
    @:keep
    static public function writeAt( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.writeAt is not yet implemented";
    @:keep
    static public function write( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = _f;
        if (_b.length == 0) return { _0 : 0, _1 : null };
        final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
        if (i != _b.length.toBasic()) return { _0 : i, _1 : stdgo._internal.errors.Errors_new_.new_("invalid write") };
        return { _0 : i, _1 : null };
    }
    @:keep
    static public function readFrom( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os.readFrom is not yet implemented";
    @:keep
    static public function readAt( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.readAt is not yet implemented";
    @:keep
    static public function read( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.read is not yet implemented";
    @:keep
    static public function name( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.GoString throw "File:os.name is not yet implemented";
    @:keep
    static public function _readdir( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _n:stdgo.GoInt, _mode:stdgo._internal.os.Os_T_readdirMode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; } throw "File:os._readdir is not yet implemented";
    @:keep
    static public function readDir( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } throw "File:os.readDir is not yet implemented";
    @:keep
    static public function readdirnames( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "File:os.readdirnames is not yet implemented";
    @:keep
    static public function readdir( _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } throw "File:os.readdir is not yet implemented";
    @:embedded
    public static function _close( __self__:stdgo._internal.os.Os_File.File):stdgo.Error return __self__._close();
}
