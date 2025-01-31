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
@:structInit @:using(stdgo._internal.image.png.Png_Encoder_static_extension.Encoder_static_extension) class Encoder {
    public var compressionLevel : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel = ((0 : stdgo.GoInt) : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel);
    public var bufferPool : stdgo._internal.image.png.Png_EncoderBufferPool.EncoderBufferPool = (null : stdgo._internal.image.png.Png_EncoderBufferPool.EncoderBufferPool);
    public function new(?compressionLevel:stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel, ?bufferPool:stdgo._internal.image.png.Png_EncoderBufferPool.EncoderBufferPool) {
        if (compressionLevel != null) this.compressionLevel = compressionLevel;
        if (bufferPool != null) this.bufferPool = bufferPool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(compressionLevel, bufferPool);
    }
}
