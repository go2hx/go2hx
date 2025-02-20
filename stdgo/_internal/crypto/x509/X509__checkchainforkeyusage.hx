package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5625098_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5624773_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5624308i32;
                    } else {
                        _gotoNext = 5624330i32;
                    };
                } else if (__value__ == (5624308i32)) {
                    return false;
                    _gotoNext = 5624330i32;
                } else if (__value__ == (5624330i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5624529i32;
                } else if (__value__ == (5624529i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5624540i32;
                } else if (__value__ == (5624540i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5624577i32;
                    } else {
                        _gotoNext = 5625310i32;
                    };
                } else if (__value__ == (5624573i32)) {
                    _i_7--;
                    _gotoNext = 5624540i32;
                } else if (__value__ == (5624577i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5624667i32;
                    } else {
                        _gotoNext = 5624757i32;
                    };
                } else if (__value__ == (5624667i32)) {
                    _i_7--;
                    _gotoNext = 5624540i32;
                } else if (__value__ == (5624757i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5624915i32;
                    } else {
                        _gotoNext = 5624921i32;
                    };
                } else if (__value__ == (5624761i32)) {
                    _i_5624773_9++;
                    _gotoNext = 5624916i32;
                } else if (__value__ == (5624796i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5624773_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5624828i32;
                    } else {
                        _gotoNext = 5624761i32;
                    };
                } else if (__value__ == (5624828i32)) {
                    _i_7--;
                    _gotoNext = 5624540i32;
                } else if (__value__ == (5624915i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5624773_9 = __tmp__0;
                        _usage_10 = __tmp__1;
                    };
                    _gotoNext = 5624916i32;
                } else if (__value__ == (5624916i32)) {
                    if (_i_5624773_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5624796i32;
                    } else {
                        _gotoNext = 5624921i32;
                    };
                } else if (__value__ == (5624921i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5624959i32;
                } else if (__value__ == (5624959i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5625302i32;
                    } else {
                        _gotoNext = 5624573i32;
                    };
                } else if (__value__ == (5624985i32)) {
                    _i_12++;
                    _gotoNext = 5625303i32;
                } else if (__value__ == (5625019i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5625058i32;
                    } else {
                        _gotoNext = 5625082i32;
                    };
                } else if (__value__ == (5625058i32)) {
                    _i_12++;
                    _gotoNext = 5625303i32;
                } else if (__value__ == (5625082i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5625197i32;
                    } else {
                        _gotoNext = 5625204i32;
                    };
                } else if (__value__ == (5625086i32)) {
                    _i_5625098_14++;
                    _gotoNext = 5625198i32;
                } else if (__value__ == (5625121i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5625098_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5625154i32;
                    } else {
                        _gotoNext = 5625086i32;
                    };
                } else if (__value__ == (5625154i32)) {
                    _i_12++;
                    _gotoNext = 5625303i32;
                } else if (__value__ == (5625197i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5625098_14 = __tmp__0;
                        _usage_15 = __tmp__1;
                    };
                    _gotoNext = 5625198i32;
                } else if (__value__ == (5625198i32)) {
                    if (_i_5625098_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5625121i32;
                    } else {
                        _gotoNext = 5625204i32;
                    };
                } else if (__value__ == (5625204i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5625277i32;
                    } else {
                        _gotoNext = 5624985i32;
                    };
                } else if (__value__ == (5625277i32)) {
                    return false;
                    _gotoNext = 5624985i32;
                } else if (__value__ == (5625302i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = __tmp__0;
                        _requestedUsage_13 = __tmp__1;
                    };
                    _gotoNext = 5625303i32;
                } else if (__value__ == (5625303i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5625019i32;
                    } else {
                        _gotoNext = 5624573i32;
                    };
                } else if (__value__ == (5625310i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
