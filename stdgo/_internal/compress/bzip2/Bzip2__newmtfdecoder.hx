package stdgo._internal.compress.bzip2;
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder {
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L19"
        if (((_symbols.length) > (256 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L20"
            throw stdgo.Go.toInterface(("too many symbols" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L22"
        return (_symbols : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
    }
