package stdgo._internal.os;
class T_fileWithoutReadFrom_asInterface {
    @:keep
    @:tdfield
    public dynamic function readFrom(_0:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):Void @:_0 __self__.value.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _wrapErr(_0:stdgo.GoString, _1:stdgo.Error):stdgo.Error return @:_0 __self__.value._wrapErr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value._setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value._setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value._setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._seek(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readdir(_0:stdgo.GoInt, _1:stdgo._internal.os.Os_t_readdirmode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _3 : stdgo.Error; } return @:_0 __self__.value._readdir(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pwrite(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._pwrite(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pread(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._pread(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _close():stdgo.Error return @:_0 __self__.value._close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _chmod(_0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return @:_0 __self__.value._chmod(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkValid(_0:stdgo.GoString):stdgo.Error return @:_0 __self__.value._checkValid(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeString(_0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeAt(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function truncate(_0:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value.truncate(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_0 __self__.value.syscallConn();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sync():stdgo.Error return @:_0 __self__.value.sync();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.stat();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.seek(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readdirnames(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.readdirnames(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readdir(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } return @:_0 __self__.value.readdir(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readDir(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readAt(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.readAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fd():stdgo.GoUIntptr return @:_0 __self__.value.fd();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chown(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.chown(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chmod(_0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return @:_0 __self__.value.chmod(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function chdir():stdgo.Error return @:_0 __self__.value.chdir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_t_filewithoutreadfrompointer.T_fileWithoutReadFromPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
