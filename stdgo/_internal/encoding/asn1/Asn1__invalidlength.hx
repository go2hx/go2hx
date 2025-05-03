package stdgo._internal.encoding.asn1;
function _invalidLength(_offset:stdgo.GoInt, _length:stdgo.GoInt, _sliceLength:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L672"
        return (((_offset + _length : stdgo.GoInt) < _offset : Bool) || ((_offset + _length : stdgo.GoInt) > _sliceLength : Bool) : Bool);
    }
