package stdgo._internal.image.png;
function _abs8(_d:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L90"
        if ((_d < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L91"
            return (_d : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L93"
        return ((256 : stdgo.GoInt) - (_d : stdgo.GoInt) : stdgo.GoInt);
    }
