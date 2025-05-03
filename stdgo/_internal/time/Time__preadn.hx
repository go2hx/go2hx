package stdgo._internal.time;
function _preadn(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):stdgo.Error {
        var _whence = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L45"
        if ((_off < (0 : stdgo.GoInt) : Bool)) {
            _whence = (2 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L48"
        {
            var __tmp__ = stdgo._internal.syscall.Syscall_seek.seek((_fd : stdgo.GoInt), (_off : stdgo.GoInt64), _whence), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L49"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L51"
        while (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.syscall.Syscall_read.read((_fd : stdgo.GoInt), _buf), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L53"
            if ((_m <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L54"
                if (_err == null) {
                    //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L55"
                    return stdgo._internal.errors.Errors_new_.new_(("short read" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L57"
                return _err;
            };
            _buf = (_buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L61"
        return (null : stdgo.Error);
    }
