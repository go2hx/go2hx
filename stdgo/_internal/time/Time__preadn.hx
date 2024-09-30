package stdgo._internal.time;
function _preadn(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):stdgo.Error {
        var _whence = (0 : stdgo.GoInt);
        if ((_off < (0 : stdgo.GoInt) : Bool)) {
            _whence = (2 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.syscall.Syscall_seek.seek((_fd : stdgo.GoInt), (_off : stdgo.GoInt64), _whence), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        while (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.syscall.Syscall_read.read((_fd : stdgo.GoInt), _buf), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_m <= (0 : stdgo.GoInt) : Bool)) {
                if (_err == null) {
                    return stdgo._internal.errors.Errors_new_.new_(("short read" : stdgo.GoString));
                };
                return _err;
            };
            _buf = (_buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (null : stdgo.Error);
    }
