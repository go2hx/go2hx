package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _requestedUsage_5598678:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5598271:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5598234:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5597906:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5598779:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5598788_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5598675:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5598617:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5598454:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5598463_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5598020:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5597906 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5597906, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5597998i32;
                    } else {
                        _gotoNext = 5598020i32;
                    };
                } else if (__value__ == (5597998i32)) {
                    return false;
                    _gotoNext = 5598020i32;
                } else if (__value__ == (5598020i32)) {
                    _usagesRemaining_5598020 = (_usages_5597906.length);
                    _gotoNext = 5598219i32;
                } else if (__value__ == (5598219i32)) {
                    _i_5598234 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5598230i32;
                } else if (__value__ == (5598230i32)) {
                    if (!nextCertBreak && ((_i_5598234 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5598267i32;
                    } else {
                        _gotoNext = 5599000i32;
                    };
                } else if (__value__ == (5598263i32)) {
                    _i_5598234--;
                    _gotoNext = 5598230i32;
                } else if (__value__ == (5598267i32)) {
                    _cert_5598271 = _chain[(_i_5598234 : stdgo.GoInt)];
                    if (((_cert_5598271.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5598271.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5598357i32;
                    } else {
                        _gotoNext = 5598447i32;
                    };
                } else if (__value__ == (5598357i32)) {
                    _i_5598234--;
                    _gotoNext = 5598230i32;
                } else if (__value__ == (5598447i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5598271.extKeyUsage.length)) {
                        _gotoNext = 5598605i32;
                    } else {
                        _gotoNext = 5598611i32;
                    };
                } else if (__value__ == (5598451i32)) {
                    _i_5598463_0++;
                    _gotoNext = 5598606i32;
                } else if (__value__ == (5598486i32)) {
                    _usage_5598454 = _cert_5598271.extKeyUsage[(_i_5598463_0 : stdgo.GoInt)];
                    if (_usage_5598454 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5598518i32;
                    } else {
                        _gotoNext = 5598451i32;
                    };
                } else if (__value__ == (5598518i32)) {
                    _i_5598234--;
                    _gotoNext = 5598230i32;
                } else if (__value__ == (5598605i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5598271.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5598463_0 = __tmp__0;
                        _usage_5598454 = __tmp__1;
                    };
                    _gotoNext = 5598606i32;
                } else if (__value__ == (5598606i32)) {
                    if (_i_5598463_0 < (_cert_5598271.extKeyUsage.length)) {
                        _gotoNext = 5598486i32;
                    } else {
                        _gotoNext = 5598611i32;
                    };
                } else if (__value__ == (5598611i32)) {
                    _invalidUsage_5598617 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5598649i32;
                } else if (__value__ == (5598649i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5597906.length)) {
                        _gotoNext = 5598992i32;
                    } else {
                        _gotoNext = 5598263i32;
                    };
                } else if (__value__ == (5598675i32)) {
                    _i_5598675++;
                    _gotoNext = 5598993i32;
                } else if (__value__ == (5598709i32)) {
                    _requestedUsage_5598678 = _usages_5597906[(_i_5598675 : stdgo.GoInt)];
                    if (_requestedUsage_5598678 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5598748i32;
                    } else {
                        _gotoNext = 5598772i32;
                    };
                } else if (__value__ == (5598748i32)) {
                    _i_5598675++;
                    _gotoNext = 5598993i32;
                } else if (__value__ == (5598772i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5598271.extKeyUsage.length)) {
                        _gotoNext = 5598887i32;
                    } else {
                        _gotoNext = 5598894i32;
                    };
                } else if (__value__ == (5598776i32)) {
                    _i_5598788_0++;
                    _gotoNext = 5598888i32;
                } else if (__value__ == (5598811i32)) {
                    _usage_5598779 = _cert_5598271.extKeyUsage[(_i_5598788_0 : stdgo.GoInt)];
                    if (_requestedUsage_5598678 == (_usage_5598779)) {
                        _gotoNext = 5598844i32;
                    } else {
                        _gotoNext = 5598776i32;
                    };
                } else if (__value__ == (5598844i32)) {
                    _i_5598675++;
                    _gotoNext = 5598993i32;
                } else if (__value__ == (5598887i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5598271.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5598788_0 = __tmp__0;
                        _usage_5598779 = __tmp__1;
                    };
                    _gotoNext = 5598888i32;
                } else if (__value__ == (5598888i32)) {
                    if (_i_5598788_0 < (_cert_5598271.extKeyUsage.length)) {
                        _gotoNext = 5598811i32;
                    } else {
                        _gotoNext = 5598894i32;
                    };
                } else if (__value__ == (5598894i32)) {
                    _usages_5597906[(_i_5598675 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5598020--;
                    if (_usagesRemaining_5598020 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598967i32;
                    } else {
                        _gotoNext = 5598675i32;
                    };
                } else if (__value__ == (5598967i32)) {
                    return false;
                    _gotoNext = 5598675i32;
                } else if (__value__ == (5598992i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5597906[(0i32 : stdgo.GoInt)];
                        _i_5598675 = __tmp__0;
                        _requestedUsage_5598678 = __tmp__1;
                    };
                    _gotoNext = 5598993i32;
                } else if (__value__ == (5598993i32)) {
                    if (_i_5598675 < (_usages_5597906.length)) {
                        _gotoNext = 5598709i32;
                    } else {
                        _gotoNext = 5598263i32;
                    };
                } else if (__value__ == (5599000i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
