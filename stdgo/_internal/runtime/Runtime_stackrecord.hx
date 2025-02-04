package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_stackrecord_static_extension.StackRecord_static_extension) class StackRecord {
    public var stack0 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32);
    public function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (stack0 != null) this.stack0 = stack0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StackRecord(stack0);
    }
}
