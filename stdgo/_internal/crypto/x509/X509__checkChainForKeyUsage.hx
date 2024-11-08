package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5625285_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5625114:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5624951:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5624768:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5624517:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5625276:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5625175:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5625172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5624960_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5624731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5624403:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5624403 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5624403, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5624495i32;
                    } else {
                        _gotoNext = 5624517i32;
                    };
                } else if (__value__ == (5624495i32)) {
                    return false;
                    _gotoNext = 5624517i32;
                } else if (__value__ == (5624517i32)) {
                    _usagesRemaining_5624517 = (_usages_5624403.length);
                    _gotoNext = 5624716i32;
                } else if (__value__ == (5624716i32)) {
                    _i_5624731 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5624727i32;
                } else if (__value__ == (5624727i32)) {
                    if (!nextCertBreak && ((_i_5624731 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5624764i32;
                    } else {
                        _gotoNext = 5625497i32;
                    };
                } else if (__value__ == (5624760i32)) {
                    _i_5624731--;
                    _gotoNext = 5624727i32;
                } else if (__value__ == (5624764i32)) {
                    _cert_5624768 = _chain[(_i_5624731 : stdgo.GoInt)];
                    if (((_cert_5624768.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5624768.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5624854i32;
                    } else {
                        _gotoNext = 5624944i32;
                    };
                } else if (__value__ == (5624854i32)) {
                    _i_5624731--;
                    _gotoNext = 5624727i32;
                } else if (__value__ == (5624944i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5624768.extKeyUsage.length)) {
                        _gotoNext = 5625102i32;
                    } else {
                        _gotoNext = 5625108i32;
                    };
                } else if (__value__ == (5624948i32)) {
                    _i_5624960_0++;
                    _gotoNext = 5625103i32;
                } else if (__value__ == (5624983i32)) {
                    _usage_5624951 = _cert_5624768.extKeyUsage[(_i_5624960_0 : stdgo.GoInt)];
                    if (_usage_5624951 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5625015i32;
                    } else {
                        _gotoNext = 5624948i32;
                    };
                } else if (__value__ == (5625015i32)) {
                    _i_5624731--;
                    _gotoNext = 5624727i32;
                } else if (__value__ == (5625102i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5624768.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5624960_0 = __tmp__0;
                        _usage_5624951 = __tmp__1;
                    };
                    _gotoNext = 5625103i32;
                } else if (__value__ == (5625103i32)) {
                    if (_i_5624960_0 < (_cert_5624768.extKeyUsage.length)) {
                        _gotoNext = 5624983i32;
                    } else {
                        _gotoNext = 5625108i32;
                    };
                } else if (__value__ == (5625108i32)) {
                    _invalidUsage_5625114 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5625146i32;
                } else if (__value__ == (5625146i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5624403.length)) {
                        _gotoNext = 5625489i32;
                    } else {
                        _gotoNext = 5624760i32;
                    };
                } else if (__value__ == (5625172i32)) {
                    _i_5625172++;
                    _gotoNext = 5625490i32;
                } else if (__value__ == (5625206i32)) {
                    _requestedUsage_5625175 = _usages_5624403[(_i_5625172 : stdgo.GoInt)];
                    if (_requestedUsage_5625175 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5625245i32;
                    } else {
                        _gotoNext = 5625269i32;
                    };
                } else if (__value__ == (5625245i32)) {
                    _i_5625172++;
                    _gotoNext = 5625490i32;
                } else if (__value__ == (5625269i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5624768.extKeyUsage.length)) {
                        _gotoNext = 5625384i32;
                    } else {
                        _gotoNext = 5625391i32;
                    };
                } else if (__value__ == (5625273i32)) {
                    _i_5625285_0++;
                    _gotoNext = 5625385i32;
                } else if (__value__ == (5625308i32)) {
                    _usage_5625276 = _cert_5624768.extKeyUsage[(_i_5625285_0 : stdgo.GoInt)];
                    if (_requestedUsage_5625175 == (_usage_5625276)) {
                        _gotoNext = 5625341i32;
                    } else {
                        _gotoNext = 5625273i32;
                    };
                } else if (__value__ == (5625341i32)) {
                    _i_5625172++;
                    _gotoNext = 5625490i32;
                } else if (__value__ == (5625384i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5624768.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5625285_0 = __tmp__0;
                        _usage_5625276 = __tmp__1;
                    };
                    _gotoNext = 5625385i32;
                } else if (__value__ == (5625385i32)) {
                    if (_i_5625285_0 < (_cert_5624768.extKeyUsage.length)) {
                        _gotoNext = 5625308i32;
                    } else {
                        _gotoNext = 5625391i32;
                    };
                } else if (__value__ == (5625391i32)) {
                    _usages_5624403[(_i_5625172 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5624517--;
                    if (_usagesRemaining_5624517 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5625464i32;
                    } else {
                        _gotoNext = 5625172i32;
                    };
                } else if (__value__ == (5625464i32)) {
                    return false;
                    _gotoNext = 5625172i32;
                } else if (__value__ == (5625489i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5624403[(0i32 : stdgo.GoInt)];
                        _i_5625172 = __tmp__0;
                        _requestedUsage_5625175 = __tmp__1;
                    };
                    _gotoNext = 5625490i32;
                } else if (__value__ == (5625490i32)) {
                    if (_i_5625172 < (_usages_5624403.length)) {
                        _gotoNext = 5625206i32;
                    } else {
                        _gotoNext = 5624760i32;
                    };
                } else if (__value__ == (5625497i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
