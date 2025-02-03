package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_keyShare_static_extension) abstract T_keyShare(stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare) from stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare to stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare {
    public var _group(get, set) : CurveID;
    function get__group():CurveID return this._group;
    function set__group(v:CurveID):CurveID {
        this._group = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_group:CurveID, ?_data:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare(_group, ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
