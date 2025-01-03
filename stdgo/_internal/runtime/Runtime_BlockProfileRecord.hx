package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_BlockProfileRecord_static_extension.BlockProfileRecord_static_extension) class BlockProfileRecord {
    public var count : stdgo.GoInt64 = 0;
    public var cycles : stdgo.GoInt64 = 0;
    @:embedded
    public var stackRecord : stdgo._internal.runtime.Runtime_StackRecord.StackRecord = ({} : stdgo._internal.runtime.Runtime_StackRecord.StackRecord);
    public function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo._internal.runtime.Runtime_StackRecord.StackRecord) {
        if (count != null) this.count = count;
        if (cycles != null) this.cycles = cycles;
        if (stackRecord != null) this.stackRecord = stackRecord;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var stack(get, never) : () -> stdgo.Slice<stdgo.GoUIntptr>;
    @:embedded
    @:embeddededffieldsffun
    public function get_stack():() -> stdgo.Slice<stdgo.GoUIntptr> return @:check3 (this.stackRecord ?? throw "null pointer derefrence").stack;
    public function __copy__() {
        return new BlockProfileRecord(count, cycles, stackRecord);
    }
}
