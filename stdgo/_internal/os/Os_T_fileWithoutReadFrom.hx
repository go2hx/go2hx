package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension) class T_fileWithoutReadFrom {
    @:embedded
    public var file : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public function new(?file:stdgo.Ref<stdgo._internal.os.Os_File.File>) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function chdir():stdgo.Error return this.file.chdir();
    @:embedded
    public function chmod(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return this.file.chmod(_mode);
    @:embedded
    public function chown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return this.file.chown(_uid, _gid);
    @:embedded
    public function close():stdgo.Error return this.file.close();
    @:embedded
    public function fd():stdgo.GoUIntptr return this.file.fd();
    @:embedded
    public function name():stdgo.GoString return this.file.name();
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.read(_b);
    @:embedded
    public function readAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.readAt(_b, _off);
    @:embedded
    public function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return this.file.readDir(_n);
    @:embedded
    public function readdir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } return this.file.readdir(_n);
    @:embedded
    public function readdirnames(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.file.readdirnames(_n);
    @:embedded
    public function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.file.seek(_offset, _whence);
    @:embedded
    public function setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file.setDeadline(__0);
    @:embedded
    public function setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file.setReadDeadline(__0);
    @:embedded
    public function setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file.setWriteDeadline(__0);
    @:embedded
    public function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return this.file.stat();
    @:embedded
    public function sync():stdgo.Error return this.file.sync();
    @:embedded
    public function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return this.file.syscallConn();
    @:embedded
    public function truncate(__0:stdgo.GoInt64):stdgo.Error return this.file.truncate(__0);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.write(_b);
    @:embedded
    public function writeAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.writeAt(_b, _off);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file.writeString(__0);
    @:embedded
    public function _checkValid(__0:stdgo.GoString):stdgo.Error return this.file._checkValid(__0);
    @:embedded
    public function _chmod(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error return this.file._chmod(_mode);
    @:embedded
    public function _close():stdgo.Error return this.file._close();
    @:embedded
    public function _pread(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file._pread(_b, _off);
    @:embedded
    public function _pwrite(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file._pwrite(_b, _off);
    @:embedded
    public function _read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file._read(_b);
    @:embedded
    public function _readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return this.file._readFrom(_r);
    @:embedded
    public function _readdir(_n:stdgo.GoInt, _mode:stdgo._internal.os.Os_T_readdirMode.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; } return this.file._readdir(_n, _mode);
    @:embedded
    public function _seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.file._seek(_offset, _whence);
    @:embedded
    public function _setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file._setDeadline(__0);
    @:embedded
    public function _setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file._setReadDeadline(__0);
    @:embedded
    public function _setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.file._setWriteDeadline(__0);
    @:embedded
    public function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return this.file._wrapErr(_op, _err);
    @:embedded
    public function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.file._write(_b);
    public function __copy__() {
        return new T_fileWithoutReadFrom(file);
    }
}
