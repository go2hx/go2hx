package stdgo._internal.encoding.asn1;
function _parseObjectIdentifier(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier; var _1 : stdgo.Error; } {
        var _s = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0), _err = (null : stdgo.Error);
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("zero length OBJECT IDENTIFIER" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
            return { _0 : _s, _1 : _err };
        };
        _s = (new stdgo.Slice<stdgo.GoInt>(((_bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBase128Int._parseBase128Int(_bytes, (0 : stdgo.GoInt)), _v:stdgo.GoInt = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _s, _1 : _err };
        };
        if ((_v < (80 : stdgo.GoInt) : Bool)) {
            _s[(0 : stdgo.GoInt)] = (_v / (40 : stdgo.GoInt) : stdgo.GoInt);
            _s[(1 : stdgo.GoInt)] = (_v % (40 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            _s[(0 : stdgo.GoInt)] = (2 : stdgo.GoInt);
            _s[(1 : stdgo.GoInt)] = (_v - (80 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _i = (2 : stdgo.GoInt);
        stdgo.Go.cfor((_offset < (_bytes.length) : Bool), _i++, {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBase128Int._parseBase128Int(_bytes, _offset);
                _v = __tmp__._0;
                _offset = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _s, _1 : _err };
            };
            _s[(_i : stdgo.GoInt)] = _v;
        });
        _s = (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier);
        return { _0 : _s, _1 : _err };
    }
