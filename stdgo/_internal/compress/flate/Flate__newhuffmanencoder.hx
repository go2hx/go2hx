package stdgo._internal.compress.flate;
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> {
        return (stdgo.Go.setRef(({ _codes : (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode)]) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>) } : stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    }
