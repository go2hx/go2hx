package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder {
        if ((_n > (256 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("newMTFDecoderWithRange: cannot have > 256 symbols" : stdgo.GoString));
        };
        var _m = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _m[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                _i++;
            };
        };
        return (_m : stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder);
    }
