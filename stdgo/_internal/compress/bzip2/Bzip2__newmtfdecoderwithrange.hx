package stdgo._internal.compress.bzip2;
function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder {
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L28"
        if ((_n > (256 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L29"
            throw stdgo.Go.toInterface(("newMTFDecoderWithRange: cannot have > 256 symbols" : stdgo.GoString));
        };
        var _m = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L33"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _m[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/move_to_front.go#L36"
        return (_m : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
    }
