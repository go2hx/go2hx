package stdgo._internal.image.color;
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        var _d = (_x - _y : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/color/color.go#L338"
        return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
