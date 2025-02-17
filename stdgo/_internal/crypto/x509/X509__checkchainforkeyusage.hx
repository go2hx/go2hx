package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5629789_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5629464_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5628999i32;
                    } else {
                        _gotoNext = 5629021i32;
                    };
                } else if (__value__ == (5628999i32)) {
                    return false;
                    _gotoNext = 5629021i32;
                } else if (__value__ == (5629021i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5629220i32;
                } else if (__value__ == (5629220i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629231i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5629268i32;
                    } else {
                        _gotoNext = 5630001i32;
                    };
                } else if (__value__ == (5629264i32)) {
                    _i_7--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629268i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5629358i32;
                    } else {
                        _gotoNext = 5629448i32;
                    };
                } else if (__value__ == (5629358i32)) {
                    _i_7--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629448i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629606i32;
                    } else {
                        _gotoNext = 5629612i32;
                    };
                } else if (__value__ == (5629452i32)) {
                    _i_5629464_9++;
                    _gotoNext = 5629607i32;
                } else if (__value__ == (5629487i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5629464_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5629519i32;
                    } else {
                        _gotoNext = 5629452i32;
                    };
                } else if (__value__ == (5629519i32)) {
                    _i_7--;
                    _gotoNext = 5629231i32;
                } else if (__value__ == (5629606i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629464_9 = __tmp__0;
                        _usage_10 = __tmp__1;
                    };
                    _gotoNext = 5629607i32;
                } else if (__value__ == (5629607i32)) {
                    if (_i_5629464_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629487i32;
                    } else {
                        _gotoNext = 5629612i32;
                    };
                } else if (__value__ == (5629612i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5629650i32;
                } else if (__value__ == (5629650i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5629993i32;
                    } else {
                        _gotoNext = 5629264i32;
                    };
                } else if (__value__ == (5629676i32)) {
                    _i_12++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629710i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5629749i32;
                    } else {
                        _gotoNext = 5629773i32;
                    };
                } else if (__value__ == (5629749i32)) {
                    _i_12++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629773i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629888i32;
                    } else {
                        _gotoNext = 5629895i32;
                    };
                } else if (__value__ == (5629777i32)) {
                    _i_5629789_14++;
                    _gotoNext = 5629889i32;
                } else if (__value__ == (5629812i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5629789_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5629845i32;
                    } else {
                        _gotoNext = 5629777i32;
                    };
                } else if (__value__ == (5629845i32)) {
                    _i_12++;
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629888i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629789_14 = __tmp__0;
                        _usage_15 = __tmp__1;
                    };
                    _gotoNext = 5629889i32;
                } else if (__value__ == (5629889i32)) {
                    if (_i_5629789_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5629812i32;
                    } else {
                        _gotoNext = 5629895i32;
                    };
                } else if (__value__ == (5629895i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = __tmp__0;
                        _requestedUsage_13 = __tmp__1;
                    };
                    _gotoNext = 5629994i32;
                } else if (__value__ == (5629994i32)) {
                    if (_i_12 < (_usages_5.length)) {
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
