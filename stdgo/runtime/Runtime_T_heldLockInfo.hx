package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_heldLockInfo_static_extension) abstract T_heldLockInfo(stdgo._internal.runtime.Runtime_T_heldLockInfo.T_heldLockInfo) from stdgo._internal.runtime.Runtime_T_heldLockInfo.T_heldLockInfo to stdgo._internal.runtime.Runtime_T_heldLockInfo.T_heldLockInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_T_heldLockInfo.T_heldLockInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
