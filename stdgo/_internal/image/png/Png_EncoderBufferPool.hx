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
@:interface typedef EncoderBufferPool = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function get():stdgo.Ref<stdgo._internal.image.png.Png_EncoderBuffer.EncoderBuffer>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function put(_0:stdgo.Ref<stdgo._internal.image.png.Png_EncoderBuffer.EncoderBuffer>):Void;
};
