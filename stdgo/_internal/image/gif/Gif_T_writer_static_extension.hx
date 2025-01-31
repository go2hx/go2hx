package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
@:keep class T_writer_static_extension {
    @:interfacetypeffun
    static public function flush(t:stdgo._internal.image.gif.Gif_T_writer.T_writer):stdgo.Error return t.flush();
}
