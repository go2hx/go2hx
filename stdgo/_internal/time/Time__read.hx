package stdgo._internal.time;
function _read(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        return stdgo._internal.syscall.Syscall_read.read((_fd : stdgo.GoInt), _buf);
    }
