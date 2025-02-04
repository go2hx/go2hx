package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.WaitStatus_asInterface) class WaitStatus_static_extension {
    @:keep
    @:tdfield
    static public function trapCause( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.trapCause is not yet implemented";
    @:keep
    @:tdfield
    static public function stopSignal( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):stdgo._internal.syscall.Syscall_signal.Signal throw "WaitStatus:syscall.stopSignal is not yet implemented";
    @:keep
    @:tdfield
    static public function continued( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):Bool throw "WaitStatus:syscall.continued is not yet implemented";
    @:keep
    @:tdfield
    static public function stopped( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):Bool throw "WaitStatus:syscall.stopped is not yet implemented";
    @:keep
    @:tdfield
    static public function coreDump( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):Bool throw "WaitStatus:syscall.coreDump is not yet implemented";
    @:keep
    @:tdfield
    static public function signal( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):stdgo._internal.syscall.Syscall_signal.Signal throw "WaitStatus:syscall.signal is not yet implemented";
    @:keep
    @:tdfield
    static public function signaled( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):Bool throw "WaitStatus:syscall.signaled is not yet implemented";
    @:keep
    @:tdfield
    static public function exitStatus( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.exitStatus is not yet implemented";
    @:keep
    @:tdfield
    static public function exited( _w:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):Bool throw "WaitStatus:syscall.exited is not yet implemented";
}
