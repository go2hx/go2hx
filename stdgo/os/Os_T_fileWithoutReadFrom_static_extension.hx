package stdgo.os;
class T_fileWithoutReadFrom_static_extension {
    static public function readFrom(_:T_fileWithoutReadFrom, _0:T_fileWithoutReadFrom):Void {
        stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.readFrom(_, _0);
    }
    public static function _write(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _wrapErr(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:String, _1:stdgo.Error):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Error);
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._wrapErr(__self__, _0, _1);
    }
    public static function _setWriteDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._setWriteDeadline(__self__, _0);
    }
    public static function _setReadDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._setReadDeadline(__self__, _0);
    }
    public static function _setDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._setDeadline(__self__, _0);
    }
    public static function _seek(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._seek(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readdir(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:StdTypes.Int, _1:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._readdir(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    public static function _readFrom(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _read(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pwrite(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._pwrite(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pread(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._pread(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _close(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._close(__self__);
    }
    public static function _chmod(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._chmod(__self__, _0);
    }
    public static function _checkValid(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:String):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension._checkValid(__self__, _0);
    }
    public static function writeString(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeAt(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.writeAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function truncate(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:haxe.Int64):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.truncate(__self__, _0);
    }
    public static function syscallConn(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.syscallConn(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function sync(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.sync(__self__);
    }
    public static function stat(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.stat(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.setDeadline(__self__, _0);
    }
    public static function seek(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.seek(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readdirnames(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.readdirnames(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readdir(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.readdir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.readDir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function name(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):String {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.name(__self__);
    }
    public static function fd(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.GoUIntptr {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.fd(__self__);
    }
    public static function close(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.close(__self__);
    }
    public static function chown(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:StdTypes.Int, _1:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.chown(__self__, _0, _1);
    }
    public static function chmod(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.chmod(__self__, _0);
    }
    public static function chdir(__self__:stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_T_fileWithoutReadFrom_static_extension.T_fileWithoutReadFrom_static_extension.chdir(__self__);
    }
}
