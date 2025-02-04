package stdgo._internal.image.jpeg;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.jpeg.Jpeg__errshorthuffmandata._errShortHuffmanData, __tmp__1 = stdgo._internal.image.jpeg.Jpeg__errunsupportedsubsamplingratio._errUnsupportedSubsamplingRatio, __tmp__2 = stdgo._internal.image.jpeg.Jpeg__unzig._unzig, __tmp__3 = stdgo._internal.image.jpeg.Jpeg__errmissingff00._errMissingFF00, __tmp__4 = stdgo._internal.image.jpeg.Jpeg__bitcount._bitCount, __tmp__5 = stdgo._internal.image.jpeg.Jpeg__unscaledquant._unscaledQuant, __tmp__6 = stdgo._internal.image.jpeg.Jpeg__thehuffmanspec._theHuffmanSpec, __tmp__7 = stdgo._internal.image.jpeg.Jpeg__sosheadery._sosHeaderY, __tmp__8 = stdgo._internal.image.jpeg.Jpeg__sosheaderycbcr._sosHeaderYCbCr;
            stdgo._internal.image.Image_registerformat.registerFormat(("jpeg" : stdgo.GoString), (stdgo.Go.str(255, 216) : stdgo.GoString)?.__copy__(), stdgo._internal.image.jpeg.Jpeg_decode.decode, stdgo._internal.image.jpeg.Jpeg_decodeconfig.decodeConfig);
            for (_i => _s in stdgo._internal.image.jpeg.Jpeg__thehuffmanspec._theHuffmanSpec) {
                @:check2 stdgo._internal.image.jpeg.Jpeg__thehuffmanlut._theHuffmanLUT[(_i : stdgo.GoInt)]._init(_s?.__copy__());
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
