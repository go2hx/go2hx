package stdgo._internal.image.png;
function _levelToZlib(_l:stdgo._internal.image.png.Png_compressionlevel.CompressionLevel):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L572"
        {
            final __value__ = _l;
            if (__value__ == ((0 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L574"
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((-1 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L576"
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((-2 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L578"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((-3 : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L580"
                return (9 : stdgo.GoInt);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L582"
                return (-1 : stdgo.GoInt);
            };
        };
    }
