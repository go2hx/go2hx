package os.exec.internal.fdtest;
/**
    // Package fdtest provides test helpers for working with file descriptors across exec.
**/
private var __go2hxdoc__package : Bool;
/**
    // Exists returns true if fd is a valid file descriptor.
**/
function exists(_fd:stdgo.StdGoTypes.GoUIntptr):Bool {
        var _s:stdgo.syscall.Syscall.Stat_t = ({} : stdgo.syscall.Syscall.Stat_t);
        var _err:stdgo.Error = stdgo.syscall.Syscall.fstat((_fd : stdgo.StdGoTypes.GoInt), (stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Stat_t>));
        return stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((9 : stdgo.syscall.Syscall.Errno))));
    }
