package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
var _testImages : stdgo.Slice<stdgo._internal.image.Image_T__struct_0.T__struct_0> = (new stdgo.Slice<stdgo._internal.image.Image_T__struct_0.T__struct_0>(9, 9, ...[({ _name : ("rgba" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newRGBA.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("rgba64" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newRGBA64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("nrgba" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newNRGBA.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("nrgba64" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newNRGBA64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("alpha" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newAlpha.newAlpha(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("alpha16" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newAlpha16.newAlpha16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("gray" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newGray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("gray16" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newGray16.newGray16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0), ({ _name : ("paletted" : stdgo.GoString), _image : function():stdgo._internal.image.Image_T_image.T_image {
        return stdgo.Go.asInterface(stdgo._internal.image.Image_newPaletted.newPaletted(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.image.Image_transparent.transparent), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque)]) : stdgo._internal.image.color.Color_Palette.Palette)));
    } } : stdgo._internal.image.Image_T__struct_0.T__struct_0)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _image : null } : stdgo._internal.image.Image_T__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.image.Image_T__struct_0.T__struct_0>);
