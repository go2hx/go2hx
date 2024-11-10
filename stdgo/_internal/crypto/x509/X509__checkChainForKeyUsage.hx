package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5544858:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5544644:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5545302:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5545241:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5545078:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5545087_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5544895:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5545299:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5544530:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5545403:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5545412_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5544530 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5544530, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5544622i32;
                    } else {
                        _gotoNext = 5544644i32;
                    };
                } else if (__value__ == (5544622i32)) {
                    return false;
                    _gotoNext = 5544644i32;
                } else if (__value__ == (5544644i32)) {
                    _usagesRemaining_5544644 = (_usages_5544530.length);
                    _gotoNext = 5544843i32;
                } else if (__value__ == (5544843i32)) {
                    _i_5544858 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5544854i32;
                } else if (__value__ == (5544854i32)) {
                    if (!nextCertBreak && ((_i_5544858 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5544891i32;
                    } else {
                        _gotoNext = 5545624i32;
                    };
                } else if (__value__ == (5544887i32)) {
                    _i_5544858--;
                    _gotoNext = 5544854i32;
                } else if (__value__ == (5544891i32)) {
                    _cert_5544895 = _chain[(_i_5544858 : stdgo.GoInt)];
                    if (((_cert_5544895.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5544895.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5544981i32;
                    } else {
                        _gotoNext = 5545071i32;
                    };
                } else if (__value__ == (5544981i32)) {
                    _i_5544858--;
                    _gotoNext = 5544854i32;
                } else if (__value__ == (5545071i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5544895.extKeyUsage.length)) {
                        _gotoNext = 5545229i32;
                    } else {
                        _gotoNext = 5545235i32;
                    };
                } else if (__value__ == (5545075i32)) {
                    _i_5545087_0++;
                    _gotoNext = 5545230i32;
                } else if (__value__ == (5545110i32)) {
                    _usage_5545078 = _cert_5544895.extKeyUsage[(_i_5545087_0 : stdgo.GoInt)];
                    if (_usage_5545078 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5545142i32;
                    } else {
                        _gotoNext = 5545075i32;
                    };
                } else if (__value__ == (5545142i32)) {
                    _i_5544858--;
                    _gotoNext = 5544854i32;
                } else if (__value__ == (5545229i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5544895.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5545087_0 = __tmp__0;
                        _usage_5545078 = __tmp__1;
                    };
                    _gotoNext = 5545230i32;
                } else if (__value__ == (5545230i32)) {
                    if (_i_5545087_0 < (_cert_5544895.extKeyUsage.length)) {
                        _gotoNext = 5545110i32;
                    } else {
                        _gotoNext = 5545235i32;
                    };
                } else if (__value__ == (5545235i32)) {
                    _invalidUsage_5545241 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5545273i32;
                } else if (__value__ == (5545273i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5544530.length)) {
                        _gotoNext = 5545616i32;
                    } else {
                        _gotoNext = 5544887i32;
                    };
                } else if (__value__ == (5545299i32)) {
                    _i_5545299++;
                    _gotoNext = 5545617i32;
                } else if (__value__ == (5545333i32)) {
                    _requestedUsage_5545302 = _usages_5544530[(_i_5545299 : stdgo.GoInt)];
                    if (_requestedUsage_5545302 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5545372i32;
                    } else {
                        _gotoNext = 5545396i32;
                    };
                } else if (__value__ == (5545372i32)) {
                    _i_5545299++;
                    _gotoNext = 5545617i32;
                } else if (__value__ == (5545396i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5544895.extKeyUsage.length)) {
                        _gotoNext = 5545511i32;
                    } else {
                        _gotoNext = 5545518i32;
                    };
                } else if (__value__ == (5545400i32)) {
                    _i_5545412_0++;
                    _gotoNext = 5545512i32;
                } else if (__value__ == (5545435i32)) {
                    _usage_5545403 = _cert_5544895.extKeyUsage[(_i_5545412_0 : stdgo.GoInt)];
                    if (_requestedUsage_5545302 == (_usage_5545403)) {
                        _gotoNext = 5545468i32;
                    } else {
                        _gotoNext = 5545400i32;
                    };
                } else if (__value__ == (5545468i32)) {
                    _i_5545299++;
                    _gotoNext = 5545617i32;
                } else if (__value__ == (5545511i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5544895.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5545412_0 = __tmp__0;
                        _usage_5545403 = __tmp__1;
                    };
                    _gotoNext = 5545512i32;
                } else if (__value__ == (5545512i32)) {
                    if (_i_5545412_0 < (_cert_5544895.extKeyUsage.length)) {
                        _gotoNext = 5545435i32;
                    } else {
                        _gotoNext = 5545518i32;
                    };
                } else if (__value__ == (5545518i32)) {
                    _usages_5544530[(_i_5545299 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5544644--;
                    if (_usagesRemaining_5544644 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5545591i32;
                    } else {
                        _gotoNext = 5545299i32;
                    };
                } else if (__value__ == (5545591i32)) {
                    return false;
                    _gotoNext = 5545299i32;
                } else if (__value__ == (5545616i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5544530[(0i32 : stdgo.GoInt)];
                        _i_5545299 = __tmp__0;
                        _requestedUsage_5545302 = __tmp__1;
                    };
                    _gotoNext = 5545617i32;
                } else if (__value__ == (5545617i32)) {
                    if (_i_5545299 < (_usages_5544530.length)) {
                        _gotoNext = 5545333i32;
                    } else {
                        _gotoNext = 5544887i32;
                    };
                } else if (__value__ == (5545624i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
