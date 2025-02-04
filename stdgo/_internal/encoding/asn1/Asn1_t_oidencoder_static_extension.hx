package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_oidEncoder_asInterface) class T_oidEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _oid:stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _oid:stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder = _oid;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendbase128int._appendBase128Int((_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (((_oid[(0 : stdgo.GoInt)] * (40 : stdgo.GoInt) : stdgo.GoInt) + _oid[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt64));
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_oid.length) : Bool)) {
                _dst = stdgo._internal.encoding.asn1.Asn1__appendbase128int._appendBase128Int(_dst, (_oid[(_i : stdgo.GoInt)] : stdgo.GoInt64));
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _oid:stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder):stdgo.GoInt {
        @:recv var _oid:stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder = _oid;
        var _l = (stdgo._internal.encoding.asn1.Asn1__base128intlength._base128IntLength((((_oid[(0 : stdgo.GoInt)] * (40 : stdgo.GoInt) : stdgo.GoInt) + _oid[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_oid.length) : Bool)) {
                _l = (_l + (stdgo._internal.encoding.asn1.Asn1__base128intlength._base128IntLength((_oid[(_i : stdgo.GoInt)] : stdgo.GoInt64))) : stdgo.GoInt);
                _i++;
            };
        };
        return _l;
    }
}
