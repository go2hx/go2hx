package stdgo._internal.compress.bzip2;
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder {
        if (((_symbols.length) > (256 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("too many symbols" : stdgo.GoString));
        };
        return (_symbols : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
    }
