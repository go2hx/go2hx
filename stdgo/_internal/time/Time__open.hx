package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _open(_name:stdgo.GoString):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.syscall.Syscall_open.open(_name?.__copy__(), (0 : stdgo.GoInt), (0u32 : stdgo.GoUInt32)), _fd:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoUIntptr), _1 : _err };
        };
        return { _0 : (_fd : stdgo.GoUIntptr), _1 : (null : stdgo.Error) };
    }
