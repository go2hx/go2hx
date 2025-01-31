package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:interface typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_ByteWriter.ByteWriter,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():stdgo.Error;
};
