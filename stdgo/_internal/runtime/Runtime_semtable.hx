package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_semtable_static_extension.SemTable_static_extension) class SemTable {
    @:embedded
    public var _semTable : stdgo._internal.runtime.Runtime_t_semtable.T_semTable = new stdgo._internal.runtime.Runtime_t_semtable.T_semTable(251, 251, ...[for (i in 0 ... 251) { _root : ({} : stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot), _pad : new stdgo.GoArray<stdgo.GoUInt8>(52, 52).__setNumber32__() }]);
    public function new(?_semTable:stdgo._internal.runtime.Runtime_t_semtable.T_semTable) {
        if (_semTable != null) this._semTable = _semTable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _rootFor(get, never) : stdgo.Pointer<stdgo.GoUInt32> -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot>;
    @:embedded
    @:embeddededffieldsffun
    public function get__rootFor():stdgo.Pointer<stdgo.GoUInt32> -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot> return @:check32 this._semTable._rootFor;
    public function __copy__() {
        return new SemTable(_semTable);
    }
}
