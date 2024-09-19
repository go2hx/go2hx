package stdgo._internal.image.png;
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.image.Image_registerFormat.registerFormat(("png" : stdgo.GoString), stdgo.Go.str(137, "PNG\r\n", 26, "\n")?.__copy__(), stdgo._internal.image.png.Png_decode.decode, stdgo._internal.image.png.Png_decodeConfig.decodeConfig);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
