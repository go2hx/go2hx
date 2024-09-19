package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension) class SemTable {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _rootFor(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.Ref<stdgo._internal.runtime.Runtime_T_semaRoot.T_semaRoot> return this.new._rootFor(_addr);
    public function __copy__() {
        return new SemTable();
    }
}
