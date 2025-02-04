package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_5617906:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5617915_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5617805:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5617581:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5617590_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _usagesRemaining_5617147:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5617802:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5617744:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_5617398:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_5617361:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5617033:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5617033 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5617033.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5617125i32;
                    } else {
                        _gotoNext = 5617147i32;
                    };
                } else if (__value__ == (5617125i32)) {
                    return false;
                    _gotoNext = 5617147i32;
                } else if (__value__ == (5617147i32)) {
                    _usagesRemaining_5617147 = (_usages_5617033.length);
                    _gotoNext = 5617346i32;
                } else if (__value__ == (5617346i32)) {
                    _i_5617361 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5617357i32;
                } else if (__value__ == (5617357i32)) {
                    if (!nextCertBreak && ((_i_5617361 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5617394i32;
                    } else {
                        _gotoNext = 5618127i32;
                    };
                } else if (__value__ == (5617390i32)) {
                    _i_5617361--;
                    _gotoNext = 5617357i32;
                } else if (__value__ == (5617394i32)) {
                    _cert_5617398 = _chain[(_i_5617361 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5617398 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5617484i32;
                    } else {
                        _gotoNext = 5617574i32;
                    };
                } else if (__value__ == (5617484i32)) {
                    _i_5617361--;
                    _gotoNext = 5617357i32;
                } else if (__value__ == (5617574i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5617732i32;
                    } else {
                        _gotoNext = 5617738i32;
                    };
                } else if (__value__ == (5617578i32)) {
                    _i_5617590_0++;
                    _gotoNext = 5617733i32;
                } else if (__value__ == (5617613i32)) {
                    _usage_5617581 = (@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage[(_i_5617590_0 : stdgo.GoInt)];
                    if (_usage_5617581 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5617645i32;
                    } else {
                        _gotoNext = 5617578i32;
                    };
                } else if (__value__ == (5617645i32)) {
                    _i_5617361--;
                    _gotoNext = 5617357i32;
                } else if (__value__ == (5617732i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5617590_0 = __tmp__0;
                        _usage_5617581 = __tmp__1;
                    };
                    _gotoNext = 5617733i32;
                } else if (__value__ == (5617733i32)) {
                    if (_i_5617590_0 < ((@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5617613i32;
                    } else {
                        _gotoNext = 5617738i32;
                    };
                } else if (__value__ == (5617738i32)) {
                    _invalidUsage_5617744 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5617776i32;
                } else if (__value__ == (5617776i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5617033.length)) {
                        _gotoNext = 5618119i32;
                    } else {
                        _gotoNext = 5617390i32;
                    };
                } else if (__value__ == (5617802i32)) {
                    _i_5617802++;
                    _gotoNext = 5618120i32;
                } else if (__value__ == (5617836i32)) {
                    _requestedUsage_5617805 = _usages_5617033[(_i_5617802 : stdgo.GoInt)];
                    if (_requestedUsage_5617805 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5617875i32;
                    } else {
                        _gotoNext = 5617899i32;
                    };
                } else if (__value__ == (5617875i32)) {
                    _i_5617802++;
                    _gotoNext = 5618120i32;
                } else if (__value__ == (5617899i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5618014i32;
                    } else {
                        _gotoNext = 5618021i32;
                    };
                } else if (__value__ == (5617903i32)) {
                    _i_5617915_0++;
                    _gotoNext = 5618015i32;
                } else if (__value__ == (5617938i32)) {
                    _usage_5617906 = (@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage[(_i_5617915_0 : stdgo.GoInt)];
                    if (_requestedUsage_5617805 == (_usage_5617906)) {
                        _gotoNext = 5617971i32;
                    } else {
                        _gotoNext = 5617903i32;
                    };
                } else if (__value__ == (5617971i32)) {
                    _i_5617802++;
                    _gotoNext = 5618120i32;
                } else if (__value__ == (5618014i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5617915_0 = __tmp__0;
                        _usage_5617906 = __tmp__1;
                    };
                    _gotoNext = 5618015i32;
                } else if (__value__ == (5618015i32)) {
                    if (_i_5617915_0 < ((@:checkr _cert_5617398 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5617938i32;
                    } else {
                        _gotoNext = 5618021i32;
                    };
                } else if (__value__ == (5618021i32)) {
                    _usages_5617033[(_i_5617802 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5617147--;
                    if (_usagesRemaining_5617147 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5618094i32;
                    } else {
                        _gotoNext = 5617802i32;
                    };
                } else if (__value__ == (5618094i32)) {
                    return false;
                    _gotoNext = 5617802i32;
                } else if (__value__ == (5618119i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5617033[(0i32 : stdgo.GoInt)];
                        _i_5617802 = __tmp__0;
                        _requestedUsage_5617805 = __tmp__1;
                    };
                    _gotoNext = 5618120i32;
                } else if (__value__ == (5618120i32)) {
                    if (_i_5617802 < (_usages_5617033.length)) {
                        _gotoNext = 5617836i32;
                    } else {
                        _gotoNext = 5617390i32;
                    };
                } else if (__value__ == (5618127i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
