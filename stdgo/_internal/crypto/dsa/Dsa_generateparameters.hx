package stdgo._internal.crypto.dsa;
function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes):stdgo.Error {
        var _g_12:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var generatePrimesBreak = false;
        var _pBytes_3:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _qBytes_2:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var n_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_14:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pm1_13:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _h_11:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _p_5:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _q_4:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _one_7:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _rem_6:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var l_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_10:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3977520i32;
                } else if (__value__ == (3977520i32)) {
                    {
                        final __value__ = _sizes;
                        if (__value__ == ((0 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977536i32;
                        } else if (__value__ == ((1 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977574i32;
                        } else if (__value__ == ((2 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977612i32;
                        } else if (__value__ == ((3 : stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes))) {
                            _gotoNext = 3977650i32;
                        } else {
                            _gotoNext = 3977688i32;
                        };
                    };
                } else if (__value__ == (3977536i32)) {
                    l_0 = (1024 : stdgo.GoInt);
                    n_1 = (160 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977574i32)) {
                    l_0 = (2048 : stdgo.GoInt);
                    n_1 = (224 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977612i32)) {
                    l_0 = (2048 : stdgo.GoInt);
                    n_1 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977650i32)) {
                    l_0 = (3072 : stdgo.GoInt);
                    n_1 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977688i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid ParameterSizes" : stdgo.GoString));
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977760i32)) {
                    _qBytes_2 = (new stdgo.Slice<stdgo.GoUInt8>((n_1 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _pBytes_3 = (new stdgo.Slice<stdgo.GoUInt8>((l_0 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _q_4 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _p_5 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _rem_6 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _one_7 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    @:check2r _one_7.setInt64((1i64 : stdgo.GoInt64));
                    _gotoNext = 3977916i32;
                } else if (__value__ == (3977916i32)) {
                    var __blank__ = 0i32;
                    generatePrimesBreak = false;
                    _gotoNext = 3977933i32;
                } else if (__value__ == (3977933i32)) {
                    if (!generatePrimesBreak) {
                        _gotoNext = 3977937i32;
                    } else {
                        _gotoNext = 3978535i32;
                    };
                } else if (__value__ == (3977937i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _qBytes_2);
                            _err_8 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_8 != null) {
                            _gotoNext = 3977992i32;
                        } else {
                            _gotoNext = 3978015i32;
                        };
                    };
                } else if (__value__ == (3977992i32)) {
                    return _err_8;
                    _gotoNext = 3978015i32;
                } else if (__value__ == (3978015i32)) {
                    _qBytes_2[((_qBytes_2.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_qBytes_2[((_qBytes_2.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _qBytes_2[(0 : stdgo.GoInt)] = (_qBytes_2[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    @:check2r _q_4.setBytes(_qBytes_2);
                    if (!@:check2r _q_4.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978118i32;
                    } else {
                        _gotoNext = 3978139i32;
                    };
                } else if (__value__ == (3978118i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3977933i32;
                } else if (__value__ == (3978139i32)) {
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 3978139i32;
                    if ((_i_9 < ((4 : stdgo.GoInt) * l_0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3978164i32;
                    } else {
                        _gotoNext = 3977933i32;
                    };
                } else if (__value__ == (3978164i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _pBytes_3);
                            _err_10 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_10 != null) {
                            _gotoNext = 3978220i32;
                        } else {
                            _gotoNext = 3978246i32;
                        };
                    };
                } else if (__value__ == (3978220i32)) {
                    return _err_10;
                    _gotoNext = 3978246i32;
                } else if (__value__ == (3978246i32)) {
                    _pBytes_3[((_pBytes_3.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_pBytes_3[((_pBytes_3.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _pBytes_3[(0 : stdgo.GoInt)] = (_pBytes_3[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    @:check2r _p_5.setBytes(_pBytes_3);
                    @:check2r _rem_6.mod(_p_5, _q_4);
                    @:check2r _rem_6.sub(_rem_6, _one_7);
                    @:check2r _p_5.sub(_p_5, _rem_6);
                    if ((@:check2r _p_5.bitLen() < l_0 : Bool)) {
                        _gotoNext = 3978393i32;
                    } else {
                        _gotoNext = 3978417i32;
                    };
                } else if (__value__ == (3978393i32)) {
                    _i_9++;
                    _gotoNext = 3978139i32;
                } else if (__value__ == (3978417i32)) {
                    if (!@:check2r _p_5.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978449i32;
                    } else {
                        _gotoNext = 3978473i32;
                    };
                } else if (__value__ == (3978449i32)) {
                    _i_9++;
                    _gotoNext = 3978139i32;
                } else if (__value__ == (3978473i32)) {
                    (@:checkr _params ?? throw "null pointer dereference").p = _p_5;
                    (@:checkr _params ?? throw "null pointer dereference").q = _q_4;
                    generatePrimesBreak = true;
                    _gotoNext = 3977933i32;
                } else if (__value__ == (3978535i32)) {
                    _h_11 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    @:check2r _h_11.setInt64((2i64 : stdgo.GoInt64));
                    _g_12 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _pm1_13 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_p_5, _one_7);
                    _e_14 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_pm1_13, _q_4);
                    var __blank__ = 0i32;
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978654i32)) {
                    if (true) {
                        _gotoNext = 3978658i32;
                    } else {
                        _gotoNext = 3978765i32;
                    };
                } else if (__value__ == (3978658i32)) {
                    @:check2r _g_12.exp(_h_11, _e_14, _p_5);
                    if (@:check2r _g_12.cmp(_one_7) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3978698i32;
                    } else {
                        _gotoNext = 3978736i32;
                    };
                } else if (__value__ == (3978698i32)) {
                    @:check2r _h_11.add(_h_11, _one_7);
                    var __blank__ = 0i32;
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978736i32)) {
                    (@:checkr _params ?? throw "null pointer dereference").g = _g_12;
                    return (null : stdgo.Error);
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978765i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
