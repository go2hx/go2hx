package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:keep class T_writer_static_extension {
    @:interfacetypeffun
    static public function flush(t:stdgo._internal.image.jpeg.Jpeg_T_writer.T_writer):stdgo.Error return t.flush();
}
