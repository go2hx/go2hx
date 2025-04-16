package stdgo.internal.syscall.execenv;
class Execenv {
    /**
        * Default will return the default environment
        * variables based on the process attributes
        * provided.
        * 
        * Defaults to syscall.Environ() on all platforms
        * other than Windows.
    **/
    static public inline function default_(_sys:stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.internal.syscall.execenv.Execenv_default_.default_(_sys);
}
