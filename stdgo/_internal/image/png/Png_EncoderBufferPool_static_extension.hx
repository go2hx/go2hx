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
@:keep class EncoderBufferPool_static_extension {
    @:interfacetypeffun
    static public function put(t:stdgo._internal.image.png.Png_EncoderBufferPool.EncoderBufferPool, _0:stdgo.Ref<stdgo._internal.image.png.Png_EncoderBuffer.EncoderBuffer>):Void t.put(_0);
    @:interfacetypeffun
    static public function get(t:stdgo._internal.image.png.Png_EncoderBufferPool.EncoderBufferPool):stdgo.Ref<stdgo._internal.image.png.Png_EncoderBuffer.EncoderBuffer> return t.get();
}
