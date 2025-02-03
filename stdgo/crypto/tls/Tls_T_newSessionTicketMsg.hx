package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_newSessionTicketMsg_static_extension) abstract T_newSessionTicketMsg(stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg) from stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg to stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ticket(get, set) : Array<std.UInt>;
    function get__ticket():Array<std.UInt> return [for (i in this._ticket) i];
    function set__ticket(v:Array<std.UInt>):Array<std.UInt> {
        this._ticket = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_ticket:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _ticket) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
