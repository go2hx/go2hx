package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.ObjectIdentifier_asInterface) class ObjectIdentifier_static_extension {
    @:keep
    static public function string( _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo.GoString {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = _oi;
        var _s:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _s.grow((32 : stdgo.GoInt));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (19 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _v in _oi) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s.writeByte((46 : stdgo.GoUInt8));
            };
            _s.write(stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, (_v : stdgo.GoInt64), (10 : stdgo.GoInt)));
        };
        return (_s.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function equal( _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, _other:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):Bool {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = _oi;
        if ((_oi.length) != ((_other.length))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oi.length) : Bool), _i++, {
                if (_oi[(_i : stdgo.GoInt)] != (_other[(_i : stdgo.GoInt)])) {
                    return false;
                };
            });
        };
        return true;
    }
}