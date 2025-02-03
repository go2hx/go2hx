package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.QUICEvent_static_extension) abstract QUICEvent(stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent) from stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent to stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent {
    public var kind(get, set) : QUICEventKind;
    function get_kind():QUICEventKind return this.kind;
    function set_kind(v:QUICEventKind):QUICEventKind {
        this.kind = v;
        return v;
    }
    public var level(get, set) : QUICEncryptionLevel;
    function get_level():QUICEncryptionLevel return this.level;
    function set_level(v:QUICEncryptionLevel):QUICEncryptionLevel {
        this.level = v;
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var suite(get, set) : std.UInt;
    function get_suite():std.UInt return this.suite;
    function set_suite(v:std.UInt):std.UInt {
        this.suite = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?kind:QUICEventKind, ?level:QUICEncryptionLevel, ?data:Array<std.UInt>, ?suite:std.UInt) this = new stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent(kind, level, ([for (i in data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (suite : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
