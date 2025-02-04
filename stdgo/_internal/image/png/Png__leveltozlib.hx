package stdgo._internal.image.png;
function _levelToZlib(_l:stdgo._internal.image.png.Png_compressionlevel.CompressionLevel):stdgo.GoInt {
        {
            final __value__ = _l;
            if (__value__ == ((0 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((-1 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((-2 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((-3 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                return (9 : stdgo.GoInt);
            } else {
                return (-1 : stdgo.GoInt);
            };
        };
    }
