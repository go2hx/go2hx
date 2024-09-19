package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
class T_fileWithoutReadFrom_asInterface {
    @:keep
    public dynamic function readFrom(_0:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):Void __self__.value.readFrom(_0);
    @:embedded
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:embedded
    public dynamic function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._wrapErr(_op, _err);
    @:embedded
    public dynamic function _setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value._setWriteDeadline(__0);
    @:embedded
    public dynamic function _setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value._setReadDeadline(__0);
    @:embedded
    public dynamic function _setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value._setDeadline(__0);
    @:embedded
    public dynamic function _seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._seek(_offset, _whence);
    @:embedded
    public dynamic function _readdir(_n:stdgo.GoInt, _mode:stdgo._internal.os.Os_T_readdirMode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; } return __self__.value._readdir(_n, _mode);
    @:embedded
    public dynamic function _readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._readFrom(_r);
    @:embedded
    public dynamic function _read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    @:embedded
    public dynamic function _pwrite(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pwrite(_b, _off);
    @:embedded
    public dynamic function _pread(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pread(_b, _off);
    @:embedded
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:embedded
    public dynamic function _chmod(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return __self__.value._chmod(_mode);
    @:embedded
    public dynamic function _checkValid(__0:stdgo.GoString):stdgo.Error return __self__.value._checkValid(__0);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_b, _off);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function truncate(__0:stdgo.GoInt64):stdgo.Error return __self__.value.truncate(__0);
    @:embedded
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    @:embedded
    public dynamic function sync():stdgo.Error return __self__.value.sync();
    @:embedded
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(__0);
    @:embedded
    public dynamic function setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(__0);
    @:embedded
    public dynamic function setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(__0);
    @:embedded
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:embedded
    public dynamic function readdirnames(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readdirnames(_n);
    @:embedded
    public dynamic function readdir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } return __self__.value.readdir(_n);
    @:embedded
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:embedded
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function fd():stdgo.GoUIntptr return __self__.value.fd();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function chown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.value.chown(_uid, _gid);
    @:embedded
    public dynamic function chmod(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return __self__.value.chmod(_mode);
    @:embedded
    public dynamic function chdir():stdgo.Error return __self__.value.chdir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}