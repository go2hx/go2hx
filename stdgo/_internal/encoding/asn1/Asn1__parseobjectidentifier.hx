package stdgo._internal.encoding.asn1;
function _parseObjectIdentifier(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : stdgo.Error; } {
        var _s = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), _err = (null : stdgo.Error);
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("zero length OBJECT IDENTIFIER" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            return { _0 : _s, _1 : _err };
        };
        _s = (new stdgo.Slice<stdgo.GoInt>(((_bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, (0 : stdgo.GoInt)), _v:stdgo.GoInt = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
        while ((_offset < (_bytes.length) : Bool)) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, _offset);
                _v = @:tmpset0 __tmp__._0;
                _offset = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
if (_err != null) {
                return { _0 : _s, _1 : _err };
            };
_s[(_i : stdgo.GoInt)] = _v;
            _i++;
        };
        _s = (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
        return { _0 : _s, _1 : _err };
    }
