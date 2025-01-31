package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function _sniff(_r:stdgo._internal.image.Image_T_reader.T_reader):stdgo._internal.image.Image_T_format.T_format {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.image.Image__atomicFormats._atomicFormats.load() : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>)) : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        for (__1 => _f in _formats) {
            var __tmp__ = _r.peek((_f._magic.length)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && stdgo._internal.image.Image__match._match(_f._magic?.__copy__(), _b) : Bool)) {
                return _f?.__copy__();
            };
        };
        return (new stdgo._internal.image.Image_T_format.T_format() : stdgo._internal.image.Image_T_format.T_format);
    }
