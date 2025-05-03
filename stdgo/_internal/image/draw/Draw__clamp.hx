package stdgo._internal.image.draw;
function _clamp(_i:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L935"
        if ((_i < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L936"
            return (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L938"
        if ((_i > (65535 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L939"
            return (65535 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L941"
        return _i;
    }
