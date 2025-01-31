package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_T_moduledata_static_extension.T_moduledata_static_extension) class T_moduledata {
    @:embedded
    public var notInHeap : _internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap = ({} : _internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap);
    public function new(?notInHeap:_internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap) {
        if (notInHeap != null) this.notInHeap = notInHeap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_moduledata(notInHeap);
    }
}
