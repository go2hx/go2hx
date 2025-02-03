package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_beginRequest_static_extension) abstract T_beginRequest(stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest) from stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest to stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest {
    public var _role(get, set) : std.UInt;
    function get__role():std.UInt return this._role;
    function set__role(v:std.UInt):std.UInt {
        this._role = (v : stdgo.GoUInt16);
        return v;
    }
    public var _flags(get, set) : std.UInt;
    function get__flags():std.UInt return this._flags;
    function set__flags(v:std.UInt):std.UInt {
        this._flags = (v : stdgo.GoUInt8);
        return v;
    }
    public var _reserved(get, set) : haxe.ds.Vector<std.UInt>;
    function get__reserved():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._reserved) i]);
    function set__reserved(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._reserved = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_role:std.UInt, ?_flags:std.UInt, ?_reserved:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest((_role : stdgo.GoUInt16), (_flags : stdgo.GoUInt8), ([for (i in _reserved) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
