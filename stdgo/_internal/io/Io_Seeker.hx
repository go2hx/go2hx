package stdgo._internal.io;
typedef Seeker = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};