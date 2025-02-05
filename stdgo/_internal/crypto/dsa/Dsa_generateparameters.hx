package stdgo._internal.crypto.dsa;
function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes):stdgo.Error {
        var _pm1_3978589:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _one_3977878:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _p_3977838:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var generatePrimesBreak = false;
        var _q_3977819:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var l_3977510:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rem_3977857:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pBytes_3977789:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var n_3977513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3978535:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_3978175:stdgo.Error = (null : stdgo.Error);
        var _i_3978143:stdgo.GoInt = (0 : stdgo.GoInt);
        var _g_3978569:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_3977947:stdgo.Error = (null : stdgo.Error);
        var _qBytes_3977760:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _e_3978622:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
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
                    l_3977510 = (1024 : stdgo.GoInt);
                    n_3977513 = (160 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977574i32)) {
                    l_3977510 = (2048 : stdgo.GoInt);
                    n_3977513 = (224 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977612i32)) {
                    l_3977510 = (2048 : stdgo.GoInt);
                    n_3977513 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977650i32)) {
                    l_3977510 = (3072 : stdgo.GoInt);
                    n_3977513 = (256 : stdgo.GoInt);
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977688i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid ParameterSizes" : stdgo.GoString));
                    _gotoNext = 3977760i32;
                } else if (__value__ == (3977760i32)) {
                    _qBytes_3977760 = (new stdgo.Slice<stdgo.GoUInt8>((n_3977513 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _pBytes_3977789 = (new stdgo.Slice<stdgo.GoUInt8>((l_3977510 / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _q_3977819 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _p_3977838 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _rem_3977857 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _one_3977878 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    @:check2r _one_3977878.setInt64((1i64 : stdgo.GoInt64));
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
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _qBytes_3977760);
                            _err_3977947 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3977947 != null) {
                            _gotoNext = 3977992i32;
                        } else {
                            _gotoNext = 3978015i32;
                        };
                    };
                } else if (__value__ == (3977992i32)) {
                    return _err_3977947;
                    _gotoNext = 3978015i32;
                } else if (__value__ == (3978015i32)) {
                    _qBytes_3977760[((_qBytes_3977760.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_qBytes_3977760[((_qBytes_3977760.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _qBytes_3977760[(0 : stdgo.GoInt)] = (_qBytes_3977760[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    @:check2r _q_3977819.setBytes(_qBytes_3977760);
                    if (!@:check2r _q_3977819.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978118i32;
                    } else {
                        _gotoNext = 3978139i32;
                    };
                } else if (__value__ == (3978118i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3977933i32;
                } else if (__value__ == (3978139i32)) {
                    _i_3978143 = (0 : stdgo.GoInt);
                    _gotoNext = 3978139i32;
                    if ((_i_3978143 < ((4 : stdgo.GoInt) * l_3977510 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3978164i32;
                    } else {
                        _gotoNext = 3977933i32;
                    };
                } else if (__value__ == (3978164i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _pBytes_3977789);
                            _err_3978175 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3978175 != null) {
                            _gotoNext = 3978220i32;
                        } else {
                            _gotoNext = 3978246i32;
                        };
                    };
                } else if (__value__ == (3978220i32)) {
                    return _err_3978175;
                    _gotoNext = 3978246i32;
                } else if (__value__ == (3978246i32)) {
                    _pBytes_3977789[((_pBytes_3977789.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_pBytes_3977789[((_pBytes_3977789.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _pBytes_3977789[(0 : stdgo.GoInt)] = (_pBytes_3977789[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    @:check2r _p_3977838.setBytes(_pBytes_3977789);
                    @:check2r _rem_3977857.mod(_p_3977838, _q_3977819);
                    @:check2r _rem_3977857.sub(_rem_3977857, _one_3977878);
                    @:check2r _p_3977838.sub(_p_3977838, _rem_3977857);
                    if ((@:check2r _p_3977838.bitLen() < l_3977510 : Bool)) {
                        _gotoNext = 3978393i32;
                    } else {
                        _gotoNext = 3978417i32;
                    };
                } else if (__value__ == (3978393i32)) {
                    _i_3978143++;
                    _gotoNext = 3978139i32;
                } else if (__value__ == (3978417i32)) {
                    if (!@:check2r _p_3977838.probablyPrime((64 : stdgo.GoInt))) {
                        _gotoNext = 3978449i32;
                    } else {
                        _gotoNext = 3978473i32;
                    };
                } else if (__value__ == (3978449i32)) {
                    _i_3978143++;
                    _gotoNext = 3978139i32;
                } else if (__value__ == (3978473i32)) {
                    (@:checkr _params ?? throw "null pointer dereference").p = _p_3977838;
                    (@:checkr _params ?? throw "null pointer dereference").q = _q_3977819;
                    generatePrimesBreak = true;
                    _gotoNext = 3977933i32;
                } else if (__value__ == (3978535i32)) {
                    _h_3978535 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    @:check2r _h_3978535.setInt64((2i64 : stdgo.GoInt64));
                    _g_3978569 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _pm1_3978589 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_p_3977838, _one_3977878);
                    _e_3978622 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).div(_pm1_3978589, _q_3977819);
                    var __blank__ = 0i32;
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978654i32)) {
                    if (true) {
                        _gotoNext = 3978658i32;
                    } else {
                        _gotoNext = 3978765i32;
                    };
                } else if (__value__ == (3978658i32)) {
                    @:check2r _g_3978569.exp(_h_3978535, _e_3978622, _p_3977838);
                    if (@:check2r _g_3978569.cmp(_one_3977878) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3978698i32;
                    } else {
                        _gotoNext = 3978736i32;
                    };
                } else if (__value__ == (3978698i32)) {
                    @:check2r _h_3978535.add(_h_3978535, _one_3977878);
                    var __blank__ = 0i32;
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978736i32)) {
                    (@:checkr _params ?? throw "null pointer dereference").g = _g_3978569;
                    return (null : stdgo.Error);
                    _gotoNext = 3978654i32;
                } else if (__value__ == (3978765i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
