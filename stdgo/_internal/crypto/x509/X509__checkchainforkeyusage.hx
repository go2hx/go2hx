package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _invalidUsage_5541113:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usagesRemaining_5540516:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5541275:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5541284_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5540730:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5540402:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _requestedUsage_5541174:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5541171:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5540950:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5540959_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5540767:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5540402 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5540402.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5540494i32;
                    } else {
                        _gotoNext = 5540516i32;
                    };
                } else if (__value__ == (5540494i32)) {
                    return false;
                    _gotoNext = 5540516i32;
                } else if (__value__ == (5540516i32)) {
                    _usagesRemaining_5540516 = (_usages_5540402.length);
                    _gotoNext = 5540715i32;
                } else if (__value__ == (5540715i32)) {
                    _i_5540730 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5540726i32;
                } else if (__value__ == (5540726i32)) {
                    if (!nextCertBreak && ((_i_5540730 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5540763i32;
                    } else {
                        _gotoNext = 5541496i32;
                    };
                } else if (__value__ == (5540759i32)) {
                    _i_5540730--;
                    _gotoNext = 5540726i32;
                } else if (__value__ == (5540763i32)) {
                    _cert_5540767 = _chain[(_i_5540730 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5540767 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5540853i32;
                    } else {
                        _gotoNext = 5540943i32;
                    };
                } else if (__value__ == (5540853i32)) {
                    _i_5540730--;
                    _gotoNext = 5540726i32;
                } else if (__value__ == (5540943i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5541101i32;
                    } else {
                        _gotoNext = 5541107i32;
                    };
                } else if (__value__ == (5540947i32)) {
                    _i_5540959_0++;
                    _gotoNext = 5541102i32;
                } else if (__value__ == (5540982i32)) {
                    _usage_5540950 = (@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage[(_i_5540959_0 : stdgo.GoInt)];
                    if (_usage_5540950 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5541014i32;
                    } else {
                        _gotoNext = 5540947i32;
                    };
                } else if (__value__ == (5541014i32)) {
                    _i_5540730--;
                    _gotoNext = 5540726i32;
                } else if (__value__ == (5541101i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5540959_0 = __tmp__0;
                        _usage_5540950 = __tmp__1;
                    };
                    _gotoNext = 5541102i32;
                } else if (__value__ == (5541102i32)) {
                    if (_i_5540959_0 < ((@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5540982i32;
                    } else {
                        _gotoNext = 5541107i32;
                    };
                } else if (__value__ == (5541107i32)) {
                    _invalidUsage_5541113 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5541145i32;
                } else if (__value__ == (5541145i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5540402.length)) {
                        _gotoNext = 5541488i32;
                    } else {
                        _gotoNext = 5540759i32;
                    };
                } else if (__value__ == (5541171i32)) {
                    _i_5541171++;
                    _gotoNext = 5541489i32;
                } else if (__value__ == (5541205i32)) {
                    _requestedUsage_5541174 = _usages_5540402[(_i_5541171 : stdgo.GoInt)];
                    if (_requestedUsage_5541174 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5541244i32;
                    } else {
                        _gotoNext = 5541268i32;
                    };
                } else if (__value__ == (5541244i32)) {
                    _i_5541171++;
                    _gotoNext = 5541489i32;
                } else if (__value__ == (5541268i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5541383i32;
                    } else {
                        _gotoNext = 5541390i32;
                    };
                } else if (__value__ == (5541272i32)) {
                    _i_5541284_0++;
                    _gotoNext = 5541384i32;
                } else if (__value__ == (5541307i32)) {
                    _usage_5541275 = (@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage[(_i_5541284_0 : stdgo.GoInt)];
                    if (_requestedUsage_5541174 == (_usage_5541275)) {
                        _gotoNext = 5541340i32;
                    } else {
                        _gotoNext = 5541272i32;
                    };
                } else if (__value__ == (5541340i32)) {
                    _i_5541171++;
                    _gotoNext = 5541489i32;
                } else if (__value__ == (5541383i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5541284_0 = __tmp__0;
                        _usage_5541275 = __tmp__1;
                    };
                    _gotoNext = 5541384i32;
                } else if (__value__ == (5541384i32)) {
                    if (_i_5541284_0 < ((@:checkr _cert_5540767 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5541307i32;
                    } else {
                        _gotoNext = 5541390i32;
                    };
                } else if (__value__ == (5541390i32)) {
                    _usages_5540402[(_i_5541171 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5540516--;
                    if (_usagesRemaining_5540516 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5541463i32;
                    } else {
                        _gotoNext = 5541171i32;
                    };
                } else if (__value__ == (5541463i32)) {
                    return false;
                    _gotoNext = 5541171i32;
                } else if (__value__ == (5541488i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5540402[(0i32 : stdgo.GoInt)];
                        _i_5541171 = __tmp__0;
                        _requestedUsage_5541174 = __tmp__1;
                    };
                    _gotoNext = 5541489i32;
                } else if (__value__ == (5541489i32)) {
                    if (_i_5541171 < (_usages_5540402.length)) {
                        _gotoNext = 5541205i32;
                    } else {
                        _gotoNext = 5540759i32;
                    };
                } else if (__value__ == (5541496i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
