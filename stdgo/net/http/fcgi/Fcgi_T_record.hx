package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_record_static_extension) abstract T_record(stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record) from stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record to stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record {
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_h:T_header, ?_buf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record(_h, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
