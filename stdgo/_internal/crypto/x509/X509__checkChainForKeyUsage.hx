package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var nextCertBreak = false;
        var _i_5548100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5547886:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5547772:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5548654_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5548541:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5548483:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5548320:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5548645:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5548544:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5548329_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5548137:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5547772 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5547772.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5547864i32;
                    } else {
                        _gotoNext = 5547886i32;
                    };
                } else if (__value__ == (5547864i32)) {
                    return false;
                    _gotoNext = 5547886i32;
                } else if (__value__ == (5547886i32)) {
                    _usagesRemaining_5547886 = (_usages_5547772.length);
                    _gotoNext = 5548085i32;
                } else if (__value__ == (5548085i32)) {
                    _i_5548100 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548096i32)) {
                    if (!nextCertBreak && ((_i_5548100 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5548133i32;
                    } else {
                        _gotoNext = 5548866i32;
                    };
                } else if (__value__ == (5548129i32)) {
                    _i_5548100--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548133i32)) {
                    _cert_5548137 = _chain[(_i_5548100 : stdgo.GoInt)];
                    if (((_cert_5548137.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5548137.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5548223i32;
                    } else {
                        _gotoNext = 5548313i32;
                    };
                } else if (__value__ == (5548223i32)) {
                    _i_5548100--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548313i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5548137.extKeyUsage.length)) {
                        _gotoNext = 5548471i32;
                    } else {
                        _gotoNext = 5548477i32;
                    };
                } else if (__value__ == (5548317i32)) {
                    _i_5548329_0++;
                    _gotoNext = 5548472i32;
                } else if (__value__ == (5548352i32)) {
                    _usage_5548320 = _cert_5548137.extKeyUsage[(_i_5548329_0 : stdgo.GoInt)];
                    if (_usage_5548320 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5548384i32;
                    } else {
                        _gotoNext = 5548317i32;
                    };
                } else if (__value__ == (5548384i32)) {
                    _i_5548100--;
                    _gotoNext = 5548096i32;
                } else if (__value__ == (5548471i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5548137.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5548329_0 = __tmp__0;
                        _usage_5548320 = __tmp__1;
                    };
                    _gotoNext = 5548472i32;
                } else if (__value__ == (5548472i32)) {
                    if (_i_5548329_0 < (_cert_5548137.extKeyUsage.length)) {
                        _gotoNext = 5548352i32;
                    } else {
                        _gotoNext = 5548477i32;
                    };
                } else if (__value__ == (5548477i32)) {
                    _invalidUsage_5548483 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5548515i32;
                } else if (__value__ == (5548515i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5547772.length)) {
                        _gotoNext = 5548858i32;
                    } else {
                        _gotoNext = 5548129i32;
                    };
                } else if (__value__ == (5548541i32)) {
                    _i_5548541++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548575i32)) {
                    _requestedUsage_5548544 = _usages_5547772[(_i_5548541 : stdgo.GoInt)];
                    if (_requestedUsage_5548544 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5548614i32;
                    } else {
                        _gotoNext = 5548638i32;
                    };
                } else if (__value__ == (5548614i32)) {
                    _i_5548541++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548638i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5548137.extKeyUsage.length)) {
                        _gotoNext = 5548753i32;
                    } else {
                        _gotoNext = 5548760i32;
                    };
                } else if (__value__ == (5548642i32)) {
                    _i_5548654_0++;
                    _gotoNext = 5548754i32;
                } else if (__value__ == (5548677i32)) {
                    _usage_5548645 = _cert_5548137.extKeyUsage[(_i_5548654_0 : stdgo.GoInt)];
                    if (_requestedUsage_5548544 == (_usage_5548645)) {
                        _gotoNext = 5548710i32;
                    } else {
                        _gotoNext = 5548642i32;
                    };
                } else if (__value__ == (5548710i32)) {
                    _i_5548541++;
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548753i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5548137.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5548654_0 = __tmp__0;
                        _usage_5548645 = __tmp__1;
                    };
                    _gotoNext = 5548754i32;
                } else if (__value__ == (5548754i32)) {
                    if (_i_5548654_0 < (_cert_5548137.extKeyUsage.length)) {
                        _gotoNext = 5548677i32;
                    } else {
                        _gotoNext = 5548760i32;
                    };
                } else if (__value__ == (5548760i32)) {
                    _usages_5547772[(_i_5548541 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5547886--;
                    if (_usagesRemaining_5547886 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5547772[(0i32 : stdgo.GoInt)];
                        _i_5548541 = __tmp__0;
                        _requestedUsage_5548544 = __tmp__1;
                    };
                    _gotoNext = 5548859i32;
                } else if (__value__ == (5548859i32)) {
                    if (_i_5548541 < (_usages_5547772.length)) {
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
