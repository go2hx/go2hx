package stdgo.image.png;
@:structInit @:using(stdgo.image.png.Png.Encoder_static_extension) abstract Encoder(stdgo._internal.image.png.Png_Encoder.Encoder) from stdgo._internal.image.png.Png_Encoder.Encoder to stdgo._internal.image.png.Png_Encoder.Encoder {
    public var compressionLevel(get, set) : CompressionLevel;
    function get_compressionLevel():CompressionLevel return this.compressionLevel;
    function set_compressionLevel(v:CompressionLevel):CompressionLevel {
        this.compressionLevel = v;
        return v;
    }
    public var bufferPool(get, set) : EncoderBufferPool;
    function get_bufferPool():EncoderBufferPool return this.bufferPool;
    function set_bufferPool(v:EncoderBufferPool):EncoderBufferPool {
        this.bufferPool = v;
        return v;
    }
    public function new(?compressionLevel:CompressionLevel, ?bufferPool:EncoderBufferPool) this = new stdgo._internal.image.png.Png_Encoder.Encoder(compressionLevel, bufferPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
