package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _initP224():Void {
        (@:checkr stdgo._internal.crypto.elliptic.Elliptic__p224._p224 ?? throw "null pointer dereference")._params = (stdgo.Go.setRef(({ name : ("P-224" : stdgo.GoString), bitSize : (224 : stdgo.GoInt), p : stdgo._internal.crypto.elliptic.Elliptic__bigFromDecimal._bigFromDecimal(("26959946667150639794667015087019630673557916260026308143510066298881" : stdgo.GoString)), n : stdgo._internal.crypto.elliptic.Elliptic__bigFromDecimal._bigFromDecimal(("26959946667150639794667015087019625940457807714424391721682722368061" : stdgo.GoString)), b : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4" : stdgo.GoString)), gx : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21" : stdgo.GoString)), gy : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34" : stdgo.GoString)) } : stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams)) : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
    }
