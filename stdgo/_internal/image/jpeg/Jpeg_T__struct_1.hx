package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:local @:using(stdgo._internal.image.jpeg.Jpeg_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _src : stdgo.Slice<stdgo.GoUInt8>;
    public var _stride : stdgo.GoInt;
};
