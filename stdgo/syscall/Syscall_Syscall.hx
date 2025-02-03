package stdgo.syscall;
/**
    Package syscall contains an interface to the low-level operating system
    primitives. The details vary depending on the underlying system, and
    by default, godoc will display the syscall documentation for the current
    system. If you want godoc to display syscall documentation for another
    system, set $GOOS and $GOARCH to the desired system. For example, if
    you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    to freebsd and $GOARCH to arm.
    The primary use of syscall is inside other packages that provide a more
    portable interface to the system, such as "os", "time" and "net".  Use
    those packages rather than this one if you can.
    For details of the functions and data types in this package consult
    the manuals for the appropriate operating system.
    These calls return err == nil to indicate success; otherwise
    err is an operating system error describing the failure.
    On most systems, that error has type syscall.Errno.
    
    Deprecated: this package is locked down. Callers should use the
    corresponding package in the golang.org/x/sys repository instead.
    That is also where updates required by new systems or versions
    should be applied. See https://golang.org/s/go1.4-syscall for more
    information.
**/
class Syscall {
    /**
        ParseDirent parses up to max directory entries in buf,
        appending the names to names. It returns the number of
        bytes consumed from buf, the number of entries added
        to names, and the new names slice.
    **/
    static public inline function parseDirent(_buf:Array<std.UInt>, _max:StdTypes.Int, _names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _max = (_max : stdgo.GoInt);
        final _names = ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall_parseDirent.parseDirent(_buf, _max, _names);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
    static public inline function unsetenv(_key:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_unsetenv.unsetenv(_key);
    }
    static public inline function getenv(_key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_getenv.getenv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function setenv(_key:String, _value:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_setenv.setenv(_key, _value);
    }
    static public inline function clearenv():Void {
        stdgo._internal.syscall.Syscall_clearenv.clearenv();
    }
    static public inline function environ_():Array<String> {
        return [for (i in stdgo._internal.syscall.Syscall_environ_.environ_()) i];
    }
    static public inline function open(_path:String, _openmode:StdTypes.Int, _perm:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _openmode = (_openmode : stdgo.GoInt);
        final _perm = (_perm : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.syscall.Syscall_open.open(_path, _openmode, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function close(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_close.close(_fd);
    }
    static public inline function closeOnExec(_fd:StdTypes.Int):Void {
        final _fd = (_fd : stdgo.GoInt);
        stdgo._internal.syscall.Syscall_closeOnExec.closeOnExec(_fd);
    }
    static public inline function mkdir(_path:String, _perm:std.UInt):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _perm = (_perm : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_mkdir.mkdir(_path, _perm);
    }
    static public inline function readDirent(_fd:StdTypes.Int, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readDirent.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function stat(_path:String, _st:Stat_t):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_stat.stat(_path, _st);
    }
    static public inline function lstat(_path:String, _st:Stat_t):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_lstat.lstat(_path, _st);
    }
    static public inline function fstat(_fd:StdTypes.Int, _st:Stat_t):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _st = (_st : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        return stdgo._internal.syscall.Syscall_fstat.fstat(_fd, _st);
    }
    static public inline function unlink(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_unlink.unlink(_path);
    }
    static public inline function rmdir(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_rmdir.rmdir(_path);
    }
    static public inline function chmod(_path:String, _mode:std.UInt):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _mode = (_mode : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_chmod.chmod(_path, _mode);
    }
    static public inline function fchmod(_fd:StdTypes.Int, _mode:std.UInt):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _mode = (_mode : stdgo.GoUInt32);
        return stdgo._internal.syscall.Syscall_fchmod.fchmod(_fd, _mode);
    }
    static public inline function chown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_chown.chown(_path, _uid, _gid);
    }
    static public inline function fchown(_fd:StdTypes.Int, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fchown.fchown(_fd, _uid, _gid);
    }
    static public inline function lchown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_lchown.lchown(_path, _uid, _gid);
    }
    static public inline function utimesNano(_path:String, _ts:Array<Timespec>):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _ts = ([for (i in _ts) i] : stdgo.Slice<stdgo._internal.syscall.Syscall_Timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_utimesNano.utimesNano(_path, _ts);
    }
    static public inline function rename(_from:String, _to:String):stdgo.Error {
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_rename.rename(_from, _to);
    }
    static public inline function truncate(_path:String, _length:haxe.Int64):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _length = (_length : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_truncate.truncate(_path, _length);
    }
    static public inline function ftruncate(_fd:StdTypes.Int, _length:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_ftruncate.ftruncate(_fd, _length);
    }
    static public inline function getcwd(_buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_getcwd.getcwd(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function chdir(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_chdir.chdir(_path);
    }
    static public inline function fchdir(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fchdir.fchdir(_fd);
    }
    static public inline function readlink(_path:String, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readlink.readlink(_path, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function link(_path:String, _link:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _link = (_link : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_link.link(_path, _link);
    }
    static public inline function symlink(_path:String, _link:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        final _link = (_link : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_symlink.symlink(_path, _link);
    }
    static public inline function fsync(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_fsync.fsync(_fd);
    }
    static public inline function read(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_read.read(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function write(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_write.write(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function pread(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.syscall.Syscall_pread.pread(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function pwrite(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.syscall.Syscall_pwrite.pwrite(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function seek(_fd:StdTypes.Int, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_seek.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function dup(_fd:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_dup.dup(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function dup2(_fd:StdTypes.Int, _newfd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _newfd = (_newfd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_dup2.dup2(_fd, _newfd);
    }
    static public inline function pipe(_fd:Array<StdTypes.Int>):stdgo.Error {
        final _fd = ([for (i in _fd) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.syscall.Syscall_pipe.pipe(_fd);
    }
    static public inline function socket(_proto:StdTypes.Int, _sotype:StdTypes.Int, _unused:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _proto = (_proto : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _unused = (_unused : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_socket.socket(_proto, _sotype, _unused);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function bind(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_bind.bind(_fd, _sa);
    }
    static public inline function stopIO(_fd:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_stopIO.stopIO(_fd);
    }
    static public inline function listen(_fd:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _backlog = (_backlog : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_listen.listen(_fd, _backlog);
    }
    static public inline function accept(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_accept.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function connect(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_connect.connect(_fd, _sa);
    }
    static public inline function recvfrom(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvfrom.recvfrom(_fd, _p, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function sendto(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:Sockaddr):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_sendto.sendto(_fd, _p, _flags, _to);
    }
    static public inline function recvmsg(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvmsg.recvmsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public inline function sendmsgN(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:Sockaddr, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_sendmsgN.sendmsgN(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_getsockoptInt.getsockoptInt(_fd, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function setsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int, _value:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        final _value = (_value : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setsockoptInt.setsockoptInt(_fd, _level, _opt, _value);
    }
    static public inline function setReadDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setReadDeadline.setReadDeadline(_fd, _t);
    }
    static public inline function setWriteDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _t = (_t : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_setWriteDeadline.setWriteDeadline(_fd, _t);
    }
    static public inline function shutdown(_fd:StdTypes.Int, _how:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _how = (_how : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_shutdown.shutdown(_fd, _how);
    }
    static public inline function setNonblock(_fd:StdTypes.Int, _nonblocking:Bool):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_setNonblock.setNonblock(_fd, _nonblocking);
    }
    /**
        StringByteSlice converts a string to a NUL-terminated []byte,
        If s contains a NUL byte this function panics instead of
        returning an error.
        
        Deprecated: Use ByteSliceFromString instead.
    **/
    static public inline function stringByteSlice(_s:String):Array<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.syscall.Syscall_stringByteSlice.stringByteSlice(_s)) i];
    }
    /**
        ByteSliceFromString returns a NUL-terminated slice of bytes
        containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public inline function byteSliceFromString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_byteSliceFromString.byteSliceFromString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        If s contains a NUL byte this function panics instead of returning
        an error.
        
        Deprecated: Use BytePtrFromString instead.
    **/
    static public inline function stringBytePtr(_s:String):stdgo.Pointer<std.UInt> {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.syscall.Syscall_stringBytePtr.stringBytePtr(_s);
    }
    /**
        BytePtrFromString returns a pointer to a NUL-terminated array of
        bytes containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public inline function bytePtrFromString(_s:String):stdgo.Tuple<stdgo.Pointer<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_bytePtrFromString.bytePtrFromString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getpagesize():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpagesize.getpagesize();
    }
    static public inline function exit(_code:StdTypes.Int):Void {
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.syscall.Syscall_exit.exit(_code);
    }
    static public inline function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall.syscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        final _a4 = (_a4 : stdgo.GoUIntptr);
        final _a5 = (_a5 : stdgo.GoUIntptr);
        final _a6 = (_a6 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall6.syscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_rawSyscall.rawSyscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        final _trap = (_trap : stdgo.GoUIntptr);
        final _a1 = (_a1 : stdgo.GoUIntptr);
        final _a2 = (_a2 : stdgo.GoUIntptr);
        final _a3 = (_a3 : stdgo.GoUIntptr);
        final _a4 = (_a4 : stdgo.GoUIntptr);
        final _a5 = (_a5 : stdgo.GoUIntptr);
        final _a6 = (_a6 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.syscall.Syscall_rawSyscall6.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function sysctl(_key:String):stdgo.Tuple<String, stdgo.Error> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.syscall.Syscall_sysctl.sysctl(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getwd.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function getuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getuid.getuid();
    }
    static public inline function getgid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getgid.getgid();
    }
    static public inline function geteuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_geteuid.geteuid();
    }
    static public inline function getegid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getegid.getegid();
    }
    static public inline function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getgroups.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function getpid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpid.getpid();
    }
    static public inline function getppid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getppid.getppid();
    }
    static public inline function umask(_mask:StdTypes.Int):StdTypes.Int {
        final _mask = (_mask : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_umask.umask(_mask);
    }
    static public inline function gettimeofday(_tv:Timeval):stdgo.Error {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>);
        return stdgo._internal.syscall.Syscall_gettimeofday.gettimeofday(_tv);
    }
    static public inline function kill(_pid:StdTypes.Int, _signum:Signal):stdgo.Error {
        final _pid = (_pid : stdgo.GoInt);
        return stdgo._internal.syscall.Syscall_kill.kill(_pid, _signum);
    }
    static public inline function sendfile(_outfd:StdTypes.Int, _infd:StdTypes.Int, _offset:stdgo.Pointer<haxe.Int64>, _count:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _outfd = (_outfd : stdgo.GoInt);
        final _infd = (_infd : stdgo.GoInt);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.syscall.Syscall_sendfile.sendfile(_outfd, _infd, _offset, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function startProcess(_argv0:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo.GoUIntptr, stdgo.Error> {
        final _argv0 = (_argv0 : stdgo.GoString);
        final _argv = ([for (i in _argv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _attr = (_attr : stdgo.Ref<stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr>);
        return {
            final obj = stdgo._internal.syscall.Syscall_startProcess.startProcess(_argv0, _argv, _attr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function wait4(_pid:StdTypes.Int, _wstatus:stdgo.Pointer<WaitStatus>, _options:StdTypes.Int, _rusage:Rusage):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pid = (_pid : stdgo.GoInt);
        final _options = (_options : stdgo.GoInt);
        final _rusage = (_rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_Rusage.Rusage>);
        return {
            final obj = stdgo._internal.syscall.Syscall_wait4.wait4(_pid, _wstatus, _options, _rusage);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public inline function timespecToNsec(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timespecToNsec.timespecToNsec(_ts);
    }
    /**
        NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public inline function nsecToTimespec(_nsec:haxe.Int64):Timespec {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsecToTimespec.nsecToTimespec(_nsec);
    }
    /**
        TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public inline function timevalToNsec(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timevalToNsec.timevalToNsec(_tv);
    }
    /**
        NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public inline function nsecToTimeval(_nsec:haxe.Int64):Timeval {
        final _nsec = (_nsec : stdgo.GoInt64);
        return stdgo._internal.syscall.Syscall_nsecToTimeval.nsecToTimeval(_nsec);
    }
}
