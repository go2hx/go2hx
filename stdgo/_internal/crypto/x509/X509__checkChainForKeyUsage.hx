package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5628084:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5627983:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5627759:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5627576:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5627539:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5627325:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5627211:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5628093_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5627980:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5627922:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5627768_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5627211 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5627211, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5627303i32;
                    } else {
                        _gotoNext = 5627325i32;
                    };
                } else if (__value__ == (5627303i32)) {
                    return false;
                    _gotoNext = 5627325i32;
                } else if (__value__ == (5627325i32)) {
                    _usagesRemaining_5627325 = (_usages_5627211.length);
                    _gotoNext = 5627524i32;
                } else if (__value__ == (5627524i32)) {
                    _i_5627539 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5627535i32;
                } else if (__value__ == (5627535i32)) {
                    if (!nextCertBreak && ((_i_5627539 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5627572i32;
                    } else {
                        _gotoNext = 5628305i32;
                    };
                } else if (__value__ == (5627568i32)) {
                    _i_5627539--;
                    _gotoNext = 5627535i32;
                } else if (__value__ == (5627572i32)) {
                    _cert_5627576 = _chain[(_i_5627539 : stdgo.GoInt)];
                    if (((_cert_5627576.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5627576.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5627662i32;
                    } else {
                        _gotoNext = 5627752i32;
                    };
                } else if (__value__ == (5627662i32)) {
                    _i_5627539--;
                    _gotoNext = 5627535i32;
                } else if (__value__ == (5627752i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5627576.extKeyUsage.length)) {
                        _gotoNext = 5627910i32;
                    } else {
                        _gotoNext = 5627916i32;
                    };
                } else if (__value__ == (5627756i32)) {
                    _i_5627768_0++;
                    _gotoNext = 5627911i32;
                } else if (__value__ == (5627791i32)) {
                    _usage_5627759 = _cert_5627576.extKeyUsage[(_i_5627768_0 : stdgo.GoInt)];
                    if (_usage_5627759 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5627823i32;
                    } else {
                        _gotoNext = 5627756i32;
                    };
                } else if (__value__ == (5627823i32)) {
                    _i_5627539--;
                    _gotoNext = 5627535i32;
                } else if (__value__ == (5627910i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5627576.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5627768_0 = __tmp__0;
                        _usage_5627759 = __tmp__1;
                    };
                    _gotoNext = 5627911i32;
                } else if (__value__ == (5627911i32)) {
                    if (_i_5627768_0 < (_cert_5627576.extKeyUsage.length)) {
                        _gotoNext = 5627791i32;
                    } else {
                        _gotoNext = 5627916i32;
                    };
                } else if (__value__ == (5627916i32)) {
                    _invalidUsage_5627922 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5627954i32;
                } else if (__value__ == (5627954i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5627211.length)) {
                        _gotoNext = 5628297i32;
                    } else {
                        _gotoNext = 5627568i32;
                    };
                } else if (__value__ == (5627980i32)) {
                    _i_5627980++;
                    _gotoNext = 5628298i32;
                } else if (__value__ == (5628014i32)) {
                    _requestedUsage_5627983 = _usages_5627211[(_i_5627980 : stdgo.GoInt)];
                    if (_requestedUsage_5627983 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5628053i32;
                    } else {
                        _gotoNext = 5628077i32;
                    };
                } else if (__value__ == (5628053i32)) {
                    _i_5627980++;
                    _gotoNext = 5628298i32;
                } else if (__value__ == (5628077i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5627576.extKeyUsage.length)) {
                        _gotoNext = 5628192i32;
                    } else {
                        _gotoNext = 5628199i32;
                    };
                } else if (__value__ == (5628081i32)) {
                    _i_5628093_0++;
                    _gotoNext = 5628193i32;
                } else if (__value__ == (5628116i32)) {
                    _usage_5628084 = _cert_5627576.extKeyUsage[(_i_5628093_0 : stdgo.GoInt)];
                    if (_requestedUsage_5627983 == (_usage_5628084)) {
                        _gotoNext = 5628149i32;
                    } else {
                        _gotoNext = 5628081i32;
                    };
                } else if (__value__ == (5628149i32)) {
                    _i_5627980++;
                    _gotoNext = 5628298i32;
                } else if (__value__ == (5628192i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5627576.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5628093_0 = __tmp__0;
                        _usage_5628084 = __tmp__1;
                    };
                    _gotoNext = 5628193i32;
                } else if (__value__ == (5628193i32)) {
                    if (_i_5628093_0 < (_cert_5627576.extKeyUsage.length)) {
                        _gotoNext = 5628116i32;
                    } else {
                        _gotoNext = 5628199i32;
                    };
                } else if (__value__ == (5628199i32)) {
                    _usages_5627211[(_i_5627980 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5627325--;
                    if (_usagesRemaining_5627325 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5628272i32;
                    } else {
                        _gotoNext = 5627980i32;
                    };
                } else if (__value__ == (5628272i32)) {
                    return false;
                    _gotoNext = 5627980i32;
                } else if (__value__ == (5628297i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5627211[(0i32 : stdgo.GoInt)];
                        _i_5627980 = __tmp__0;
                        _requestedUsage_5627983 = __tmp__1;
                    };
                    _gotoNext = 5628298i32;
                } else if (__value__ == (5628298i32)) {
                    if (_i_5627980 < (_usages_5627211.length)) {
                        _gotoNext = 5628014i32;
                    } else {
                        _gotoNext = 5627568i32;
                    };
                } else if (__value__ == (5628305i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
