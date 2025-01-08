package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _invalidUsage_5515805:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5515642:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5515422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5515208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5515967:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5515976_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5515866:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5515863:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5515651_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5515459:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _usages_5515094:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5515094 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5515094.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515186i32;
                    } else {
                        _gotoNext = 5515208i32;
                    };
                } else if (__value__ == (5515186i32)) {
                    return false;
                    _gotoNext = 5515208i32;
                } else if (__value__ == (5515208i32)) {
                    _usagesRemaining_5515208 = (_usages_5515094.length);
                    _gotoNext = 5515407i32;
                } else if (__value__ == (5515407i32)) {
                    _i_5515422 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5515418i32;
                } else if (__value__ == (5515418i32)) {
                    if (!nextCertBreak && ((_i_5515422 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5515455i32;
                    } else {
                        _gotoNext = 5516188i32;
                    };
                } else if (__value__ == (5515451i32)) {
                    _i_5515422--;
                    _gotoNext = 5515418i32;
                } else if (__value__ == (5515455i32)) {
                    _cert_5515459 = _chain[(_i_5515422 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5515459 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5515545i32;
                    } else {
                        _gotoNext = 5515635i32;
                    };
                } else if (__value__ == (5515545i32)) {
                    _i_5515422--;
                    _gotoNext = 5515418i32;
                } else if (__value__ == (5515635i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5515793i32;
                    } else {
                        _gotoNext = 5515799i32;
                    };
                } else if (__value__ == (5515639i32)) {
                    _i_5515651_0++;
                    _gotoNext = 5515794i32;
                } else if (__value__ == (5515674i32)) {
                    _usage_5515642 = (@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage[(_i_5515651_0 : stdgo.GoInt)];
                    if (_usage_5515642 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5515706i32;
                    } else {
                        _gotoNext = 5515639i32;
                    };
                } else if (__value__ == (5515706i32)) {
                    _i_5515422--;
                    _gotoNext = 5515418i32;
                } else if (__value__ == (5515793i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5515651_0 = __tmp__0;
                        _usage_5515642 = __tmp__1;
                    };
                    _gotoNext = 5515794i32;
                } else if (__value__ == (5515794i32)) {
                    if (_i_5515651_0 < ((@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5515674i32;
                    } else {
                        _gotoNext = 5515799i32;
                    };
                } else if (__value__ == (5515799i32)) {
                    _invalidUsage_5515805 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5515837i32;
                } else if (__value__ == (5515837i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5515094.length)) {
                        _gotoNext = 5516180i32;
                    } else {
                        _gotoNext = 5515451i32;
                    };
                } else if (__value__ == (5515863i32)) {
                    _i_5515863++;
                    _gotoNext = 5516181i32;
                } else if (__value__ == (5515897i32)) {
                    _requestedUsage_5515866 = _usages_5515094[(_i_5515863 : stdgo.GoInt)];
                    if (_requestedUsage_5515866 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5515936i32;
                    } else {
                        _gotoNext = 5515960i32;
                    };
                } else if (__value__ == (5515936i32)) {
                    _i_5515863++;
                    _gotoNext = 5516181i32;
                } else if (__value__ == (5515960i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5516075i32;
                    } else {
                        _gotoNext = 5516082i32;
                    };
                } else if (__value__ == (5515964i32)) {
                    _i_5515976_0++;
                    _gotoNext = 5516076i32;
                } else if (__value__ == (5515999i32)) {
                    _usage_5515967 = (@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage[(_i_5515976_0 : stdgo.GoInt)];
                    if (_requestedUsage_5515866 == (_usage_5515967)) {
                        _gotoNext = 5516032i32;
                    } else {
                        _gotoNext = 5515964i32;
                    };
                } else if (__value__ == (5516032i32)) {
                    _i_5515863++;
                    _gotoNext = 5516181i32;
                } else if (__value__ == (5516075i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5515976_0 = __tmp__0;
                        _usage_5515967 = __tmp__1;
                    };
                    _gotoNext = 5516076i32;
                } else if (__value__ == (5516076i32)) {
                    if (_i_5515976_0 < ((@:checkr _cert_5515459 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5515999i32;
                    } else {
                        _gotoNext = 5516082i32;
                    };
                } else if (__value__ == (5516082i32)) {
                    _usages_5515094[(_i_5515863 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5515208--;
                    if (_usagesRemaining_5515208 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5516155i32;
                    } else {
                        _gotoNext = 5515863i32;
                    };
                } else if (__value__ == (5516155i32)) {
                    return false;
                    _gotoNext = 5515863i32;
                } else if (__value__ == (5516180i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5515094[(0i32 : stdgo.GoInt)];
                        _i_5515863 = __tmp__0;
                        _requestedUsage_5515866 = __tmp__1;
                    };
                    _gotoNext = 5516181i32;
                } else if (__value__ == (5516181i32)) {
                    if (_i_5515863 < (_usages_5515094.length)) {
                        _gotoNext = 5515897i32;
                    } else {
                        _gotoNext = 5515451i32;
                    };
                } else if (__value__ == (5516188i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
