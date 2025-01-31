package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_magic.length) != ((_b.length))) {
            return false;
        };
        for (_i => _c in _b) {
            if (((_magic[(_i : stdgo.GoInt)] != _c) && (_magic[(_i : stdgo.GoInt)] != (63 : stdgo.GoUInt8)) : Bool)) {
                return false;
            };
        };
        return true;
    }
