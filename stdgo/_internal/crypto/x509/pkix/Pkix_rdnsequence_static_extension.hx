package stdgo._internal.crypto.x509.pkix;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.RDNSequence_asInterface) class RDNSequence_static_extension {
    @:keep
    @:tdfield
    static public function string( _r:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence):stdgo.GoString {
        @:recv var _r:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = _r;
        var _s = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r.length) : Bool)) {
                var _rdn = (_r[(((_r.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] : stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET);
if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s + (("," : stdgo.GoString)).__copy__() : stdgo.GoString);
                };
for (_j => _tv in _rdn) {
                    if ((_j > (0 : stdgo.GoInt) : Bool)) {
                        _s = (_s + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    var _oidString = ((_tv.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    var __tmp__ = (stdgo._internal.crypto.x509.pkix.Pkix__attributetypenames._attributeTypeNames != null && stdgo._internal.crypto.x509.pkix.Pkix__attributetypenames._attributeTypeNames.__exists__(_oidString?.__copy__()) ? { _0 : stdgo._internal.crypto.x509.pkix.Pkix__attributetypenames._attributeTypeNames[_oidString?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _typeName:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(_tv.value), _derBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _s = (_s + (((_oidString + ("=#" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_derBytes)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            continue;
                        };
                        _typeName = _oidString?.__copy__();
                    };
                    var _valueString = (stdgo._internal.fmt.Fmt_sprint.sprint(_tv.value)?.__copy__() : stdgo.GoString);
                    var _escaped = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (_valueString.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_k => _c in _valueString) {
                        var _escape = (false : Bool);
                        {
                            final __value__ = _c;
                            if (__value__ == ((44 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((59 : stdgo.GoInt32))) {
                                _escape = true;
                            } else if (__value__ == ((32 : stdgo.GoInt32))) {
                                _escape = ((_k == (0 : stdgo.GoInt)) || (_k == ((_valueString.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool);
                            } else if (__value__ == ((35 : stdgo.GoInt32))) {
                                _escape = _k == ((0 : stdgo.GoInt));
                            };
                        };
                        if (_escape) {
                            _escaped = (_escaped.__append__((92 : stdgo.GoInt32), _c));
                        } else {
                            _escaped = (_escaped.__append__(_c));
                        };
                    };
                    _s = (_s + (((_typeName + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_escaped : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _i++;
            };
        };
        return _s?.__copy__();
    }
}
