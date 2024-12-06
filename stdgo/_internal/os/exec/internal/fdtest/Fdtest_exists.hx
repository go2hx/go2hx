package stdgo._internal.os.exec.internal.fdtest;
function exists(_fd:stdgo.GoUIntptr):Bool {
        var _s:stdgo._internal.syscall.Syscall_Stat_t.Stat_t = ({} : stdgo._internal.syscall.Syscall_Stat_t.Stat_t);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        var _err = (stdgo._internal.syscall.Syscall_fstat.fstat((_fd : stdgo.GoInt), _s__pointer__) : stdgo.Error);
        return stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((9 : stdgo._internal.syscall.Syscall_Errno.Errno))));
    }
