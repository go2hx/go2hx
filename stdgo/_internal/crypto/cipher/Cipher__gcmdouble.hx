package stdgo._internal.crypto.cipher;
function _gcmDouble(_x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement {
        var _double = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        var _msbSet = (((@:checkr _x ?? throw "null pointer dereference")._high & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64)) : Bool);
        _double._high = ((@:checkr _x ?? throw "null pointer dereference")._high >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _double._high = (_double._high | (((@:checkr _x ?? throw "null pointer dereference")._low << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _double._low = ((@:checkr _x ?? throw "null pointer dereference")._low >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_msbSet) {
            _double._low = (_double._low ^ ((-2233785415175766016i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return _double;
    }
