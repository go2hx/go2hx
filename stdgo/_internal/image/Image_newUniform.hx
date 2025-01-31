package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function newUniform(_c:stdgo._internal.image.color.Color_Color.Color):stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> {
        return (stdgo.Go.setRef((new stdgo._internal.image.Image_Uniform.Uniform(_c) : stdgo._internal.image.Image_Uniform.Uniform)) : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
    }
