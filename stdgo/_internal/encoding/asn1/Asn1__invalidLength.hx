package stdgo._internal.encoding.asn1;
function _invalidLength(_offset:stdgo.GoInt, _length:stdgo.GoInt, _sliceLength:stdgo.GoInt):Bool {
        return (((_offset + _length : stdgo.GoInt) < _offset : Bool) || ((_offset + _length : stdgo.GoInt) > _sliceLength : Bool) : Bool);
    }
