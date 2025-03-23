package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _iterator_5635970_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5635645_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
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
                        _gotoNext = 5635180i32;
                    } else {
                        _gotoNext = 5635202i32;
                    };
                } else if (__value__ == (5635180i32)) {
                    return false;
                    _gotoNext = 5635202i32;
                } else if (__value__ == (5635202i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5635401i32;
                } else if (__value__ == (5635401i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635412i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635449i32;
                    } else {
                        _gotoNext = 5636182i32;
                    };
                } else if (__value__ == (5635445i32)) {
                    _i_7--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635449i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635539i32;
                    } else {
                        _gotoNext = 5635629i32;
                    };
                } else if (__value__ == (5635539i32)) {
                    _i_7--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635629i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635787i32;
                    } else {
                        _gotoNext = 5635793i32;
                    };
                } else if (__value__ == (5635633i32)) {
                    _iterator_5635645_9++;
                    _gotoNext = 5635788i32;
                } else if (__value__ == (5635668i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5635645_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635700i32;
                    } else {
                        _gotoNext = 5635633i32;
                    };
                } else if (__value__ == (5635700i32)) {
                    _i_7--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635787i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5635645_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5635788i32;
                } else if (__value__ == (5635788i32)) {
                    if (_iterator_5635645_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635668i32;
                    } else {
                        _gotoNext = 5635793i32;
                    };
                } else if (__value__ == (5635793i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5635831i32;
                } else if (__value__ == (5635831i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5636174i32;
                    } else {
                        _gotoNext = 5635445i32;
                    };
                } else if (__value__ == (5635857i32)) {
                    _i_12++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5635891i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635930i32;
                    } else {
                        _gotoNext = 5635954i32;
                    };
                } else if (__value__ == (5635930i32)) {
                    _i_12++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5635954i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5636069i32;
                    } else {
                        _gotoNext = 5636076i32;
                    };
                } else if (__value__ == (5635958i32)) {
                    _iterator_5635970_14++;
                    _gotoNext = 5636070i32;
                } else if (__value__ == (5635993i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5635970_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5636026i32;
                    } else {
                        _gotoNext = 5635958i32;
                    };
                } else if (__value__ == (5636026i32)) {
                    _i_12++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5636069i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5635970_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5636070i32;
                } else if (__value__ == (5636070i32)) {
                    if (_iterator_5635970_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635993i32;
                    } else {
                        _gotoNext = 5636076i32;
                    };
                } else if (__value__ == (5636076i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5636149i32;
                    } else {
                        _gotoNext = 5635857i32;
                    };
                } else if (__value__ == (5636149i32)) {
                    return false;
                    _gotoNext = 5635857i32;
                } else if (__value__ == (5636174i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5636175i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5635891i32;
                    } else {
                        _gotoNext = 5635445i32;
                    };
                } else if (__value__ == (5636182i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
