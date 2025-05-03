package stdgo._internal.image.color;
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L13"
        if ((_x >= _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L14"
            return (_x - _y : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L16"
        return (_y - _x : stdgo.GoUInt8);
    }
