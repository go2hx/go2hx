package stdgo._internal.image.gif;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.gif.Gif__errNotEnough._errNotEnough, __tmp__1 = stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch, __tmp__2 = stdgo._internal.image.gif.Gif__errBadPixel._errBadPixel, __tmp__3 = stdgo._internal.image.gif.Gif__interlacing._interlacing, __tmp__4 = stdgo._internal.image.gif.Gif__log2Lookup._log2Lookup;
            stdgo._internal.image.Image_registerFormat.registerFormat(("gif" : stdgo.GoString), ("GIF8?a" : stdgo.GoString), stdgo._internal.image.gif.Gif_decode.decode, stdgo._internal.image.gif.Gif_decodeConfig.decodeConfig);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
