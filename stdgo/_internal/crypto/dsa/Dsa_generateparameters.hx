package stdgo._internal.crypto.dsa;
function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes):stdgo.Error {
        var _g_12:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var generatePrimesBreak = false;
        var _one_7:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pm1_13:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_10:stdgo.Error = (null : stdgo.Error);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _p_5:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _q_4:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _e_14:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _h_11:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _qBytes_2:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _rem_6:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pBytes_3:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var n_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var l_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3977520i64;
                } else if (__value__ == (3977520i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L72"
                    {
                        final __value__ = _sizes;
                        if (__value__ == ((0 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977536i64;
                        } else if (__value__ == ((1 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977574i64;
                        } else if (__value__ == ((2 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977612i64;
                        } else if (__value__ == ((3 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977650i64;
                        } else {
                            _gotoNext = 3977688i64;
                        };
                    };
                } else if (__value__ == (3977536i64)) {
                    l_0 = (1024 : stdgo.GoInt);
                    n_1 = (160 : stdgo.GoInt);
                    _gotoNext = 3977760i64;
                } else if (__value__ == (3977574i64)) {
                    l_0 = (2048 : stdgo.GoInt);
                    n_1 = (224 : stdgo.GoInt);
                    _gotoNext = 3977760i64;
                } else if (__value__ == (3977612i64)) {
                    l_0 = (2048 : stdgo.GoInt);
                    n_1 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i64;
                } else if (__value__ == (3977650i64)) {
                    l_0 = (3072 : stdgo.GoInt);
                    n_1 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i64;
                } else if (__value__ == (3977688i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L86"
                    return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid ParameterSizes" : stdgo.GoString));
                    _gotoNext = 3977760i64;
                } else if (__value__ == (3977760i64)) {
                    _qBytes_2 = (new stdgo.Slice<stdgo.GoUInt8>((n_1 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _pBytes_3 = (new stdgo.Slice<stdgo.GoUInt8>((l_0 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _q_4 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _p_5 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _rem_6 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _one_7 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L96"
                    _one_7.setInt64((1i64 : stdgo.GoInt64));
                    _gotoNext = 3977916i64;
                } else if (__value__ == (3977916i64)) {
                    0i64;
                    generatePrimesBreak = false;
                    _gotoNext = 3977933i64;
                } else if (__value__ == (3977933i64)) {
                    //"file://#L0"
                    if (!generatePrimesBreak) {
                        _gotoNext = 3977937i64;
                    } else {
                        _gotoNext = 3978535i64;
                    };
                } else if (__value__ == (3977937i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L100"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _qBytes_2);
                            _err_8 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_8 != null) {
                            _gotoNext = 3977992i64;
                        } else {
                            _gotoNext = 3978015i64;
                        };
                    };
                } else if (__value__ == (3977992i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L101"
                    return _err_8;
                    _gotoNext = 3978015i64;
                } else if (__value__ == (3978015i64)) {
                    _qBytes_2[((_qBytes_2.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_qBytes_2[((_qBytes_2.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _qBytes_2[(0 : stdgo.GoInt)] = (_qBytes_2[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L106"
                    _q_4.setBytes(_qBytes_2);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L108"
                    if (!_q_4.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978118i64;
                    } else {
                        _gotoNext = 3978139i64;
                    };
                } else if (__value__ == (3978118i64)) {
                    0i64;
                    _gotoNext = 3977933i64;
                } else if (__value__ == (3978139i64)) {
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 3978139i64;
                    //"file://#L0"
                    if ((_i_9 < ((4 : stdgo.GoInt) * l_0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3978164i64;
                    } else {
                        _gotoNext = 3977933i64;
                    };
                } else if (__value__ == (3978164i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L113"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _pBytes_3);
                            _err_10 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_10 != null) {
                            _gotoNext = 3978220i64;
                        } else {
                            _gotoNext = 3978246i64;
                        };
                    };
                } else if (__value__ == (3978220i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L114"
                    return _err_10;
                    _gotoNext = 3978246i64;
                } else if (__value__ == (3978246i64)) {
                    _pBytes_3[((_pBytes_3.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_pBytes_3[((_pBytes_3.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _pBytes_3[(0 : stdgo.GoInt)] = (_pBytes_3[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L120"
                    _p_5.setBytes(_pBytes_3);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L121"
                    _rem_6.mod(_p_5, _q_4);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L122"
                    _rem_6.sub(_rem_6, _one_7);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L123"
                    _p_5.sub(_p_5, _rem_6);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L124"
                    if ((_p_5.bitLen() < l_0 : Bool)) {
                        _gotoNext = 3978393i64;
                    } else {
                        _gotoNext = 3978417i64;
                    };
                } else if (__value__ == (3978393i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L112"
                    _i_9++;
                    _gotoNext = 3978139i64;
                } else if (__value__ == (3978417i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L128"
                    if (!_p_5.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978449i64;
                    } else {
                        _gotoNext = 3978473i64;
                    };
                } else if (__value__ == (3978449i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L112"
                    _i_9++;
                    _gotoNext = 3978139i64;
                } else if (__value__ == (3978473i64)) {
                    (@:checkr _params ?? throw "null pointer dereference").p = _p_5;
                    (@:checkr _params ?? throw "null pointer dereference").q = _q_4;
                    generatePrimesBreak = true;
                    _gotoNext = 3977933i64;
                } else if (__value__ == (3978535i64)) {
                    _h_11 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L139"
                    _h_11.setInt64((2i64 : stdgo.GoInt64));
                    _g_12 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _pm1_13 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_p_5, _one_7);
                    _e_14 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_pm1_13, _q_4);
                    0i64;
                    _gotoNext = 3978654i64;
                } else if (__value__ == (3978654i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3978658i64;
                    } else {
                        _gotoNext = 3978765i64;
                    };
                } else if (__value__ == (3978658i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L146"
                    _g_12.exp(_h_11, _e_14, _p_5);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L147"
                    if (_g_12.cmp(_one_7) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3978698i64;
                    } else {
                        _gotoNext = 3978736i64;
                    };
                } else if (__value__ == (3978698i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L148"
                    _h_11.add(_h_11, _one_7);
                    0i64;
                    _gotoNext = 3978654i64;
                } else if (__value__ == (3978736i64)) {
                    (@:checkr _params ?? throw "null pointer dereference").g = _g_12;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L153"
                    return (null : stdgo.Error);
                    _gotoNext = 3978654i64;
                } else if (__value__ == (3978765i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
