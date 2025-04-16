package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i32;
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _iterator_5535362_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5535037_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5534572i32;
                    } else {
                        _gotoNext = 5534594i32;
                    };
                } else if (__value__ == (5534572i32)) {
                    return false;
                    _gotoNext = 5534594i32;
                } else if (__value__ == (5534594i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5534793i32;
                } else if (__value__ == (5534793i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5534804i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5534841i32;
                    } else {
                        _gotoNext = 5535574i32;
                    };
                } else if (__value__ == (5534837i32)) {
                    _i_7--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5534841i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5534931i32;
                    } else {
                        _gotoNext = 5535021i32;
                    };
                } else if (__value__ == (5534931i32)) {
                    _i_7--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5535021i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535179i32;
                    } else {
                        _gotoNext = 5535185i32;
                    };
                } else if (__value__ == (5535025i32)) {
                    _iterator_5535037_9++;
                    _gotoNext = 5535180i32;
                } else if (__value__ == (5535060i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5535037_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5535092i32;
                    } else {
                        _gotoNext = 5535025i32;
                    };
                } else if (__value__ == (5535092i32)) {
                    _i_7--;
                    _gotoNext = 5534804i32;
                } else if (__value__ == (5535179i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5535037_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5535180i32;
                } else if (__value__ == (5535180i32)) {
                    if (_iterator_5535037_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535060i32;
                    } else {
                        _gotoNext = 5535185i32;
                    };
                } else if (__value__ == (5535185i32)) {
                    _gotoNext = 5535223i32;
                } else if (__value__ == (5535223i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5535566i32;
                    } else {
                        _gotoNext = 5534837i32;
                    };
                } else if (__value__ == (5535249i32)) {
                    _i_12++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535283i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5535322i32;
                    } else {
                        _gotoNext = 5535346i32;
                    };
                } else if (__value__ == (5535322i32)) {
                    _i_12++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535346i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535461i32;
                    } else {
                        _gotoNext = 5535468i32;
                    };
                } else if (__value__ == (5535350i32)) {
                    _iterator_5535362_14++;
                    _gotoNext = 5535462i32;
                } else if (__value__ == (5535385i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5535362_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5535418i32;
                    } else {
                        _gotoNext = 5535350i32;
                    };
                } else if (__value__ == (5535418i32)) {
                    _i_12++;
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535461i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5535362_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5535462i32;
                } else if (__value__ == (5535462i32)) {
                    if (_iterator_5535362_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5535385i32;
                    } else {
                        _gotoNext = 5535468i32;
                    };
                } else if (__value__ == (5535468i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5535567i32;
                } else if (__value__ == (5535567i32)) {
                    if (_i_12 < (_usages_5.length)) {
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
