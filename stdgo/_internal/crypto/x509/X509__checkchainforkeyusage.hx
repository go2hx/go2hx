package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5490048_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5489935:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5489494:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5489714:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5489723_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5489531:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usagesRemaining_5489280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5489166:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_5490039:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_5489938:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_5489877:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5489166 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5489166.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5489258i32;
                    } else {
                        _gotoNext = 5489280i32;
                    };
                } else if (__value__ == (5489258i32)) {
                    return false;
                    _gotoNext = 5489280i32;
                } else if (__value__ == (5489280i32)) {
                    _usagesRemaining_5489280 = (_usages_5489166.length);
                    _gotoNext = 5489479i32;
                } else if (__value__ == (5489479i32)) {
                    _i_5489494 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5489490i32;
                } else if (__value__ == (5489490i32)) {
                    if (!nextCertBreak && ((_i_5489494 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5489527i32;
                    } else {
                        _gotoNext = 5490260i32;
                    };
                } else if (__value__ == (5489523i32)) {
                    _i_5489494--;
                    _gotoNext = 5489490i32;
                } else if (__value__ == (5489527i32)) {
                    _cert_5489531 = _chain[(_i_5489494 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5489531 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5489617i32;
                    } else {
                        _gotoNext = 5489707i32;
                    };
                } else if (__value__ == (5489617i32)) {
                    _i_5489494--;
                    _gotoNext = 5489490i32;
                } else if (__value__ == (5489707i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5489865i32;
                    } else {
                        _gotoNext = 5489871i32;
                    };
                } else if (__value__ == (5489711i32)) {
                    _i_5489723_0++;
                    _gotoNext = 5489866i32;
                } else if (__value__ == (5489746i32)) {
                    _usage_5489714 = (@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage[(_i_5489723_0 : stdgo.GoInt)];
                    if (_usage_5489714 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5489778i32;
                    } else {
                        _gotoNext = 5489711i32;
                    };
                } else if (__value__ == (5489778i32)) {
                    _i_5489494--;
                    _gotoNext = 5489490i32;
                } else if (__value__ == (5489865i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5489723_0 = __tmp__0;
                        _usage_5489714 = __tmp__1;
                    };
                    _gotoNext = 5489866i32;
                } else if (__value__ == (5489866i32)) {
                    if (_i_5489723_0 < ((@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5489746i32;
                    } else {
                        _gotoNext = 5489871i32;
                    };
                } else if (__value__ == (5489871i32)) {
                    _invalidUsage_5489877 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5489909i32;
                } else if (__value__ == (5489909i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5489166.length)) {
                        _gotoNext = 5490252i32;
                    } else {
                        _gotoNext = 5489523i32;
                    };
                } else if (__value__ == (5489935i32)) {
                    _i_5489935++;
                    _gotoNext = 5490253i32;
                } else if (__value__ == (5489969i32)) {
                    _requestedUsage_5489938 = _usages_5489166[(_i_5489935 : stdgo.GoInt)];
                    if (_requestedUsage_5489938 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5490008i32;
                    } else {
                        _gotoNext = 5490032i32;
                    };
                } else if (__value__ == (5490008i32)) {
                    _i_5489935++;
                    _gotoNext = 5490253i32;
                } else if (__value__ == (5490032i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5490147i32;
                    } else {
                        _gotoNext = 5490154i32;
                    };
                } else if (__value__ == (5490036i32)) {
                    _i_5490048_0++;
                    _gotoNext = 5490148i32;
                } else if (__value__ == (5490071i32)) {
                    _usage_5490039 = (@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage[(_i_5490048_0 : stdgo.GoInt)];
                    if (_requestedUsage_5489938 == (_usage_5490039)) {
                        _gotoNext = 5490104i32;
                    } else {
                        _gotoNext = 5490036i32;
                    };
                } else if (__value__ == (5490104i32)) {
                    _i_5489935++;
                    _gotoNext = 5490253i32;
                } else if (__value__ == (5490147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5490048_0 = __tmp__0;
                        _usage_5490039 = __tmp__1;
                    };
                    _gotoNext = 5490148i32;
                } else if (__value__ == (5490148i32)) {
                    if (_i_5490048_0 < ((@:checkr _cert_5489531 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5490071i32;
                    } else {
                        _gotoNext = 5490154i32;
                    };
                } else if (__value__ == (5490154i32)) {
                    _usages_5489166[(_i_5489935 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5489280--;
                    if (_usagesRemaining_5489280 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5490227i32;
                    } else {
                        _gotoNext = 5489935i32;
                    };
                } else if (__value__ == (5490227i32)) {
                    return false;
                    _gotoNext = 5489935i32;
                } else if (__value__ == (5490252i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5489166[(0i32 : stdgo.GoInt)];
                        _i_5489935 = __tmp__0;
                        _requestedUsage_5489938 = __tmp__1;
                    };
                    _gotoNext = 5490253i32;
                } else if (__value__ == (5490253i32)) {
                    if (_i_5489935 < (_usages_5489166.length)) {
                        _gotoNext = 5489969i32;
                    } else {
                        _gotoNext = 5489523i32;
                    };
                } else if (__value__ == (5490260i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
