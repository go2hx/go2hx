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
    static public inline function default_(_sys:stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _sys = (_sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
        return {
            final obj = stdgo._internal.internal.syscall.execenv.Execenv_default_.default_(_sys);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
