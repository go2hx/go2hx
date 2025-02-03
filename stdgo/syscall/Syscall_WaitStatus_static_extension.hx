package stdgo.syscall;
class WaitStatus_static_extension {
    static public function trapCause(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.trapCause(_w);
    }
    static public function stopSignal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopSignal(_w);
    }
    static public function continued(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.continued(_w);
    }
    static public function stopped(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopped(_w);
    }
    static public function coreDump(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.coreDump(_w);
    }
    static public function signal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signal(_w);
    }
    static public function signaled(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signaled(_w);
    }
    static public function exitStatus(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exitStatus(_w);
    }
    static public function exited(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exited(_w);
    }
}
