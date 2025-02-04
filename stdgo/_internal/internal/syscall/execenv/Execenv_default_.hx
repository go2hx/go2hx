package stdgo._internal.internal.syscall.execenv;
function default_(_sys:stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        return { _0 : stdgo._internal.syscall.Syscall_environ_.environ_(), _1 : (null : stdgo.Error) };
    }
