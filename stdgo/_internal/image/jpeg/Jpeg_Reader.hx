package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:interface typedef Reader = stdgo.StructType & {
    > stdgo._internal.io.Io_ByteReader.ByteReader,
    > stdgo._internal.io.Io_Reader.Reader,
};
