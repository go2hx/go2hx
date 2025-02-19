package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _i_5630048_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5629723_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5629258i32;
                    } else {
                        _gotoNext = 5629280i32;
                    };
                } else if (__value__ == (5629258i32)) {
                    return false;
                    _gotoNext = 5629280i32;
                } else if (__value__ == (5629280i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5629479i32;
                } else if (__value__ == (5629479i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629490i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5629527i32;
                    } else {
                        _gotoNext = 5630260i32;
                    };
                } else if (__value__ == (5629523i32)) {
                    _i_7--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629527i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5629617i32;
                    } else {
                        _gotoNext = 5629707i32;
                    };
                } else if (__value__ == (5629617i32)) {
                    _i_7--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629707i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629865i32;
                    } else {
                        _gotoNext = 5629871i32;
                    };
                } else if (__value__ == (5629711i32)) {
                    _i_5629723_9++;
                    _gotoNext = 5629866i32;
                } else if (__value__ == (5629746i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5629723_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5629778i32;
                    } else {
                        _gotoNext = 5629711i32;
                    };
                } else if (__value__ == (5629778i32)) {
                    _i_7--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629865i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629723_9 = __tmp__0;
                        _usage_10 = __tmp__1;
                    };
                    _gotoNext = 5629866i32;
                } else if (__value__ == (5629866i32)) {
                    if (_i_5629723_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629746i32;
                    } else {
                        _gotoNext = 5629871i32;
                    };
                } else if (__value__ == (5629871i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5629909i32;
                } else if (__value__ == (5629909i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5630252i32;
                    } else {
                        _gotoNext = 5629523i32;
                    };
                } else if (__value__ == (5629935i32)) {
                    _i_12++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5629969i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5630008i32;
                    } else {
                        _gotoNext = 5630032i32;
                    };
                } else if (__value__ == (5630008i32)) {
                    _i_12++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630032i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630147i32;
                    } else {
                        _gotoNext = 5630154i32;
                    };
                } else if (__value__ == (5630036i32)) {
                    _i_5630048_14++;
                    _gotoNext = 5630148i32;
                } else if (__value__ == (5630071i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5630048_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5630104i32;
                    } else {
                        _gotoNext = 5630036i32;
                    };
                } else if (__value__ == (5630104i32)) {
                    _i_12++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5630048_14 = __tmp__0;
                        _usage_15 = __tmp__1;
                    };
                    _gotoNext = 5630148i32;
                } else if (__value__ == (5630148i32)) {
                    if (_i_5630048_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630071i32;
                    } else {
                        _gotoNext = 5630154i32;
                    };
                } else if (__value__ == (5630154i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5630227i32;
                    } else {
                        _gotoNext = 5629935i32;
                    };
                } else if (__value__ == (5630227i32)) {
                    return false;
                    _gotoNext = 5629935i32;
                } else if (__value__ == (5630252i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = __tmp__0;
                        _requestedUsage_13 = __tmp__1;
                    };
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630253i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5629969i32;
                    } else {
                        _gotoNext = 5629523i32;
                    };
                } else if (__value__ == (5630260i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
