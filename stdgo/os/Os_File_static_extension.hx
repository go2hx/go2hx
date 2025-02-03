package stdgo.os;
class File_static_extension {
    static public function stat(_f:File):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFrom(_f:File, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fd(_f:File):stdgo.GoUIntptr {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.fd(_f);
    }
    static public function _checkValid(_f:File, _op:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _op = (_op : stdgo.GoString);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._checkValid(_f, _op);
    }
    static public function _setWriteDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._setWriteDeadline(_f, _t);
    }
    static public function _setReadDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._setReadDeadline(_f, _t);
    }
    static public function _setDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._setDeadline(_f, _t);
    }
    static public function chdir(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.chdir(_f);
    }
    static public function sync(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.sync(_f);
    }
    static public function truncate(_f:File, _size:haxe.Int64):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.truncate(_f, _size);
    }
    static public function chown(_f:File, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.chown(_f, _uid, _gid);
    }
    static public function _chmod(_f:File, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._chmod(_f, _mode);
    }
    static public function _pwrite(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._pwrite(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _write(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pread(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._pread(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.close(_f);
    }
    static public function syscallConn(_f:File):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.syscallConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.setWriteDeadline(_f, _t);
    }
    static public function setReadDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.setReadDeadline(_f, _t);
    }
    static public function setDeadline(_f:File, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.setDeadline(_f, _t);
    }
    static public function chmod(_f:File, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.chmod(_f, _mode);
    }
    static public function _wrapErr(_f:File, _op:String, _err:stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _op = (_op : stdgo.GoString);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._wrapErr(_f, _op, _err);
    }
    static public function writeString(_f:File, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.writeString(_f, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.writeAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_f:File, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.readAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(_f:File):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return stdgo._internal.os.Os_File_static_extension.File_static_extension.name(_f);
    }
    static public function _readdir(_f:File, _n:StdTypes.Int, _mode:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension._readdir(_f, _n, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    static public function readDir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.readDir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdirnames(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.readdirnames(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_File_static_extension.File_static_extension.readdir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _close(__self__:stdgo._internal.os.Os_File.File):stdgo.Error {
        return stdgo._internal.os.Os_File_static_extension.File_static_extension._close(__self__);
    }
}
