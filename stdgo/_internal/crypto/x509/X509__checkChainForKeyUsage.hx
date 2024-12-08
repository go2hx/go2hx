package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5624692:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5624701_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5624509:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5624472:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5625017:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5624916:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5625026_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5624913:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5624855:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usagesRemaining_5624258:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5624144:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5624144 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5624144, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5624236i32;
                    } else {
                        _gotoNext = 5624258i32;
                    };
                } else if (__value__ == (5624236i32)) {
                    return false;
                    _gotoNext = 5624258i32;
                } else if (__value__ == (5624258i32)) {
                    _usagesRemaining_5624258 = (_usages_5624144.length);
                    _gotoNext = 5624457i32;
                } else if (__value__ == (5624457i32)) {
                    _i_5624472 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5624468i32;
                } else if (__value__ == (5624468i32)) {
                    if (!nextCertBreak && ((_i_5624472 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5624505i32;
                    } else {
                        _gotoNext = 5625238i32;
                    };
                } else if (__value__ == (5624501i32)) {
                    _i_5624472--;
                    _gotoNext = 5624468i32;
                } else if (__value__ == (5624505i32)) {
                    _cert_5624509 = _chain[(_i_5624472 : stdgo.GoInt)];
                    if (((_cert_5624509.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5624509.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5624595i32;
                    } else {
                        _gotoNext = 5624685i32;
                    };
                } else if (__value__ == (5624595i32)) {
                    _i_5624472--;
                    _gotoNext = 5624468i32;
                } else if (__value__ == (5624685i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5624509.extKeyUsage.length)) {
                        _gotoNext = 5624843i32;
                    } else {
                        _gotoNext = 5624849i32;
                    };
                } else if (__value__ == (5624689i32)) {
                    _i_5624701_0++;
                    _gotoNext = 5624844i32;
                } else if (__value__ == (5624724i32)) {
                    _usage_5624692 = _cert_5624509.extKeyUsage[(_i_5624701_0 : stdgo.GoInt)];
                    if (_usage_5624692 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5624756i32;
                    } else {
                        _gotoNext = 5624689i32;
                    };
                } else if (__value__ == (5624756i32)) {
                    _i_5624472--;
                    _gotoNext = 5624468i32;
                } else if (__value__ == (5624843i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5624509.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5624701_0 = __tmp__0;
                        _usage_5624692 = __tmp__1;
                    };
                    _gotoNext = 5624844i32;
                } else if (__value__ == (5624844i32)) {
                    if (_i_5624701_0 < (_cert_5624509.extKeyUsage.length)) {
                        _gotoNext = 5624724i32;
                    } else {
                        _gotoNext = 5624849i32;
                    };
                } else if (__value__ == (5624849i32)) {
                    _invalidUsage_5624855 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5624887i32;
                } else if (__value__ == (5624887i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5624144.length)) {
                        _gotoNext = 5625230i32;
                    } else {
                        _gotoNext = 5624501i32;
                    };
                } else if (__value__ == (5624913i32)) {
                    _i_5624913++;
                    _gotoNext = 5625231i32;
                } else if (__value__ == (5624947i32)) {
                    _requestedUsage_5624916 = _usages_5624144[(_i_5624913 : stdgo.GoInt)];
                    if (_requestedUsage_5624916 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5624986i32;
                    } else {
                        _gotoNext = 5625010i32;
                    };
                } else if (__value__ == (5624986i32)) {
                    _i_5624913++;
                    _gotoNext = 5625231i32;
                } else if (__value__ == (5625010i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5624509.extKeyUsage.length)) {
                        _gotoNext = 5625125i32;
                    } else {
                        _gotoNext = 5625132i32;
                    };
                } else if (__value__ == (5625014i32)) {
                    _i_5625026_0++;
                    _gotoNext = 5625126i32;
                } else if (__value__ == (5625049i32)) {
                    _usage_5625017 = _cert_5624509.extKeyUsage[(_i_5625026_0 : stdgo.GoInt)];
                    if (_requestedUsage_5624916 == (_usage_5625017)) {
                        _gotoNext = 5625082i32;
                    } else {
                        _gotoNext = 5625014i32;
                    };
                } else if (__value__ == (5625082i32)) {
                    _i_5624913++;
                    _gotoNext = 5625231i32;
                } else if (__value__ == (5625125i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5624509.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5625026_0 = __tmp__0;
                        _usage_5625017 = __tmp__1;
                    };
                    _gotoNext = 5625126i32;
                } else if (__value__ == (5625126i32)) {
                    if (_i_5625026_0 < (_cert_5624509.extKeyUsage.length)) {
                        _gotoNext = 5625049i32;
                    } else {
                        _gotoNext = 5625132i32;
                    };
                } else if (__value__ == (5625132i32)) {
                    _usages_5624144[(_i_5624913 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5624258--;
                    if (_usagesRemaining_5624258 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5625205i32;
                    } else {
                        _gotoNext = 5624913i32;
                    };
                } else if (__value__ == (5625205i32)) {
                    return false;
                    _gotoNext = 5624913i32;
                } else if (__value__ == (5625230i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5624144[(0i32 : stdgo.GoInt)];
                        _i_5624913 = __tmp__0;
                        _requestedUsage_5624916 = __tmp__1;
                    };
                    _gotoNext = 5625231i32;
                } else if (__value__ == (5625231i32)) {
                    if (_i_5624913 < (_usages_5624144.length)) {
                        _gotoNext = 5624947i32;
                    } else {
                        _gotoNext = 5624501i32;
                    };
                } else if (__value__ == (5625238i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
