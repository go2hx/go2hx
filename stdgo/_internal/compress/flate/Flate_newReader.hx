package stdgo._internal.compress.flate;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        stdgo._internal.compress.flate.Flate__fixedHuffmanDecoderInit._fixedHuffmanDecoderInit();
        var _f:stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor = ({} : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
        @:check2 _f._makeReader(_r);
        _f._bits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(316, 316, ...[for (i in 0 ... 316) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._codebits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(19, 19, ...[for (i in 0 ... 19) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
        @:check2 _f._dict._init((32768 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
        return stdgo.Go.asInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>));
    }
