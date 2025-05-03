package stdgo._internal.compress.flate;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L808"
        stdgo._internal.compress.flate.Flate__fixedhuffmandecoderinit._fixedHuffmanDecoderInit();
        var _f:stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor = ({} : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L811"
        _f._makeReader(_r);
        _f._bits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(316, 316).__setNumber32__()) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._codebits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(19, 19).__setNumber32__()) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L815"
        _f._dict._init((32768 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L816"
        return stdgo.Go.asInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>));
    }
