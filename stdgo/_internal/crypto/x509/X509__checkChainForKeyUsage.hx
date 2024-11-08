package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5635970_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5635799:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5635636:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5635645_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5635857:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5635453:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5635416:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5635202:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5635088:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5635961:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5635860:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5635088 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5635088, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5635180i32;
                    } else {
                        _gotoNext = 5635202i32;
                    };
                } else if (__value__ == (5635180i32)) {
                    return false;
                    _gotoNext = 5635202i32;
                } else if (__value__ == (5635202i32)) {
                    _usagesRemaining_5635202 = (_usages_5635088.length);
                    _gotoNext = 5635401i32;
                } else if (__value__ == (5635401i32)) {
                    _i_5635416 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635412i32)) {
                    if (!nextCertBreak && ((_i_5635416 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635449i32;
                    } else {
                        _gotoNext = 5636182i32;
                    };
                } else if (__value__ == (5635445i32)) {
                    _i_5635416--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635449i32)) {
                    _cert_5635453 = _chain[(_i_5635416 : stdgo.GoInt)];
                    if (((_cert_5635453.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5635453.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635539i32;
                    } else {
                        _gotoNext = 5635629i32;
                    };
                } else if (__value__ == (5635539i32)) {
                    _i_5635416--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635629i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635453.extKeyUsage.length)) {
                        _gotoNext = 5635787i32;
                    } else {
                        _gotoNext = 5635793i32;
                    };
                } else if (__value__ == (5635633i32)) {
                    _i_5635645_0++;
                    _gotoNext = 5635788i32;
                } else if (__value__ == (5635668i32)) {
                    _usage_5635636 = _cert_5635453.extKeyUsage[(_i_5635645_0 : stdgo.GoInt)];
                    if (_usage_5635636 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635700i32;
                    } else {
                        _gotoNext = 5635633i32;
                    };
                } else if (__value__ == (5635700i32)) {
                    _i_5635416--;
                    _gotoNext = 5635412i32;
                } else if (__value__ == (5635787i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635453.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635645_0 = __tmp__0;
                        _usage_5635636 = __tmp__1;
                    };
                    _gotoNext = 5635788i32;
                } else if (__value__ == (5635788i32)) {
                    if (_i_5635645_0 < (_cert_5635453.extKeyUsage.length)) {
                        _gotoNext = 5635668i32;
                    } else {
                        _gotoNext = 5635793i32;
                    };
                } else if (__value__ == (5635793i32)) {
                    _invalidUsage_5635799 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5635831i32;
                } else if (__value__ == (5635831i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5635088.length)) {
                        _gotoNext = 5636174i32;
                    } else {
                        _gotoNext = 5635445i32;
                    };
                } else if (__value__ == (5635857i32)) {
                    _i_5635857++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5635891i32)) {
                    _requestedUsage_5635860 = _usages_5635088[(_i_5635857 : stdgo.GoInt)];
                    if (_requestedUsage_5635860 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635930i32;
                    } else {
                        _gotoNext = 5635954i32;
                    };
                } else if (__value__ == (5635930i32)) {
                    _i_5635857++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5635954i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635453.extKeyUsage.length)) {
                        _gotoNext = 5636069i32;
                    } else {
                        _gotoNext = 5636076i32;
                    };
                } else if (__value__ == (5635958i32)) {
                    _i_5635970_0++;
                    _gotoNext = 5636070i32;
                } else if (__value__ == (5635993i32)) {
                    _usage_5635961 = _cert_5635453.extKeyUsage[(_i_5635970_0 : stdgo.GoInt)];
                    if (_requestedUsage_5635860 == (_usage_5635961)) {
                        _gotoNext = 5636026i32;
                    } else {
                        _gotoNext = 5635958i32;
                    };
                } else if (__value__ == (5636026i32)) {
                    _i_5635857++;
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5636069i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635453.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635970_0 = __tmp__0;
                        _usage_5635961 = __tmp__1;
                    };
                    _gotoNext = 5636070i32;
                } else if (__value__ == (5636070i32)) {
                    if (_i_5635970_0 < (_cert_5635453.extKeyUsage.length)) {
                        _gotoNext = 5635993i32;
                    } else {
                        _gotoNext = 5636076i32;
                    };
                } else if (__value__ == (5636076i32)) {
                    _usages_5635088[(_i_5635857 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5635202--;
                    if (_usagesRemaining_5635202 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5635088[(0i32 : stdgo.GoInt)];
                        _i_5635857 = __tmp__0;
                        _requestedUsage_5635860 = __tmp__1;
                    };
                    _gotoNext = 5636175i32;
                } else if (__value__ == (5636175i32)) {
                    if (_i_5635857 < (_usages_5635088.length)) {
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
