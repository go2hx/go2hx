package stdgo.compress.flate;
class T_huffmanDecoder_static_extension {
    static public function _init(_h:T_huffmanDecoder, _lengths:Array<StdTypes.Int>):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
        final _lengths = ([for (i in _lengths) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.compress.flate.Flate_T_huffmanDecoder_static_extension.T_huffmanDecoder_static_extension._init(_h, _lengths);
    }
}
