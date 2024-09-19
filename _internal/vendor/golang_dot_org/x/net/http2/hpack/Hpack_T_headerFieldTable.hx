package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable_static_extension.T_headerFieldTable_static_extension) class T_headerFieldTable {
    public var _ents : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
    public var _evictCount : stdgo.GoUInt64 = 0;
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
    public var _byNameValue : stdgo.GoMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64> = (null : stdgo.GoMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>);
    public function new(?_ents:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>, ?_evictCount:stdgo.GoUInt64, ?_byName:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>, ?_byNameValue:stdgo.GoMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>) {
        if (_ents != null) this._ents = _ents;
        if (_evictCount != null) this._evictCount = _evictCount;
        if (_byName != null) this._byName = _byName;
        if (_byNameValue != null) this._byNameValue = _byNameValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFieldTable(_ents, _evictCount, _byName, _byNameValue);
    }
}
