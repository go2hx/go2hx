package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_5586387:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5586396_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5586283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5586225:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5586071_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5585628:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5585514:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _requestedUsage_5586286:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5586062:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_5585879:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5585842:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5585514 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5585514.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5585606i32;
                    } else {
                        _gotoNext = 5585628i32;
                    };
                } else if (__value__ == (5585606i32)) {
                    return false;
                    _gotoNext = 5585628i32;
                } else if (__value__ == (5585628i32)) {
                    _usagesRemaining_5585628 = (_usages_5585514.length);
                    _gotoNext = 5585827i32;
                } else if (__value__ == (5585827i32)) {
                    _i_5585842 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5585838i32)) {
                    if (!nextCertBreak && ((_i_5585842 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5585875i32;
                    } else {
                        _gotoNext = 5586608i32;
                    };
                } else if (__value__ == (5585871i32)) {
                    _i_5585842--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5585875i32)) {
                    _cert_5585879 = _chain[(_i_5585842 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5585879 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5585965i32;
                    } else {
                        _gotoNext = 5586055i32;
                    };
                } else if (__value__ == (5585965i32)) {
                    _i_5585842--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5586055i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586213i32;
                    } else {
                        _gotoNext = 5586219i32;
                    };
                } else if (__value__ == (5586059i32)) {
                    _i_5586071_0++;
                    _gotoNext = 5586214i32;
                } else if (__value__ == (5586094i32)) {
                    _usage_5586062 = (@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage[(_i_5586071_0 : stdgo.GoInt)];
                    if (_usage_5586062 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5586126i32;
                    } else {
                        _gotoNext = 5586059i32;
                    };
                } else if (__value__ == (5586126i32)) {
                    _i_5585842--;
                    _gotoNext = 5585838i32;
                } else if (__value__ == (5586213i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5586071_0 = __tmp__0;
                        _usage_5586062 = __tmp__1;
                    };
                    _gotoNext = 5586214i32;
                } else if (__value__ == (5586214i32)) {
                    if (_i_5586071_0 < ((@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586094i32;
                    } else {
                        _gotoNext = 5586219i32;
                    };
                } else if (__value__ == (5586219i32)) {
                    _invalidUsage_5586225 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5586257i32;
                } else if (__value__ == (5586257i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5585514.length)) {
                        _gotoNext = 5586600i32;
                    } else {
                        _gotoNext = 5585871i32;
                    };
                } else if (__value__ == (5586283i32)) {
                    _i_5586283++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586317i32)) {
                    _requestedUsage_5586286 = _usages_5585514[(_i_5586283 : stdgo.GoInt)];
                    if (_requestedUsage_5586286 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5586356i32;
                    } else {
                        _gotoNext = 5586380i32;
                    };
                } else if (__value__ == (5586356i32)) {
                    _i_5586283++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586380i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586495i32;
                    } else {
                        _gotoNext = 5586502i32;
                    };
                } else if (__value__ == (5586384i32)) {
                    _i_5586396_0++;
                    _gotoNext = 5586496i32;
                } else if (__value__ == (5586419i32)) {
                    _usage_5586387 = (@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage[(_i_5586396_0 : stdgo.GoInt)];
                    if (_requestedUsage_5586286 == (_usage_5586387)) {
                        _gotoNext = 5586452i32;
                    } else {
                        _gotoNext = 5586384i32;
                    };
                } else if (__value__ == (5586452i32)) {
                    _i_5586283++;
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586495i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5586396_0 = __tmp__0;
                        _usage_5586387 = __tmp__1;
                    };
                    _gotoNext = 5586496i32;
                } else if (__value__ == (5586496i32)) {
                    if (_i_5586396_0 < ((@:checkr _cert_5585879 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5586419i32;
                    } else {
                        _gotoNext = 5586502i32;
                    };
                } else if (__value__ == (5586502i32)) {
                    _usages_5585514[(_i_5586283 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5585628--;
                    if (_usagesRemaining_5585628 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5585514[(0i32 : stdgo.GoInt)];
                        _i_5586283 = __tmp__0;
                        _requestedUsage_5586286 = __tmp__1;
                    };
                    _gotoNext = 5586601i32;
                } else if (__value__ == (5586601i32)) {
                    if (_i_5586283 < (_usages_5585514.length)) {
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
