package stdgo._internal.image.jpeg;
@:local @:using(stdgo._internal.image.jpeg.Jpeg_t__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    /**
        * buf[i:j] are the buffered bytes read from the underlying
        * io.Reader that haven't yet been passed further on.
    **/
    public var _buf : stdgo.GoArray<stdgo.GoUInt8>;
    public var _i : stdgo.GoInt;
    /**
        * nUnreadable is the number of bytes to back up i after
        * overshooting. It can be 0, 1 or 2.
    **/
    public var _j : stdgo.GoInt;
    public var _nUnreadable : stdgo.GoInt;
};
