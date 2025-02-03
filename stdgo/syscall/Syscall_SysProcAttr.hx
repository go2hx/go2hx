package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.SysProcAttr_static_extension) abstract SysProcAttr(stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr) from stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr to stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr {
    public function new() this = new stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
