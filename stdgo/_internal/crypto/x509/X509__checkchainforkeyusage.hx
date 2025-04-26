package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i32;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5548329_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5548654_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5547864i32;
                    } else {
                        _gotoNext = 5547886i32;
                    };
                } else if (__value__ == (5547864i32)) {
                    return false;
                    _gotoNext = 5547886i32;
                } else if (__value__ == (5547886i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5548085i32;
                } else if (__value__ == (5548085i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548096i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5548133i32;
                    } else {
                        _gotoNext = 5548866i32;
                    };
                } else if (__value__ == (5548129i32)) {
                    _i_7--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548133i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5548223i32;
                    } else {
                        _gotoNext = 5548313i32;
                    };
                } else if (__value__ == (5548223i32)) {
                    _i_7--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548313i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5548471i32;
                    } else {
                        _gotoNext = 5548477i32;
                    };
                } else if (__value__ == (5548317i32)) {
                    _iterator_5548329_9++;
                    _gotoNext = 5548472i32;
                } else if (__value__ == (5548352i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5548329_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5548384i32;
                    } else {
                        _gotoNext = 5548317i32;
                    };
                } else if (__value__ == (5548384i32)) {
                    _i_7--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548471i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5548329_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5548472i32;
                } else if (__value__ == (5548472i32)) {
                    if (_iterator_5548329_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5548352i32;
                    } else {
                        _gotoNext = 5548477i32;
                    };
                } else if (__value__ == (5548477i32)) {
                    _gotoNext = 5548515i32;
                } else if (__value__ == (5548515i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5548858i32;
                    } else {
                        _gotoNext = 5548129i32;
                    };
                } else if (__value__ == (5548541i32)) {
                    _i_12++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548575i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5548614i32;
                    } else {
                        _gotoNext = 5548638i32;
                    };
                } else if (__value__ == (5548614i32)) {
                    _i_12++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548638i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5548753i32;
                    } else {
                        _gotoNext = 5548760i32;
                    };
                } else if (__value__ == (5548642i32)) {
                    _iterator_5548654_14++;
                    _gotoNext = 5548754i32;
                } else if (__value__ == (5548677i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5548654_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5548710i32;
                    } else {
                        _gotoNext = 5548642i32;
                    };
                } else if (__value__ == (5548710i32)) {
                    _i_12++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548753i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5548654_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5548754i32;
                } else if (__value__ == (5548754i32)) {
                    if (_iterator_5548654_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5548677i32;
                    } else {
                        _gotoNext = 5548760i32;
                    };
                } else if (__value__ == (5548760i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5548833i32;
                    } else {
                        _gotoNext = 5548541i32;
                    };
                } else if (__value__ == (5548833i32)) {
                    return false;
                    _gotoNext = 5548541i32;
                } else if (__value__ == (5548858i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548859i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5548575i32;
                    } else {
                        _gotoNext = 5548129i32;
                    };
                } else if (__value__ == (5548866i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
