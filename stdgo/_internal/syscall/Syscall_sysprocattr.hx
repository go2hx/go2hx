package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_sysprocattr_static_extension.SysProcAttr_static_extension) class SysProcAttr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysProcAttr();
    }
}
