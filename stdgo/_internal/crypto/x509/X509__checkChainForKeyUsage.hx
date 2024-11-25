package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5527221:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5527230_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5526676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5526462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5526348:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5527117:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5527059:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5526905_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5526713:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _requestedUsage_5527120:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5526896:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5526348 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5526348, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5526440i32;
                    } else {
                        _gotoNext = 5526462i32;
                    };
                } else if (__value__ == (5526440i32)) {
                    return false;
                    _gotoNext = 5526462i32;
                } else if (__value__ == (5526462i32)) {
                    _usagesRemaining_5526462 = (_usages_5526348.length);
                    _gotoNext = 5526661i32;
                } else if (__value__ == (5526661i32)) {
                    _i_5526676 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5526672i32;
                } else if (__value__ == (5526672i32)) {
                    if (!nextCertBreak && ((_i_5526676 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5526709i32;
                    } else {
                        _gotoNext = 5527442i32;
                    };
                } else if (__value__ == (5526705i32)) {
                    _i_5526676--;
                    _gotoNext = 5526672i32;
                } else if (__value__ == (5526709i32)) {
                    _cert_5526713 = _chain[(_i_5526676 : stdgo.GoInt)];
                    if (((_cert_5526713.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5526713.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5526799i32;
                    } else {
                        _gotoNext = 5526889i32;
                    };
                } else if (__value__ == (5526799i32)) {
                    _i_5526676--;
                    _gotoNext = 5526672i32;
                } else if (__value__ == (5526889i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5526713.extKeyUsage.length)) {
                        _gotoNext = 5527047i32;
                    } else {
                        _gotoNext = 5527053i32;
                    };
                } else if (__value__ == (5526893i32)) {
                    _i_5526905_0++;
                    _gotoNext = 5527048i32;
                } else if (__value__ == (5526928i32)) {
                    _usage_5526896 = _cert_5526713.extKeyUsage[(_i_5526905_0 : stdgo.GoInt)];
                    if (_usage_5526896 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5526960i32;
                    } else {
                        _gotoNext = 5526893i32;
                    };
                } else if (__value__ == (5526960i32)) {
                    _i_5526676--;
                    _gotoNext = 5526672i32;
                } else if (__value__ == (5527047i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5526713.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5526905_0 = __tmp__0;
                        _usage_5526896 = __tmp__1;
                    };
                    _gotoNext = 5527048i32;
                } else if (__value__ == (5527048i32)) {
                    if (_i_5526905_0 < (_cert_5526713.extKeyUsage.length)) {
                        _gotoNext = 5526928i32;
                    } else {
                        _gotoNext = 5527053i32;
                    };
                } else if (__value__ == (5527053i32)) {
                    _invalidUsage_5527059 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5527091i32;
                } else if (__value__ == (5527091i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5526348.length)) {
                        _gotoNext = 5527434i32;
                    } else {
                        _gotoNext = 5526705i32;
                    };
                } else if (__value__ == (5527117i32)) {
                    _i_5527117++;
                    _gotoNext = 5527435i32;
                } else if (__value__ == (5527151i32)) {
                    _requestedUsage_5527120 = _usages_5526348[(_i_5527117 : stdgo.GoInt)];
                    if (_requestedUsage_5527120 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5527190i32;
                    } else {
                        _gotoNext = 5527214i32;
                    };
                } else if (__value__ == (5527190i32)) {
                    _i_5527117++;
                    _gotoNext = 5527435i32;
                } else if (__value__ == (5527214i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5526713.extKeyUsage.length)) {
                        _gotoNext = 5527329i32;
                    } else {
                        _gotoNext = 5527336i32;
                    };
                } else if (__value__ == (5527218i32)) {
                    _i_5527230_0++;
                    _gotoNext = 5527330i32;
                } else if (__value__ == (5527253i32)) {
                    _usage_5527221 = _cert_5526713.extKeyUsage[(_i_5527230_0 : stdgo.GoInt)];
                    if (_requestedUsage_5527120 == (_usage_5527221)) {
                        _gotoNext = 5527286i32;
                    } else {
                        _gotoNext = 5527218i32;
                    };
                } else if (__value__ == (5527286i32)) {
                    _i_5527117++;
                    _gotoNext = 5527435i32;
                } else if (__value__ == (5527329i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5526713.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5527230_0 = __tmp__0;
                        _usage_5527221 = __tmp__1;
                    };
                    _gotoNext = 5527330i32;
                } else if (__value__ == (5527330i32)) {
                    if (_i_5527230_0 < (_cert_5526713.extKeyUsage.length)) {
                        _gotoNext = 5527253i32;
                    } else {
                        _gotoNext = 5527336i32;
                    };
                } else if (__value__ == (5527336i32)) {
                    _usages_5526348[(_i_5527117 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5526462--;
                    if (_usagesRemaining_5526462 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5527409i32;
                    } else {
                        _gotoNext = 5527117i32;
                    };
                } else if (__value__ == (5527409i32)) {
                    return false;
                    _gotoNext = 5527117i32;
                } else if (__value__ == (5527434i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5526348[(0i32 : stdgo.GoInt)];
                        _i_5527117 = __tmp__0;
                        _requestedUsage_5527120 = __tmp__1;
                    };
                    _gotoNext = 5527435i32;
                } else if (__value__ == (5527435i32)) {
                    if (_i_5527117 < (_usages_5526348.length)) {
                        _gotoNext = 5527151i32;
                    } else {
                        _gotoNext = 5526705i32;
                    };
                } else if (__value__ == (5527442i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
