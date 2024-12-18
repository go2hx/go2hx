package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _invalidUsage_5503672:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5503518_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5503289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5503843_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5503730:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5503509:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5503326:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5503075:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5502961:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5503834:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5503733:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5502961 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5502961.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5503053i32;
                    } else {
                        _gotoNext = 5503075i32;
                    };
                } else if (__value__ == (5503053i32)) {
                    return false;
                    _gotoNext = 5503075i32;
                } else if (__value__ == (5503075i32)) {
                    _usagesRemaining_5503075 = (_usages_5502961.length);
                    _gotoNext = 5503274i32;
                } else if (__value__ == (5503274i32)) {
                    _i_5503289 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5503285i32;
                } else if (__value__ == (5503285i32)) {
                    if (!nextCertBreak && ((_i_5503289 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5503322i32;
                    } else {
                        _gotoNext = 5504055i32;
                    };
                } else if (__value__ == (5503318i32)) {
                    _i_5503289--;
                    _gotoNext = 5503285i32;
                } else if (__value__ == (5503322i32)) {
                    _cert_5503326 = _chain[(_i_5503289 : stdgo.GoInt)];
                    if (((_cert_5503326.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5503326.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5503412i32;
                    } else {
                        _gotoNext = 5503502i32;
                    };
                } else if (__value__ == (5503412i32)) {
                    _i_5503289--;
                    _gotoNext = 5503285i32;
                } else if (__value__ == (5503502i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5503326.extKeyUsage.length)) {
                        _gotoNext = 5503660i32;
                    } else {
                        _gotoNext = 5503666i32;
                    };
                } else if (__value__ == (5503506i32)) {
                    _i_5503518_0++;
                    _gotoNext = 5503661i32;
                } else if (__value__ == (5503541i32)) {
                    _usage_5503509 = _cert_5503326.extKeyUsage[(_i_5503518_0 : stdgo.GoInt)];
                    if (_usage_5503509 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5503573i32;
                    } else {
                        _gotoNext = 5503506i32;
                    };
                } else if (__value__ == (5503573i32)) {
                    _i_5503289--;
                    _gotoNext = 5503285i32;
                } else if (__value__ == (5503660i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5503326.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5503518_0 = __tmp__0;
                        _usage_5503509 = __tmp__1;
                    };
                    _gotoNext = 5503661i32;
                } else if (__value__ == (5503661i32)) {
                    if (_i_5503518_0 < (_cert_5503326.extKeyUsage.length)) {
                        _gotoNext = 5503541i32;
                    } else {
                        _gotoNext = 5503666i32;
                    };
                } else if (__value__ == (5503666i32)) {
                    _invalidUsage_5503672 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5503704i32;
                } else if (__value__ == (5503704i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5502961.length)) {
                        _gotoNext = 5504047i32;
                    } else {
                        _gotoNext = 5503318i32;
                    };
                } else if (__value__ == (5503730i32)) {
                    _i_5503730++;
                    _gotoNext = 5504048i32;
                } else if (__value__ == (5503764i32)) {
                    _requestedUsage_5503733 = _usages_5502961[(_i_5503730 : stdgo.GoInt)];
                    if (_requestedUsage_5503733 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5503803i32;
                    } else {
                        _gotoNext = 5503827i32;
                    };
                } else if (__value__ == (5503803i32)) {
                    _i_5503730++;
                    _gotoNext = 5504048i32;
                } else if (__value__ == (5503827i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5503326.extKeyUsage.length)) {
                        _gotoNext = 5503942i32;
                    } else {
                        _gotoNext = 5503949i32;
                    };
                } else if (__value__ == (5503831i32)) {
                    _i_5503843_0++;
                    _gotoNext = 5503943i32;
                } else if (__value__ == (5503866i32)) {
                    _usage_5503834 = _cert_5503326.extKeyUsage[(_i_5503843_0 : stdgo.GoInt)];
                    if (_requestedUsage_5503733 == (_usage_5503834)) {
                        _gotoNext = 5503899i32;
                    } else {
                        _gotoNext = 5503831i32;
                    };
                } else if (__value__ == (5503899i32)) {
                    _i_5503730++;
                    _gotoNext = 5504048i32;
                } else if (__value__ == (5503942i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5503326.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5503843_0 = __tmp__0;
                        _usage_5503834 = __tmp__1;
                    };
                    _gotoNext = 5503943i32;
                } else if (__value__ == (5503943i32)) {
                    if (_i_5503843_0 < (_cert_5503326.extKeyUsage.length)) {
                        _gotoNext = 5503866i32;
                    } else {
                        _gotoNext = 5503949i32;
                    };
                } else if (__value__ == (5503949i32)) {
                    _usages_5502961[(_i_5503730 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5503075--;
                    if (_usagesRemaining_5503075 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5504022i32;
                    } else {
                        _gotoNext = 5503730i32;
                    };
                } else if (__value__ == (5504022i32)) {
                    return false;
                    _gotoNext = 5503730i32;
                } else if (__value__ == (5504047i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5502961[(0i32 : stdgo.GoInt)];
                        _i_5503730 = __tmp__0;
                        _requestedUsage_5503733 = __tmp__1;
                    };
                    _gotoNext = 5504048i32;
                } else if (__value__ == (5504048i32)) {
                    if (_i_5503730 < (_usages_5502961.length)) {
                        _gotoNext = 5503764i32;
                    } else {
                        _gotoNext = 5503318i32;
                    };
                } else if (__value__ == (5504055i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
