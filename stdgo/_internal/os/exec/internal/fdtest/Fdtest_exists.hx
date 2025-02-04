package stdgo._internal.os.exec.internal.fdtest;
function exists(_fd:stdgo.GoUIntptr):Bool {
        var _s:stdgo._internal.syscall.Syscall_stat_t.Stat_t = ({} : stdgo._internal.syscall.Syscall_stat_t.Stat_t);
        var _err = (stdgo._internal.syscall.Syscall_fstat.fstat((_fd : stdgo.GoInt), (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>)) : stdgo.Error);
        return stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(9) : stdgo._internal.syscall.Syscall_errno.Errno))));
    }
