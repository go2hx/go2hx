package stdgo._internal.crypto.rand;
function prime(_rand:stdgo._internal.io.Io_reader.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L17"
        if ((_bits < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L18"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rand: prime size must be at least 2-bit" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L21"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        var _b = ((_bits % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L24"
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((((_bits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L31"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L32"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _bytes), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L33"
                    return { _0 : null, _1 : _err };
                };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L42"
            if ((_b >= (2u32 : stdgo.GoUInt) : Bool)) {
                _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] | (((3 : stdgo.GoUInt8) << ((_b - (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            } else {
                _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L47"
                if (((_bytes.length) > (1 : stdgo.GoInt) : Bool)) {
                    _bytes[(1 : stdgo.GoInt)] = (_bytes[(1 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
            _bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L54"
            _p.setBytes(_bytes);
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L55"
            if (_p.probablyPrime((20 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rand/util.go#L56"
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
        };
    }
