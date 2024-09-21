package _internal.vendor.golang_dot_org.x.text.transform;
typedef SpanningTransformer = stdgo.StructType & {
    > _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer,
    /**
        Span returns a position in src such that transforming src[:n] results in
        identical output src[:n] for these bytes. It does not necessarily return
        the largest such n. The atEOF argument tells whether src represents the
        last bytes of the input.
        
        Callers should always account for the n bytes consumed before
        considering the error err.
        
        A nil error means that all input bytes are known to be identical to the
        output produced by the Transformer. A nil error can be returned
        regardless of whether atEOF is true. If err is nil, then n must
        equal len(src); the converse is not necessarily true.
        
        ErrEndOfSpan means that the Transformer output may differ from the
        input after n bytes. Note that n may be len(src), meaning that the output
        would contain additional bytes after otherwise identical output.
        ErrShortSrc means that src had insufficient data to determine whether the
        remaining bytes would change. Other than the error conditions listed
        here, implementations are free to report other errors that arise.
        
        Calling Span can modify the Transformer state as a side effect. In
        effect, it does the transformation just as calling Transform would, only
        without copying to a destination buffer and only up to a point it can
        determine the input and output bytes are the same. This is obviously more
        limited than calling Transform, but can be more efficient in terms of
        copying and allocating buffers. Calls to Span and Transform may be
        interleaved.
        
        
    **/
    public dynamic function span(_src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
