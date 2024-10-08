package stdgo._internal.crypto.tls;
@:structInit class T_keyShare {
    public var _group : stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_group:stdgo._internal.crypto.tls.Tls_CurveID.CurveID, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_group != null) this._group = _group;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_keyShare(_group, _data);
    }
}
