package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _i_5635711_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5635386_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5634921i32;
                    } else {
                        _gotoNext = 5634943i32;
                    };
                } else if (__value__ == (5634921i32)) {
                    return false;
                    _gotoNext = 5634943i32;
                } else if (__value__ == (5634943i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5635142i32;
                } else if (__value__ == (5635142i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635153i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635190i32;
                    } else {
                        _gotoNext = 5635923i32;
                    };
                } else if (__value__ == (5635186i32)) {
                    _i_7--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635190i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635280i32;
                    } else {
                        _gotoNext = 5635370i32;
                    };
                } else if (__value__ == (5635280i32)) {
                    _i_7--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635370i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635528i32;
                    } else {
                        _gotoNext = 5635534i32;
                    };
                } else if (__value__ == (5635374i32)) {
                    _i_5635386_9++;
                    _gotoNext = 5635529i32;
                } else if (__value__ == (5635409i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5635386_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635441i32;
                    } else {
                        _gotoNext = 5635374i32;
                    };
                } else if (__value__ == (5635441i32)) {
                    _i_7--;
                    _gotoNext = 5635153i32;
                } else if (__value__ == (5635528i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635386_9 = __tmp__0;
                        _usage_10 = __tmp__1;
                    };
                    _gotoNext = 5635529i32;
                } else if (__value__ == (5635529i32)) {
                    if (_i_5635386_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635409i32;
                    } else {
                        _gotoNext = 5635534i32;
                    };
                } else if (__value__ == (5635534i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5635572i32;
                } else if (__value__ == (5635572i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5635915i32;
                    } else {
                        _gotoNext = 5635186i32;
                    };
                } else if (__value__ == (5635598i32)) {
                    _i_12++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635632i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635671i32;
                    } else {
                        _gotoNext = 5635695i32;
                    };
                } else if (__value__ == (5635671i32)) {
                    _i_12++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635695i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635810i32;
                    } else {
                        _gotoNext = 5635817i32;
                    };
                } else if (__value__ == (5635699i32)) {
                    _i_5635711_14++;
                    _gotoNext = 5635811i32;
                } else if (__value__ == (5635734i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5635711_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5635767i32;
                    } else {
                        _gotoNext = 5635699i32;
                    };
                } else if (__value__ == (5635767i32)) {
                    _i_12++;
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635810i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635711_14 = __tmp__0;
                        _usage_15 = __tmp__1;
                    };
                    _gotoNext = 5635811i32;
                } else if (__value__ == (5635811i32)) {
                    if (_i_5635711_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635734i32;
                    } else {
                        _gotoNext = 5635817i32;
                    };
                } else if (__value__ == (5635817i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = __tmp__0;
                        _requestedUsage_13 = __tmp__1;
                    };
                    _gotoNext = 5635916i32;
                } else if (__value__ == (5635916i32)) {
                    if (_i_12 < (_usages_5.length)) {
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
