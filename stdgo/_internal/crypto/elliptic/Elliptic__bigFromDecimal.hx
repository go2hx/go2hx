package stdgo._internal.crypto.elliptic;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _bigFromDecimal(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("crypto/elliptic: internal error: invalid encoding" : stdgo.GoString));
        };
        return _b;
    }
