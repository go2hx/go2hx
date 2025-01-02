package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension) class T_fileWithoutReadFrom {
    @:embedded
    public var file : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public function new(?file:stdgo.Ref<stdgo._internal.os.Os_File.File>) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var chdir(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_chdir():() -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").chdir;
    public var chmod(get, never) : stdgo._internal.io.fs.Fs_FileMode.FileMode -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_chmod():stdgo._internal.io.fs.Fs_FileMode.FileMode -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").chmod;
    public var chown(get, never) : (stdgo.GoInt, stdgo.GoInt) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_chown():(stdgo.GoInt, stdgo.GoInt) -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").chown;
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").close;
    public var fd(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get_fd():() -> stdgo.GoUIntptr return @:check3 (this.file ?? throw "null pointer derefrence").fd;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check3 (this.file ?? throw "null pointer derefrence").name;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").read;
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").readAt;
    public var readDir(get, never) : stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDir():stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").readDir;
    public var readdir(get, never) : stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readdir():stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").readdir;
    public var readdirnames(get, never) : stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readdirnames():stdgo.GoInt -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").readdirnames;
    public var seek(get, never) : (stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_seek():(stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").seek;
    public var setDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").setWriteDeadline;
    public var stat(get, never) : () -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_stat():() -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").stat;
    public var sync(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_sync():() -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").sync;
    public var syscallConn(get, never) : () -> { var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_syscallConn():() -> { var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").syscallConn;
    public var truncate(get, never) : stdgo.GoInt64 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_truncate():stdgo.GoInt64 -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence").truncate;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").write;
    public var writeAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").writeAt;
    public var writeString(get, never) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeString():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence").writeString;
    public var _checkValid(get, never) : stdgo.GoString -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():stdgo.GoString -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._checkValid;
    public var _chmod(get, never) : stdgo._internal.io.fs.Fs_FileMode.FileMode -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__chmod():stdgo._internal.io.fs.Fs_FileMode.FileMode -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._chmod;
    public var _close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__close():() -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._close;
    public var _pread(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__pread():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._pread;
    public var _pwrite(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__pwrite():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._pwrite;
    public var _read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._read;
    public var _readFrom(get, never) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readFrom():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._readFrom;
    public var _readdir(get, never) : (stdgo.GoInt, stdgo._internal.os.Os_T_readdirMode.T_readdirMode) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readdir():(stdgo.GoInt, stdgo._internal.os.Os_T_readdirMode.T_readdirMode) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _3 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._readdir;
    public var _seek(get, never) : (stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__seek():(stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._seek;
    public var _setDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__setDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._setDeadline;
    public var _setReadDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__setReadDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._setReadDeadline;
    public var _setWriteDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__setWriteDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._setWriteDeadline;
    public var _wrapErr(get, never) : (stdgo.GoString, stdgo.Error) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__wrapErr():(stdgo.GoString, stdgo.Error) -> stdgo.Error return @:check3 (this.file ?? throw "null pointer derefrence")._wrapErr;
    public var _write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.file ?? throw "null pointer derefrence")._write;
    public function __copy__() {
        return new T_fileWithoutReadFrom(file);
    }
}
