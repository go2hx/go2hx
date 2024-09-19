package stdgo._internal.crypto.rand;
function int_(_rand:stdgo._internal.io.Io_Reader.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Error; } {
        var _n = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _err = (null : stdgo.Error);
        if ((_max.sign() <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _n.sub(_max, _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen = (_n.bitLen() : stdgo.GoInt);
        if (_bitLen == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k = (((_bitLen + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _b = ((_bitLen % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _n.setBytes(_bytes);
            if ((_n.cmp(_max) < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
