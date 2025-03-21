package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5495970_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5495645_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5495180i32;
                    } else {
                        _gotoNext = 5495202i32;
                    };
                } else if (__value__ == (5495180i32)) {
                    return false;
                    _gotoNext = 5495202i32;
                } else if (__value__ == (5495202i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5495401i32;
                } else if (__value__ == (5495401i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5495412i32;
                } else if (__value__ == (5495412i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5495449i32;
                    } else {
                        _gotoNext = 5496182i32;
                    };
                } else if (__value__ == (5495445i32)) {
                    _i_7--;
                    _gotoNext = 5495412i32;
                } else if (__value__ == (5495449i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5495539i32;
                    } else {
                        _gotoNext = 5495629i32;
                    };
                } else if (__value__ == (5495539i32)) {
                    _i_7--;
                    _gotoNext = 5495412i32;
                } else if (__value__ == (5495629i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5495787i32;
                    } else {
                        _gotoNext = 5495793i32;
                    };
                } else if (__value__ == (5495633i32)) {
                    _iterator_5495645_9++;
                    _gotoNext = 5495788i32;
                } else if (__value__ == (5495668i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5495645_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5495700i32;
                    } else {
                        _gotoNext = 5495633i32;
                    };
                } else if (__value__ == (5495700i32)) {
                    _i_7--;
                    _gotoNext = 5495412i32;
                } else if (__value__ == (5495787i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5495645_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5495788i32;
                } else if (__value__ == (5495788i32)) {
                    if (_iterator_5495645_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5495668i32;
                    } else {
                        _gotoNext = 5495793i32;
                    };
                } else if (__value__ == (5495793i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5495831i32;
                } else if (__value__ == (5495831i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5496174i32;
                    } else {
                        _gotoNext = 5495445i32;
                    };
                } else if (__value__ == (5495857i32)) {
                    _i_12++;
                    _gotoNext = 5496175i32;
                } else if (__value__ == (5495891i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5495930i32;
                    } else {
                        _gotoNext = 5495954i32;
                    };
                } else if (__value__ == (5495930i32)) {
                    _i_12++;
                    _gotoNext = 5496175i32;
                } else if (__value__ == (5495954i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5496069i32;
                    } else {
                        _gotoNext = 5496076i32;
                    };
                } else if (__value__ == (5495958i32)) {
                    _iterator_5495970_14++;
                    _gotoNext = 5496070i32;
                } else if (__value__ == (5495993i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5495970_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5496026i32;
                    } else {
                        _gotoNext = 5495958i32;
                    };
                } else if (__value__ == (5496026i32)) {
                    _i_12++;
                    _gotoNext = 5496175i32;
                } else if (__value__ == (5496069i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5495970_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5496070i32;
                } else if (__value__ == (5496070i32)) {
                    if (_iterator_5495970_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5495993i32;
                    } else {
                        _gotoNext = 5496076i32;
                    };
                } else if (__value__ == (5496076i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5496149i32;
                    } else {
                        _gotoNext = 5495857i32;
                    };
                } else if (__value__ == (5496149i32)) {
                    return false;
                    _gotoNext = 5495857i32;
                } else if (__value__ == (5496174i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5496175i32;
                } else if (__value__ == (5496175i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5495891i32;
                    } else {
                        _gotoNext = 5495445i32;
                    };
                } else if (__value__ == (5496182i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
