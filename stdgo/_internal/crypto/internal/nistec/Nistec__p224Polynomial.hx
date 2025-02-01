package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p224Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> {
        @:check2r _y2.square(_x);
        @:check2r _y2.mul(_y2, _x);
        var _threeX = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).add(_x, _x);
        @:check2r _threeX.add(_threeX, _x);
        @:check2r _y2.sub(_y2, _threeX);
        return @:check2r _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p224B._p224B());
    }
