package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usages_5634829:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5635598:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5635377:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5635386_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5635194:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5635157:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5634943:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5635702:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5635711_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5635601:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5635540:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5634829 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5634829, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5634921i32;
                    } else {
                        _gotoNext = 5634943i32;
                    };
                } else if (__value__ == (5634921i32)) {
                    return false;
                    _gotoNext = 5634943i32;
                } else if (__value__ == (5634943i32)) {
                    _usagesRemaining_5634943 = (_usages_5634829.length);
                    _gotoNext = 5635142i32;
                } else if (__value__ == (5635142i32)) {
                    _i_5635157 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635153i32)) {
                    if (!nextCertBreak && ((_i_5635157 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635190i32;
                    } else {
                        _gotoNext = 5635923i32;
                    };
                } else if (__value__ == (5635186i32)) {
                    _i_5635157--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635190i32)) {
                    _cert_5635194 = _chain[(_i_5635157 : stdgo.GoInt)];
                    if (((_cert_5635194.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5635194.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635280i32;
                    } else {
                        _gotoNext = 5635370i32;
                    };
                } else if (__value__ == (5635280i32)) {
                    _i_5635157--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635370i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635194.extKeyUsage.length)) {
                        _gotoNext = 5635528i32;
                    } else {
                        _gotoNext = 5635534i32;
                    };
                } else if (__value__ == (5635374i32)) {
                    _i_5635386_0++;
                    _gotoNext = 5635529i32;
                } else if (__value__ == (5635409i32)) {
                    _usage_5635377 = _cert_5635194.extKeyUsage[(_i_5635386_0 : stdgo.GoInt)];
                    if (_usage_5635377 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635441i32;
                    } else {
                        _gotoNext = 5635374i32;
                    };
                } else if (__value__ == (5635441i32)) {
                    _i_5635157--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635528i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635194.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635386_0 = __tmp__0;
                        _usage_5635377 = __tmp__1;
                    };
                    _gotoNext = 5635529i32;
                } else if (__value__ == (5635529i32)) {
                    if (_i_5635386_0 < (_cert_5635194.extKeyUsage.length)) {
                        _gotoNext = 5635409i32;
                    } else {
                        _gotoNext = 5635534i32;
                    };
                } else if (__value__ == (5635534i32)) {
                    _invalidUsage_5635540 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5635572i32;
                } else if (__value__ == (5635572i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5634829.length)) {
                        _gotoNext = 5635915i32;
                    } else {
                        _gotoNext = 5635186i32;
                    };
                } else if (__value__ == (5635598i32)) {
                    _i_5635598++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635632i32)) {
                    _requestedUsage_5635601 = _usages_5634829[(_i_5635598 : stdgo.GoInt)];
                    if (_requestedUsage_5635601 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635671i32;
                    } else {
                        _gotoNext = 5635695i32;
                    };
                } else if (__value__ == (5635671i32)) {
                    _i_5635598++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635695i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635194.extKeyUsage.length)) {
                        _gotoNext = 5635810i32;
                    } else {
                        _gotoNext = 5635817i32;
                    };
                } else if (__value__ == (5635699i32)) {
                    _i_5635711_0++;
                    _gotoNext = 5635811i32;
                } else if (__value__ == (5635734i32)) {
                    _usage_5635702 = _cert_5635194.extKeyUsage[(_i_5635711_0 : stdgo.GoInt)];
                    if (_requestedUsage_5635601 == (_usage_5635702)) {
                        _gotoNext = 5635767i32;
                    } else {
                        _gotoNext = 5635699i32;
                    };
                } else if (__value__ == (5635767i32)) {
                    _i_5635598++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635810i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635194.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635711_0 = __tmp__0;
                        _usage_5635702 = __tmp__1;
                    };
                    _gotoNext = 5635811i32;
                } else if (__value__ == (5635811i32)) {
                    if (_i_5635711_0 < (_cert_5635194.extKeyUsage.length)) {
                        _gotoNext = 5635734i32;
                    } else {
                        _gotoNext = 5635817i32;
                    };
                } else if (__value__ == (5635817i32)) {
                    _usages_5634829[(_i_5635598 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5634943--;
                    if (_usagesRemaining_5634943 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5635890i32;
                    } else {
                        _gotoNext = 5635598i32;
                    };
                } else if (__value__ == (5635890i32)) {
                    return false;
                    _gotoNext = 5635598i32;
                } else if (__value__ == (5635915i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5634829[(0i32 : stdgo.GoInt)];
                        _i_5635598 = __tmp__0;
                        _requestedUsage_5635601 = __tmp__1;
                    };
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635916i32)) {
                    if (_i_5635598 < (_usages_5634829.length)) {
                        _gotoNext = 5635632i32;
                    } else {
                        _gotoNext = 5635186i32;
                    };
                } else if (__value__ == (5635923i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
