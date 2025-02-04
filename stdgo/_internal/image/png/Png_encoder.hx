package stdgo._internal.image.png;
@:structInit @:using(stdgo._internal.image.png.Png_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var compressionLevel : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel = ((0 : stdgo.GoInt) : stdgo._internal.image.png.Png_compressionlevel.CompressionLevel);
    public var bufferPool : stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool = (null : stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool);
    public function new(?compressionLevel:stdgo._internal.image.png.Png_compressionlevel.CompressionLevel, ?bufferPool:stdgo._internal.image.png.Png_encoderbufferpool.EncoderBufferPool) {
        if (compressionLevel != null) this.compressionLevel = compressionLevel;
        if (bufferPool != null) this.bufferPool = bufferPool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(compressionLevel, bufferPool);
    }
}
