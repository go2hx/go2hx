package stdgo._internal.crypto.rand;
function int_(_rand:stdgo._internal.io.Io_reader.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        var _n = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        if ((@:check2r _max.sign() <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        @:check2r _n.sub(_max, @:check2r _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen = (@:check2r _n.bitLen() : stdgo.GoInt);
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
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _bytes);
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            @:check2r _n.setBytes(_bytes);
            if ((@:check2r _n.cmp(_max) < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
