package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5583432:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5583220_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5583028:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usage_5583536:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5582991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5582777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5582663:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _i_5583545_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5583435:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_5583374:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5583211:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5582663 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5582663.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5582755i32;
                    } else {
                        _gotoNext = 5582777i32;
                    };
                } else if (__value__ == (5582755i32)) {
                    return false;
                    _gotoNext = 5582777i32;
                } else if (__value__ == (5582777i32)) {
                    _usagesRemaining_5582777 = (_usages_5582663.length);
                    _gotoNext = 5582976i32;
                } else if (__value__ == (5582976i32)) {
                    _i_5582991 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5582987i32;
                } else if (__value__ == (5582987i32)) {
                    if (!nextCertBreak && ((_i_5582991 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5583024i32;
                    } else {
                        _gotoNext = 5583757i32;
                    };
                } else if (__value__ == (5583020i32)) {
                    _i_5582991--;
                    _gotoNext = 5582987i32;
                } else if (__value__ == (5583024i32)) {
                    _cert_5583028 = _chain[(_i_5582991 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5583028 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5583114i32;
                    } else {
                        _gotoNext = 5583204i32;
                    };
                } else if (__value__ == (5583114i32)) {
                    _i_5582991--;
                    _gotoNext = 5582987i32;
                } else if (__value__ == (5583204i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583362i32;
                    } else {
                        _gotoNext = 5583368i32;
                    };
                } else if (__value__ == (5583208i32)) {
                    _i_5583220_0++;
                    _gotoNext = 5583363i32;
                } else if (__value__ == (5583243i32)) {
                    _usage_5583211 = (@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage[(_i_5583220_0 : stdgo.GoInt)];
                    if (_usage_5583211 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5583275i32;
                    } else {
                        _gotoNext = 5583208i32;
                    };
                } else if (__value__ == (5583275i32)) {
                    _i_5582991--;
                    _gotoNext = 5582987i32;
                } else if (__value__ == (5583362i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5583220_0 = __tmp__0;
                        _usage_5583211 = __tmp__1;
                    };
                    _gotoNext = 5583363i32;
                } else if (__value__ == (5583363i32)) {
                    if (_i_5583220_0 < ((@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583243i32;
                    } else {
                        _gotoNext = 5583368i32;
                    };
                } else if (__value__ == (5583368i32)) {
                    _invalidUsage_5583374 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5583406i32;
                } else if (__value__ == (5583406i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5582663.length)) {
                        _gotoNext = 5583749i32;
                    } else {
                        _gotoNext = 5583020i32;
                    };
                } else if (__value__ == (5583432i32)) {
                    _i_5583432++;
                    _gotoNext = 5583750i32;
                } else if (__value__ == (5583466i32)) {
                    _requestedUsage_5583435 = _usages_5582663[(_i_5583432 : stdgo.GoInt)];
                    if (_requestedUsage_5583435 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5583505i32;
                    } else {
                        _gotoNext = 5583529i32;
                    };
                } else if (__value__ == (5583505i32)) {
                    _i_5583432++;
                    _gotoNext = 5583750i32;
                } else if (__value__ == (5583529i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583644i32;
                    } else {
                        _gotoNext = 5583651i32;
                    };
                } else if (__value__ == (5583533i32)) {
                    _i_5583545_0++;
                    _gotoNext = 5583645i32;
                } else if (__value__ == (5583568i32)) {
                    _usage_5583536 = (@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage[(_i_5583545_0 : stdgo.GoInt)];
                    if (_requestedUsage_5583435 == (_usage_5583536)) {
                        _gotoNext = 5583601i32;
                    } else {
                        _gotoNext = 5583533i32;
                    };
                } else if (__value__ == (5583601i32)) {
                    _i_5583432++;
                    _gotoNext = 5583750i32;
                } else if (__value__ == (5583644i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5583545_0 = __tmp__0;
                        _usage_5583536 = __tmp__1;
                    };
                    _gotoNext = 5583645i32;
                } else if (__value__ == (5583645i32)) {
                    if (_i_5583545_0 < ((@:checkr _cert_5583028 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583568i32;
                    } else {
                        _gotoNext = 5583651i32;
                    };
                } else if (__value__ == (5583651i32)) {
                    _usages_5582663[(_i_5583432 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5582777--;
                    if (_usagesRemaining_5582777 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5583724i32;
                    } else {
                        _gotoNext = 5583432i32;
                    };
                } else if (__value__ == (5583724i32)) {
                    return false;
                    _gotoNext = 5583432i32;
                } else if (__value__ == (5583749i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5582663[(0i32 : stdgo.GoInt)];
                        _i_5583432 = __tmp__0;
                        _requestedUsage_5583435 = __tmp__1;
                    };
                    _gotoNext = 5583750i32;
                } else if (__value__ == (5583750i32)) {
                    if (_i_5583432 < (_usages_5582663.length)) {
                        _gotoNext = 5583466i32;
                    } else {
                        _gotoNext = 5583020i32;
                    };
                } else if (__value__ == (5583757i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
