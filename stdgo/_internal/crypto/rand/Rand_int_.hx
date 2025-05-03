package stdgo._internal.crypto.rand;
function int_(_rand:stdgo._internal.io.Io_reader.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        var _n = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L63"
        if ((_max.sign() <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L64"
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L67"
        _n.sub(_max, _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen = (_n.bitLen() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L70"
        if (_bitLen == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L72"
            return { _0 : _n, _1 : _err };
        };
        var _k = (((_bitLen + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _b = ((_bitLen % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L78"
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L84"
        while (true) {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _bytes);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L86"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L87"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L94"
            _n.setBytes(_bytes);
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L95"
            if ((_n.cmp(_max) < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L96"
                return { _0 : _n, _1 : _err };
            };
        };
    }
