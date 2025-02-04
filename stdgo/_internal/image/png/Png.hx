package stdgo._internal.image.png;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.png.Png__interlacing._interlacing, __tmp__1 = stdgo._internal.image.png.Png__chunkordererror._chunkOrderError;
            stdgo._internal.image.Image_registerformat.registerFormat(("png" : stdgo.GoString), (stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString)?.__copy__(), stdgo._internal.image.png.Png_decode.decode, stdgo._internal.image.png.Png_decodeconfig.decodeConfig);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
