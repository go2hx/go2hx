package stdgo._internal.encoding.asn1;
function _appendTagAndLength(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength):stdgo.Slice<stdgo.GoUInt8> {
        var _b = ((_t._class : stdgo.GoUInt8) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L252"
        if (_t._isCompound) {
            _b = (_b | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L255"
        if ((_t._tag >= (31 : stdgo.GoInt) : Bool)) {
            _b = (_b | ((31 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _dst = (_dst.__append__(_b) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = stdgo._internal.encoding.asn1.Asn1__appendbase128int._appendBase128Int(_dst, (_t._tag : stdgo.GoInt64));
        } else {
            _b = (_b | ((_t._tag : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _dst = (_dst.__append__(_b) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L264"
        if ((_t._length >= (128 : stdgo.GoInt) : Bool)) {
            var _l = (stdgo._internal.encoding.asn1.Asn1__lengthlength._lengthLength(_t._length) : stdgo.GoInt);
            _dst = (_dst.__append__(((128 : stdgo.GoUInt8) | (_l : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = stdgo._internal.encoding.asn1.Asn1__appendlength._appendLength(_dst, _t._length);
        } else {
            _dst = (_dst.__append__((_t._length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L272"
        return _dst;
    }
