package stdgo._internal.image.png;
function _abs8(_d:stdgo.GoUInt8):stdgo.GoInt {
        if ((_d < (128 : stdgo.GoUInt8) : Bool)) {
            return (_d : stdgo.GoInt);
        };
        return ((256 : stdgo.GoInt) - (_d : stdgo.GoInt) : stdgo.GoInt);
    }
