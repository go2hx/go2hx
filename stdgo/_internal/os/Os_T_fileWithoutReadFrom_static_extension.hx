package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface) class T_fileWithoutReadFrom_static_extension {
    @:keep
    static public function readFrom( _:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):Void throw "T_fileWithoutReadFrom:os.readFrom is not yet implemented";
    @:embedded
    public static function _write( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._write(_b);
    @:embedded
    public static function _wrapErr( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__._wrapErr(_op, _err);
    @:embedded
    public static function _setWriteDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__._setWriteDeadline(__0);
    @:embedded
    public static function _setReadDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__._setReadDeadline(__0);
    @:embedded
    public static function _setDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__._setDeadline(__0);
    @:embedded
    public static function _seek( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__._seek(_offset, _whence);
    @:embedded
    public static function _readdir( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _n:stdgo.GoInt, _mode:stdgo._internal.os.Os_T_readdirMode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; } return __self__._readdir(_n, _mode);
    @:embedded
    public static function _readFrom( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__._readFrom(_r);
    @:embedded
    public static function _read( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._read(_b);
    @:embedded
    public static function _pwrite( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._pwrite(_b, _off);
    @:embedded
    public static function _pread( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._pread(_b, _off);
    @:embedded
    public static function _close( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error return __self__._close();
    @:embedded
    public static function _chmod( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return __self__._chmod(_mode);
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo.GoString):stdgo.Error return __self__._checkValid(__0);
    @:embedded
    public static function writeString( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeAt( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeAt(_b, _off);
    @:embedded
    public static function write( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function truncate( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo.GoInt64):stdgo.Error return __self__.truncate(__0);
    @:embedded
    public static function syscallConn( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return __self__.syscallConn();
    @:embedded
    public static function sync( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error return __self__.sync();
    @:embedded
    public static function stat( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(__0);
    @:embedded
    public static function seek( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.seek(_offset, _whence);
    @:embedded
    public static function readdirnames( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.readdirnames(_n);
    @:embedded
    public static function readdir( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } return __self__.readdir(_n);
    @:embedded
    public static function readDir( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_n);
    @:embedded
    public static function readAt( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_b, _off);
    @:embedded
    public static function read( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function name( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.GoString return __self__.name();
    @:embedded
    public static function fd( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.GoUIntptr return __self__.fd();
    @:embedded
    public static function close( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error return __self__.close();
    @:embedded
    public static function chown( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.chown(_uid, _gid);
    @:embedded
    public static function chmod( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return __self__.chmod(_mode);
    @:embedded
    public static function chdir( __self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error return __self__.chdir();
}
