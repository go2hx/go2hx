package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.StackRecord_static_extension) abstract StackRecord(stdgo._internal.runtime.Runtime_StackRecord.StackRecord) from stdgo._internal.runtime.Runtime_StackRecord.StackRecord to stdgo._internal.runtime.Runtime_StackRecord.StackRecord {
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_StackRecord.StackRecord(([for (i in stack0) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
