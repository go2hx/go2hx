package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _iterator_5586396_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5586071_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5585606i32;
                    } else {
                        _gotoNext = 5585628i32;
                    };
                } else if (__value__ == (5585606i32)) {
                    return false;
                    _gotoNext = 5585628i32;
                } else if (__value__ == (5585628i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5585827i32;
                } else if (__value__ == (5585827i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5585838i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5585875i32;
                    } else {
                        _gotoNext = 5586608i32;
                    };
                } else if (__value__ == (5585871i32)) {
                    _i_7--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5585875i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5585965i32;
                    } else {
                        _gotoNext = 5586055i32;
                    };
                } else if (__value__ == (5585965i32)) {
                    _i_7--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5586055i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586213i32;
                    } else {
                        _gotoNext = 5586219i32;
                    };
                } else if (__value__ == (5586059i32)) {
                    _iterator_5586071_9++;
                    _gotoNext = 5586214i32;
                } else if (__value__ == (5586094i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5586071_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5586126i32;
                    } else {
                        _gotoNext = 5586059i32;
                    };
                } else if (__value__ == (5586126i32)) {
                    _i_7--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5586213i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5586071_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5586214i32;
                } else if (__value__ == (5586214i32)) {
                    if (_iterator_5586071_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586094i32;
                    } else {
                        _gotoNext = 5586219i32;
                    };
                } else if (__value__ == (5586219i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5586257i32;
                } else if (__value__ == (5586257i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5586600i32;
                    } else {
                        _gotoNext = 5585871i32;
                    };
                } else if (__value__ == (5586283i32)) {
                    _i_12++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586317i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5586356i32;
                    } else {
                        _gotoNext = 5586380i32;
                    };
                } else if (__value__ == (5586356i32)) {
                    _i_12++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586380i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586495i32;
                    } else {
                        _gotoNext = 5586502i32;
                    };
                } else if (__value__ == (5586384i32)) {
                    _iterator_5586396_14++;
                    _gotoNext = 5586496i32;
                } else if (__value__ == (5586419i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5586396_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5586452i32;
                    } else {
                        _gotoNext = 5586384i32;
                    };
                } else if (__value__ == (5586452i32)) {
                    _i_12++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586495i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5586396_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5586496i32;
                } else if (__value__ == (5586496i32)) {
                    if (_iterator_5586396_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586419i32;
                    } else {
                        _gotoNext = 5586502i32;
                    };
                } else if (__value__ == (5586502i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5586575i32;
                    } else {
                        _gotoNext = 5586283i32;
                    };
                } else if (__value__ == (5586575i32)) {
                    return false;
                    _gotoNext = 5586283i32;
                } else if (__value__ == (5586600i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586601i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5586317i32;
                    } else {
                        _gotoNext = 5585871i32;
                    };
                } else if (__value__ == (5586608i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
