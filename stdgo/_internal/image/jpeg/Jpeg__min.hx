package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        if ((_x < _y : Bool)) {
            return _x;
        };
        return _y;
    }
