package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_5542139:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5542148_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _usages_5541591:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_5542464:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5542473_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5542302:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_5541956:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_5541919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5541705:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5542363:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5542360:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5541591 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5541591.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5541683i32;
                    } else {
                        _gotoNext = 5541705i32;
                    };
                } else if (__value__ == (5541683i32)) {
                    return false;
                    _gotoNext = 5541705i32;
                } else if (__value__ == (5541705i32)) {
                    _usagesRemaining_5541705 = (_usages_5541591.length);
                    _gotoNext = 5541904i32;
                } else if (__value__ == (5541904i32)) {
                    _i_5541919 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5541915i32;
                } else if (__value__ == (5541915i32)) {
                    if (!nextCertBreak && ((_i_5541919 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5541952i32;
                    } else {
                        _gotoNext = 5542685i32;
                    };
                } else if (__value__ == (5541948i32)) {
                    _i_5541919--;
                    _gotoNext = 5541915i32;
                } else if (__value__ == (5541952i32)) {
                    _cert_5541956 = _chain[(_i_5541919 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5541956 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5542042i32;
                    } else {
                        _gotoNext = 5542132i32;
                    };
                } else if (__value__ == (5542042i32)) {
                    _i_5541919--;
                    _gotoNext = 5541915i32;
                } else if (__value__ == (5542132i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5542290i32;
                    } else {
                        _gotoNext = 5542296i32;
                    };
                } else if (__value__ == (5542136i32)) {
                    _i_5542148_0++;
                    _gotoNext = 5542291i32;
                } else if (__value__ == (5542171i32)) {
                    _usage_5542139 = (@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage[(_i_5542148_0 : stdgo.GoInt)];
                    if (_usage_5542139 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5542203i32;
                    } else {
                        _gotoNext = 5542136i32;
                    };
                } else if (__value__ == (5542203i32)) {
                    _i_5541919--;
                    _gotoNext = 5541915i32;
                } else if (__value__ == (5542290i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5542148_0 = __tmp__0;
                        _usage_5542139 = __tmp__1;
                    };
                    _gotoNext = 5542291i32;
                } else if (__value__ == (5542291i32)) {
                    if (_i_5542148_0 < ((@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5542171i32;
                    } else {
                        _gotoNext = 5542296i32;
                    };
                } else if (__value__ == (5542296i32)) {
                    _invalidUsage_5542302 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5542334i32;
                } else if (__value__ == (5542334i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5541591.length)) {
                        _gotoNext = 5542677i32;
                    } else {
                        _gotoNext = 5541948i32;
                    };
                } else if (__value__ == (5542360i32)) {
                    _i_5542360++;
                    _gotoNext = 5542678i32;
                } else if (__value__ == (5542394i32)) {
                    _requestedUsage_5542363 = _usages_5541591[(_i_5542360 : stdgo.GoInt)];
                    if (_requestedUsage_5542363 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5542433i32;
                    } else {
                        _gotoNext = 5542457i32;
                    };
                } else if (__value__ == (5542433i32)) {
                    _i_5542360++;
                    _gotoNext = 5542678i32;
                } else if (__value__ == (5542457i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5542572i32;
                    } else {
                        _gotoNext = 5542579i32;
                    };
                } else if (__value__ == (5542461i32)) {
                    _i_5542473_0++;
                    _gotoNext = 5542573i32;
                } else if (__value__ == (5542496i32)) {
                    _usage_5542464 = (@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage[(_i_5542473_0 : stdgo.GoInt)];
                    if (_requestedUsage_5542363 == (_usage_5542464)) {
                        _gotoNext = 5542529i32;
                    } else {
                        _gotoNext = 5542461i32;
                    };
                } else if (__value__ == (5542529i32)) {
                    _i_5542360++;
                    _gotoNext = 5542678i32;
                } else if (__value__ == (5542572i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5542473_0 = __tmp__0;
                        _usage_5542464 = __tmp__1;
                    };
                    _gotoNext = 5542573i32;
                } else if (__value__ == (5542573i32)) {
                    if (_i_5542473_0 < ((@:checkr _cert_5541956 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5542496i32;
                    } else {
                        _gotoNext = 5542579i32;
                    };
                } else if (__value__ == (5542579i32)) {
                    _usages_5541591[(_i_5542360 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5541705--;
                    if (_usagesRemaining_5541705 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5542652i32;
                    } else {
                        _gotoNext = 5542360i32;
                    };
                } else if (__value__ == (5542652i32)) {
                    return false;
                    _gotoNext = 5542360i32;
                } else if (__value__ == (5542677i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5541591[(0i32 : stdgo.GoInt)];
                        _i_5542360 = __tmp__0;
                        _requestedUsage_5542363 = __tmp__1;
                    };
                    _gotoNext = 5542678i32;
                } else if (__value__ == (5542678i32)) {
                    if (_i_5542360 < (_usages_5541591.length)) {
                        _gotoNext = 5542394i32;
                    } else {
                        _gotoNext = 5541948i32;
                    };
                } else if (__value__ == (5542685i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
