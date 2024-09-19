package stdgo._internal.image.jpeg;
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.image.Image_registerFormat.registerFormat(("jpeg" : stdgo.GoString), stdgo.Go.str(255, 216)?.__copy__(), stdgo._internal.image.jpeg.Jpeg_decode.decode, stdgo._internal.image.jpeg.Jpeg_decodeConfig.decodeConfig);
            for (_i => _s in stdgo._internal.image.jpeg.Jpeg__theHuffmanSpec._theHuffmanSpec) {
                stdgo._internal.image.jpeg.Jpeg__theHuffmanLUT._theHuffmanLUT[(_i : stdgo.GoInt)]._init(_s?.__copy__());
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
