package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_lfnode_static_extension) abstract T_lfnode(stdgo._internal.runtime.Runtime_T_lfnode.T_lfnode) from stdgo._internal.runtime.Runtime_T_lfnode.T_lfnode to stdgo._internal.runtime.Runtime_T_lfnode.T_lfnode {
    public function new() this = new stdgo._internal.runtime.Runtime_T_lfnode.T_lfnode();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
