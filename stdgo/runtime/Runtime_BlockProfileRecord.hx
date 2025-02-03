package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.BlockProfileRecord_static_extension) abstract BlockProfileRecord(stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord) from stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord to stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord {
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public var cycles(get, set) : haxe.Int64;
    function get_cycles():haxe.Int64 return this.cycles;
    function set_cycles(v:haxe.Int64):haxe.Int64 {
        this.cycles = (v : stdgo.GoInt64);
        return v;
    }
    public var stackRecord(get, set) : StackRecord;
    function get_stackRecord():StackRecord return this.stackRecord;
    function set_stackRecord(v:StackRecord):StackRecord {
        this.stackRecord = v;
        return v;
    }
    public function new(?count:haxe.Int64, ?cycles:haxe.Int64, ?stackRecord:StackRecord) this = new stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord((count : stdgo.GoInt64), (cycles : stdgo.GoInt64), stackRecord);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
