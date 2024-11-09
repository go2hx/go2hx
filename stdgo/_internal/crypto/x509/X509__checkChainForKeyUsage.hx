package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5547486:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5547495_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5547324:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5547161:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5547170_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5547385:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5547382:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5546978:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5546941:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5546727:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5546613:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5546613 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5546613, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5546705i32;
                    } else {
                        _gotoNext = 5546727i32;
                    };
                } else if (__value__ == (5546705i32)) {
                    return false;
                    _gotoNext = 5546727i32;
                } else if (__value__ == (5546727i32)) {
                    _usagesRemaining_5546727 = (_usages_5546613.length);
                    _gotoNext = 5546926i32;
                } else if (__value__ == (5546926i32)) {
                    _i_5546941 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5546937i32;
                } else if (__value__ == (5546937i32)) {
                    if (!nextCertBreak && ((_i_5546941 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5546974i32;
                    } else {
                        _gotoNext = 5547707i32;
                    };
                } else if (__value__ == (5546970i32)) {
                    _i_5546941--;
                    _gotoNext = 5546937i32;
                } else if (__value__ == (5546974i32)) {
                    _cert_5546978 = _chain[(_i_5546941 : stdgo.GoInt)];
                    if (((_cert_5546978.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5546978.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5547064i32;
                    } else {
                        _gotoNext = 5547154i32;
                    };
                } else if (__value__ == (5547064i32)) {
                    _i_5546941--;
                    _gotoNext = 5546937i32;
                } else if (__value__ == (5547154i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5546978.extKeyUsage.length)) {
                        _gotoNext = 5547312i32;
                    } else {
                        _gotoNext = 5547318i32;
                    };
                } else if (__value__ == (5547158i32)) {
                    _i_5547170_0++;
                    _gotoNext = 5547313i32;
                } else if (__value__ == (5547193i32)) {
                    _usage_5547161 = _cert_5546978.extKeyUsage[(_i_5547170_0 : stdgo.GoInt)];
                    if (_usage_5547161 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5547225i32;
                    } else {
                        _gotoNext = 5547158i32;
                    };
                } else if (__value__ == (5547225i32)) {
                    _i_5546941--;
                    _gotoNext = 5546937i32;
                } else if (__value__ == (5547312i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5546978.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5547170_0 = __tmp__0;
                        _usage_5547161 = __tmp__1;
                    };
                    _gotoNext = 5547313i32;
                } else if (__value__ == (5547313i32)) {
                    if (_i_5547170_0 < (_cert_5546978.extKeyUsage.length)) {
                        _gotoNext = 5547193i32;
                    } else {
                        _gotoNext = 5547318i32;
                    };
                } else if (__value__ == (5547318i32)) {
                    _invalidUsage_5547324 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5547356i32;
                } else if (__value__ == (5547356i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5546613.length)) {
                        _gotoNext = 5547699i32;
                    } else {
                        _gotoNext = 5546970i32;
                    };
                } else if (__value__ == (5547382i32)) {
                    _i_5547382++;
                    _gotoNext = 5547700i32;
                } else if (__value__ == (5547416i32)) {
                    _requestedUsage_5547385 = _usages_5546613[(_i_5547382 : stdgo.GoInt)];
                    if (_requestedUsage_5547385 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5547455i32;
                    } else {
                        _gotoNext = 5547479i32;
                    };
                } else if (__value__ == (5547455i32)) {
                    _i_5547382++;
                    _gotoNext = 5547700i32;
                } else if (__value__ == (5547479i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5546978.extKeyUsage.length)) {
                        _gotoNext = 5547594i32;
                    } else {
                        _gotoNext = 5547601i32;
                    };
                } else if (__value__ == (5547483i32)) {
                    _i_5547495_0++;
                    _gotoNext = 5547595i32;
                } else if (__value__ == (5547518i32)) {
                    _usage_5547486 = _cert_5546978.extKeyUsage[(_i_5547495_0 : stdgo.GoInt)];
                    if (_requestedUsage_5547385 == (_usage_5547486)) {
                        _gotoNext = 5547551i32;
                    } else {
                        _gotoNext = 5547483i32;
                    };
                } else if (__value__ == (5547551i32)) {
                    _i_5547382++;
                    _gotoNext = 5547700i32;
                } else if (__value__ == (5547594i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5546978.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5547495_0 = __tmp__0;
                        _usage_5547486 = __tmp__1;
                    };
                    _gotoNext = 5547595i32;
                } else if (__value__ == (5547595i32)) {
                    if (_i_5547495_0 < (_cert_5546978.extKeyUsage.length)) {
                        _gotoNext = 5547518i32;
                    } else {
                        _gotoNext = 5547601i32;
                    };
                } else if (__value__ == (5547601i32)) {
                    _usages_5546613[(_i_5547382 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5546727--;
                    if (_usagesRemaining_5546727 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5547674i32;
                    } else {
                        _gotoNext = 5547382i32;
                    };
                } else if (__value__ == (5547674i32)) {
                    return false;
                    _gotoNext = 5547382i32;
                } else if (__value__ == (5547699i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5546613[(0i32 : stdgo.GoInt)];
                        _i_5547382 = __tmp__0;
                        _requestedUsage_5547385 = __tmp__1;
                    };
                    _gotoNext = 5547700i32;
                } else if (__value__ == (5547700i32)) {
                    if (_i_5547382 < (_usages_5546613.length)) {
                        _gotoNext = 5547416i32;
                    } else {
                        _gotoNext = 5546970i32;
                    };
                } else if (__value__ == (5547707i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
