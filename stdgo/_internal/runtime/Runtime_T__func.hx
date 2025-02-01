package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_T__func_static_extension.T__func_static_extension) class T__func {
    @:embedded
    public var notInHeap : stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap = ({} : stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap);
    public function new(?notInHeap:stdgo._internal.runtime.internal.sys.Sys_NotInHeap.NotInHeap) {
        if (notInHeap != null) this.notInHeap = notInHeap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__func(notInHeap);
    }
}
