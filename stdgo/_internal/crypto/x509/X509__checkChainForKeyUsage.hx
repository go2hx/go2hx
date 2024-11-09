package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _requestedUsage_5516125:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5515901:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5515718:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _usages_5515353:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5516226:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5516235_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5516122:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5516064:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5515910_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5515681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5515467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5515353 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5515353, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515445i32;
                    } else {
                        _gotoNext = 5515467i32;
                    };
                } else if (__value__ == (5515445i32)) {
                    return false;
                    _gotoNext = 5515467i32;
                } else if (__value__ == (5515467i32)) {
                    _usagesRemaining_5515467 = (_usages_5515353.length);
                    _gotoNext = 5515666i32;
                } else if (__value__ == (5515666i32)) {
                    _i_5515681 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5515677i32;
                } else if (__value__ == (5515677i32)) {
                    if (!nextCertBreak && ((_i_5515681 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5515714i32;
                    } else {
                        _gotoNext = 5516447i32;
                    };
                } else if (__value__ == (5515710i32)) {
                    _i_5515681--;
                    _gotoNext = 5515677i32;
                } else if (__value__ == (5515714i32)) {
                    _cert_5515718 = _chain[(_i_5515681 : stdgo.GoInt)];
                    if (((_cert_5515718.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5515718.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5515804i32;
                    } else {
                        _gotoNext = 5515894i32;
                    };
                } else if (__value__ == (5515804i32)) {
                    _i_5515681--;
                    _gotoNext = 5515677i32;
                } else if (__value__ == (5515894i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5515718.extKeyUsage.length)) {
                        _gotoNext = 5516052i32;
                    } else {
                        _gotoNext = 5516058i32;
                    };
                } else if (__value__ == (5515898i32)) {
                    _i_5515910_0++;
                    _gotoNext = 5516053i32;
                } else if (__value__ == (5515933i32)) {
                    _usage_5515901 = _cert_5515718.extKeyUsage[(_i_5515910_0 : stdgo.GoInt)];
                    if (_usage_5515901 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5515965i32;
                    } else {
                        _gotoNext = 5515898i32;
                    };
                } else if (__value__ == (5515965i32)) {
                    _i_5515681--;
                    _gotoNext = 5515677i32;
                } else if (__value__ == (5516052i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5515718.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5515910_0 = __tmp__0;
                        _usage_5515901 = __tmp__1;
                    };
                    _gotoNext = 5516053i32;
                } else if (__value__ == (5516053i32)) {
                    if (_i_5515910_0 < (_cert_5515718.extKeyUsage.length)) {
                        _gotoNext = 5515933i32;
                    } else {
                        _gotoNext = 5516058i32;
                    };
                } else if (__value__ == (5516058i32)) {
                    _invalidUsage_5516064 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5516096i32;
                } else if (__value__ == (5516096i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5515353.length)) {
                        _gotoNext = 5516439i32;
                    } else {
                        _gotoNext = 5515710i32;
                    };
                } else if (__value__ == (5516122i32)) {
                    _i_5516122++;
                    _gotoNext = 5516440i32;
                } else if (__value__ == (5516156i32)) {
                    _requestedUsage_5516125 = _usages_5515353[(_i_5516122 : stdgo.GoInt)];
                    if (_requestedUsage_5516125 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5516195i32;
                    } else {
                        _gotoNext = 5516219i32;
                    };
                } else if (__value__ == (5516195i32)) {
                    _i_5516122++;
                    _gotoNext = 5516440i32;
                } else if (__value__ == (5516219i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5515718.extKeyUsage.length)) {
                        _gotoNext = 5516334i32;
                    } else {
                        _gotoNext = 5516341i32;
                    };
                } else if (__value__ == (5516223i32)) {
                    _i_5516235_0++;
                    _gotoNext = 5516335i32;
                } else if (__value__ == (5516258i32)) {
                    _usage_5516226 = _cert_5515718.extKeyUsage[(_i_5516235_0 : stdgo.GoInt)];
                    if (_requestedUsage_5516125 == (_usage_5516226)) {
                        _gotoNext = 5516291i32;
                    } else {
                        _gotoNext = 5516223i32;
                    };
                } else if (__value__ == (5516291i32)) {
                    _i_5516122++;
                    _gotoNext = 5516440i32;
                } else if (__value__ == (5516334i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5515718.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5516235_0 = __tmp__0;
                        _usage_5516226 = __tmp__1;
                    };
                    _gotoNext = 5516335i32;
                } else if (__value__ == (5516335i32)) {
                    if (_i_5516235_0 < (_cert_5515718.extKeyUsage.length)) {
                        _gotoNext = 5516258i32;
                    } else {
                        _gotoNext = 5516341i32;
                    };
                } else if (__value__ == (5516341i32)) {
                    _usages_5515353[(_i_5516122 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5515467--;
                    if (_usagesRemaining_5515467 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5516414i32;
                    } else {
                        _gotoNext = 5516122i32;
                    };
                } else if (__value__ == (5516414i32)) {
                    return false;
                    _gotoNext = 5516122i32;
                } else if (__value__ == (5516439i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5515353[(0i32 : stdgo.GoInt)];
                        _i_5516122 = __tmp__0;
                        _requestedUsage_5516125 = __tmp__1;
                    };
                    _gotoNext = 5516440i32;
                } else if (__value__ == (5516440i32)) {
                    if (_i_5516122 < (_usages_5515353.length)) {
                        _gotoNext = 5516156i32;
                    } else {
                        _gotoNext = 5515710i32;
                    };
                } else if (__value__ == (5516447i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
