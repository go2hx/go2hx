package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.png.Png__interlacing._interlacing, __tmp__1 = stdgo._internal.image.png.Png__chunkOrderError._chunkOrderError;
            stdgo._internal.image.Image_registerFormat.registerFormat(("png" : stdgo.GoString), stdgo.Go.str(137, "PNG\r\n", 26, "\n")?.__copy__(), stdgo._internal.image.png.Png_decode.decode, stdgo._internal.image.png.Png_decodeConfig.decodeConfig);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
