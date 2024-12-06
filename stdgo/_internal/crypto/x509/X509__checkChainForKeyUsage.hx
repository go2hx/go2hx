package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _invalidUsage_5629618:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_5629235:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5629021:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5629789_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5629676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5629455:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5629464_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5629272:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usages_5628907:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5629780:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5629679:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5628907 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5628907, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5628999i32;
                    } else {
                        _gotoNext = 5629021i32;
                    };
                } else if (__value__ == (5628999i32)) {
                    return false;
                    _gotoNext = 5629021i32;
                } else if (__value__ == (5629021i32)) {
                    _usagesRemaining_5629021 = (_usages_5628907.length);
                    _gotoNext = 5629220i32;
                } else if (__value__ == (5629220i32)) {
                    _i_5629235 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629231i32)) {
                    if (!nextCertBreak && ((_i_5629235 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5629268i32;
                    } else {
                        _gotoNext = 5630001i32;
                    };
                } else if (__value__ == (5629264i32)) {
                    _i_5629235--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629268i32)) {
                    _cert_5629272 = _chain[(_i_5629235 : stdgo.GoInt)];
                    if (((_cert_5629272.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5629272.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5629358i32;
                    } else {
                        _gotoNext = 5629448i32;
                    };
                } else if (__value__ == (5629358i32)) {
                    _i_5629235--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629448i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5629272.extKeyUsage.length)) {
                        _gotoNext = 5629606i32;
                    } else {
                        _gotoNext = 5629612i32;
                    };
                } else if (__value__ == (5629452i32)) {
                    _i_5629464_0++;
                    _gotoNext = 5629607i32;
                } else if (__value__ == (5629487i32)) {
                    _usage_5629455 = _cert_5629272.extKeyUsage[(_i_5629464_0 : stdgo.GoInt)];
                    if (_usage_5629455 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5629519i32;
                    } else {
                        _gotoNext = 5629452i32;
                    };
                } else if (__value__ == (5629519i32)) {
                    _i_5629235--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629606i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5629272.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629464_0 = __tmp__0;
                        _usage_5629455 = __tmp__1;
                    };
                    _gotoNext = 5629607i32;
                } else if (__value__ == (5629607i32)) {
                    if (_i_5629464_0 < (_cert_5629272.extKeyUsage.length)) {
                        _gotoNext = 5629487i32;
                    } else {
                        _gotoNext = 5629612i32;
                    };
                } else if (__value__ == (5629612i32)) {
                    _invalidUsage_5629618 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5629650i32;
                } else if (__value__ == (5629650i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5628907.length)) {
                        _gotoNext = 5629993i32;
                    } else {
                        _gotoNext = 5629264i32;
                    };
                } else if (__value__ == (5629676i32)) {
                    _i_5629676++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629710i32)) {
                    _requestedUsage_5629679 = _usages_5628907[(_i_5629676 : stdgo.GoInt)];
                    if (_requestedUsage_5629679 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5629749i32;
                    } else {
                        _gotoNext = 5629773i32;
                    };
                } else if (__value__ == (5629749i32)) {
                    _i_5629676++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629773i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5629272.extKeyUsage.length)) {
                        _gotoNext = 5629888i32;
                    } else {
                        _gotoNext = 5629895i32;
                    };
                } else if (__value__ == (5629777i32)) {
                    _i_5629789_0++;
                    _gotoNext = 5629889i32;
                } else if (__value__ == (5629812i32)) {
                    _usage_5629780 = _cert_5629272.extKeyUsage[(_i_5629789_0 : stdgo.GoInt)];
                    if (_requestedUsage_5629679 == (_usage_5629780)) {
                        _gotoNext = 5629845i32;
                    } else {
                        _gotoNext = 5629777i32;
                    };
                } else if (__value__ == (5629845i32)) {
                    _i_5629676++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629888i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5629272.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629789_0 = __tmp__0;
                        _usage_5629780 = __tmp__1;
                    };
                    _gotoNext = 5629889i32;
                } else if (__value__ == (5629889i32)) {
                    if (_i_5629789_0 < (_cert_5629272.extKeyUsage.length)) {
                        _gotoNext = 5629812i32;
                    } else {
                        _gotoNext = 5629895i32;
                    };
                } else if (__value__ == (5629895i32)) {
                    _usages_5628907[(_i_5629676 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5629021--;
                    if (_usagesRemaining_5629021 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5629968i32;
                    } else {
                        _gotoNext = 5629676i32;
                    };
                } else if (__value__ == (5629968i32)) {
                    return false;
                    _gotoNext = 5629676i32;
                } else if (__value__ == (5629993i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5628907[(0i32 : stdgo.GoInt)];
                        _i_5629676 = __tmp__0;
                        _requestedUsage_5629679 = __tmp__1;
                    };
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629994i32)) {
                    if (_i_5629676 < (_usages_5628907.length)) {
                        _gotoNext = 5629710i32;
                    } else {
                        _gotoNext = 5629264i32;
                    };
                } else if (__value__ == (5630001i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
