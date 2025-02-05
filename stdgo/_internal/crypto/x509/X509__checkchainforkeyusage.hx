package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _requestedUsage_5535252:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5535249:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5535191:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5535028:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5535037_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5534845:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usagesRemaining_5534594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5535353:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5535362_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5534808:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5534480:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5534480 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5534480.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5534572i32;
                    } else {
                        _gotoNext = 5534594i32;
                    };
                } else if (__value__ == (5534572i32)) {
                    return false;
                    _gotoNext = 5534594i32;
                } else if (__value__ == (5534594i32)) {
                    _usagesRemaining_5534594 = (_usages_5534480.length);
                    _gotoNext = 5534793i32;
                } else if (__value__ == (5534793i32)) {
                    _i_5534808 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5534804i32)) {
                    if (!nextCertBreak && ((_i_5534808 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5534841i32;
                    } else {
                        _gotoNext = 5535574i32;
                    };
                } else if (__value__ == (5534837i32)) {
                    _i_5534808--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5534841i32)) {
                    _cert_5534845 = _chain[(_i_5534808 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5534845 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5534931i32;
                    } else {
                        _gotoNext = 5535021i32;
                    };
                } else if (__value__ == (5534931i32)) {
                    _i_5534808--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5535021i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535179i32;
                    } else {
                        _gotoNext = 5535185i32;
                    };
                } else if (__value__ == (5535025i32)) {
                    _i_5535037_0++;
                    _gotoNext = 5535180i32;
                } else if (__value__ == (5535060i32)) {
                    _usage_5535028 = (@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage[(_i_5535037_0 : stdgo.GoInt)];
                    if (_usage_5535028 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5535092i32;
                    } else {
                        _gotoNext = 5535025i32;
                    };
                } else if (__value__ == (5535092i32)) {
                    _i_5534808--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5535179i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5535037_0 = __tmp__0;
                        _usage_5535028 = __tmp__1;
                    };
                    _gotoNext = 5535180i32;
                } else if (__value__ == (5535180i32)) {
                    if (_i_5535037_0 < ((@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535060i32;
                    } else {
                        _gotoNext = 5535185i32;
                    };
                } else if (__value__ == (5535185i32)) {
                    _invalidUsage_5535191 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5535223i32;
                } else if (__value__ == (5535223i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5534480.length)) {
                        _gotoNext = 5535566i32;
                    } else {
                        _gotoNext = 5534837i32;
                    };
                } else if (__value__ == (5535249i32)) {
                    _i_5535249++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535283i32)) {
                    _requestedUsage_5535252 = _usages_5534480[(_i_5535249 : stdgo.GoInt)];
                    if (_requestedUsage_5535252 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5535322i32;
                    } else {
                        _gotoNext = 5535346i32;
                    };
                } else if (__value__ == (5535322i32)) {
                    _i_5535249++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535346i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535461i32;
                    } else {
                        _gotoNext = 5535468i32;
                    };
                } else if (__value__ == (5535350i32)) {
                    _i_5535362_0++;
                    _gotoNext = 5535462i32;
                } else if (__value__ == (5535385i32)) {
                    _usage_5535353 = (@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage[(_i_5535362_0 : stdgo.GoInt)];
                    if (_requestedUsage_5535252 == (_usage_5535353)) {
                        _gotoNext = 5535418i32;
                    } else {
                        _gotoNext = 5535350i32;
                    };
                } else if (__value__ == (5535418i32)) {
                    _i_5535249++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535461i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5535362_0 = __tmp__0;
                        _usage_5535353 = __tmp__1;
                    };
                    _gotoNext = 5535462i32;
                } else if (__value__ == (5535462i32)) {
                    if (_i_5535362_0 < ((@:checkr _cert_5534845 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535385i32;
                    } else {
                        _gotoNext = 5535468i32;
                    };
                } else if (__value__ == (5535468i32)) {
                    _usages_5534480[(_i_5535249 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5534594--;
                    if (_usagesRemaining_5534594 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5535541i32;
                    } else {
                        _gotoNext = 5535249i32;
                    };
                } else if (__value__ == (5535541i32)) {
                    return false;
                    _gotoNext = 5535249i32;
                } else if (__value__ == (5535566i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5534480[(0i32 : stdgo.GoInt)];
                        _i_5535249 = __tmp__0;
                        _requestedUsage_5535252 = __tmp__1;
                    };
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535567i32)) {
                    if (_i_5535249 < (_usages_5534480.length)) {
                        _gotoNext = 5535283i32;
                    } else {
                        _gotoNext = 5534837i32;
                    };
                } else if (__value__ == (5535574i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
