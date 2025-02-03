package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_ticketKey_static_extension) abstract T_ticketKey(stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey) from stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey to stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey {
    public var _aesKey(get, set) : haxe.ds.Vector<std.UInt>;
    function get__aesKey():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._aesKey) i]);
    function set__aesKey(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._aesKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _hmacKey(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hmacKey():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hmacKey) i]);
    function set__hmacKey(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hmacKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _created(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__created():stdgo._internal.time.Time_Time.Time return this._created;
    function set__created(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._created = v;
        return v;
    }
    public function new(?_aesKey:haxe.ds.Vector<std.UInt>, ?_hmacKey:haxe.ds.Vector<std.UInt>, ?_created:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey(([for (i in _aesKey) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _hmacKey) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _created);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
