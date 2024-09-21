package _internal.vendor.golang_dot_org.x.text.transform;
typedef Transformer = stdgo.StructType & {
    /**
        Transform writes to dst the transformed bytes read from src, and
        returns the number of dst bytes written and src bytes read. The
        atEOF argument tells whether src represents the last bytes of the
        input.
        
        Callers should always process the nDst bytes produced and account
        for the nSrc bytes consumed before considering the error err.
        
        A nil error means that all of the transformed bytes (whether freshly
        transformed from src or left over from previous Transform calls)
        were written to dst. A nil error can be returned regardless of
        whether atEOF is true. If err is nil then nSrc must equal len(src);
        the converse is not necessarily true.
        
        ErrShortDst means that dst was too short to receive all of the
        transformed bytes. ErrShortSrc means that src had insufficient data
        to complete the transformation. If both conditions apply, then
        either error may be returned. Other than the error conditions listed
        here, implementations are free to report other errors that arise.
        
        
    **/
    public dynamic function transform(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    /**
        Reset resets the state and allows a Transformer to be reused.
        
        
    **/
    public dynamic function reset():Void;
};
