package stdgo._internal.crypto.dsa;
function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters>, _rand:stdgo._internal.io.Io_Reader.Reader, _sizes:stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes):stdgo.Error {
        stdgo._internal.internal.Macro.controlFlow({
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var n = __1, l = __0;
            {
                final __value__ = _sizes;
                if (__value__ == ((0 : stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes))) {
                    l = (1024 : stdgo.GoInt);
                    n = (160 : stdgo.GoInt);
                } else if (__value__ == ((1 : stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes))) {
                    l = (2048 : stdgo.GoInt);
                    n = (224 : stdgo.GoInt);
                } else if (__value__ == ((2 : stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes))) {
                    l = (2048 : stdgo.GoInt);
                    n = (256 : stdgo.GoInt);
                } else if (__value__ == ((3 : stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes))) {
                    l = (3072 : stdgo.GoInt);
                    n = (256 : stdgo.GoInt);
                } else {
                    return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid ParameterSizes" : stdgo.GoString));
                };
            };
            var _qBytes = (new stdgo.Slice<stdgo.GoUInt8>((n / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _pBytes = (new stdgo.Slice<stdgo.GoUInt8>((l / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _rem = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _one = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            _one.setInt64((1i64 : stdgo.GoInt64));
            @:label("GeneratePrimes") while (true) {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _qBytes), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _qBytes[((_qBytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_qBytes[((_qBytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _qBytes[(0 : stdgo.GoInt)] = (_qBytes[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _q.setBytes(_qBytes);
                if (!_q.probablyPrime((64 : stdgo.GoInt))) {
                    continue;
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < ((4 : stdgo.GoInt) * l : stdgo.GoInt) : Bool), _i++, {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _pBytes), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return _err;
                            };
                        };
                        _pBytes[((_pBytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_pBytes[((_pBytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        _pBytes[(0 : stdgo.GoInt)] = (_pBytes[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        _p.setBytes(_pBytes);
                        _rem.mod(_p, _q);
                        _rem.sub(_rem, _one);
                        _p.sub(_p, _rem);
                        if ((_p.bitLen() < l : Bool)) {
                            continue;
                        };
                        if (!_p.probablyPrime((64 : stdgo.GoInt))) {
                            continue;
                        };
                        _params.p = _p;
                        _params.q = _q;
                        @:jump("GeneratePrimes") break;
                    });
                };
            };
            var _h = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            _h.setInt64((2i64 : stdgo.GoInt64));
            var _g = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _pm1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_p, _one);
            var _e = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).div(_pm1, _q);
            while (true) {
                _g.exp(_h, _e, _p);
                if (_g.cmp(_one) == ((0 : stdgo.GoInt))) {
                    _h.add(_h, _one);
                    continue;
                };
                _params.g = _g;
                return (null : stdgo.Error);
            };
        });
    }
