package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface) class T_fileWithoutReadFrom_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):Void throw "T_fileWithoutReadFrom:os.readFrom is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _write( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _wrapErr( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoString, _1:stdgo.Error):stdgo.Error return @:_5 __self__._wrapErr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _setWriteDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__._setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setReadDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__._setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__._setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _seek( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__._seek(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readdir( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt, _1:stdgo._internal.os.Os_t_readdirmode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _3 : stdgo.Error; } return @:_5 __self__._readdir(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readFrom( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return @:_5 __self__._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _read( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pwrite( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._pwrite(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _pread( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._pread(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _close( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error return @:_5 __self__._close();
    @:embedded
    @:embeddededffieldsffun
    public static function _chmod( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return @:_5 __self__._chmod(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoString):stdgo.Error return @:_5 __self__._checkValid(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeString( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeAt( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function truncate( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt64):stdgo.Error return @:_5 __self__.truncate(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function syscallConn( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_5 __self__.syscallConn();
    @:embedded
    @:embeddededffieldsffun
    public static function sync( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error return @:_5 __self__.sync();
    @:embedded
    @:embeddededffieldsffun
    public static function stat( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.stat();
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function seek( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.seek(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function readdirnames( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.readdirnames(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readdir( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } return @:_5 __self__.readdir(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readDir( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_5 __self__.readDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function fd( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.GoUIntptr return @:_5 __self__.fd();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error return @:_5 __self__.close();
    @:embedded
    @:embeddededffieldsffun
    public static function chown( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.Error return @:_5 __self__.chown(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function chmod( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return @:_5 __self__.chmod(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function chdir( __self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error return @:_5 __self__.chdir();
}
