package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension) class SemTable {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _rootFor(get, never) : stdgo.Pointer<stdgo.GoUInt32> -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_semaRoot.T_semaRoot>;
    @:embedded
    @:embeddededffieldsffun
    public function get__rootFor():stdgo.Pointer<stdgo.GoUInt32> -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_semaRoot.T_semaRoot> return @:check3 (this.new ?? throw "null pointer derefrence")._rootFor;
    public function __copy__() {
        return new SemTable();
    }
}
