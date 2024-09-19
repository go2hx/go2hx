package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
function _isValidOID(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):Bool {
        if (((_oid.length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        if (((_oid[(0 : stdgo.GoInt)] > (2 : stdgo.GoInt) : Bool) || (((_oid[(0 : stdgo.GoInt)] <= (1 : stdgo.GoInt) : Bool) && (_oid[(1 : stdgo.GoInt)] >= (40 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            return false;
        };
        for (__0 => _v in _oid) {
            if ((_v < (0 : stdgo.GoInt) : Bool)) {
                return false;
            };
        };
        return true;
    }
