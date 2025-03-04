package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5539800_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5540125_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5539335i32;
                    } else {
                        _gotoNext = 5539357i32;
                    };
                } else if (__value__ == (5539335i32)) {
                    return false;
                    _gotoNext = 5539357i32;
                } else if (__value__ == (5539357i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5539556i32;
                } else if (__value__ == (5539556i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5539567i32;
                } else if (__value__ == (5539567i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5539604i32;
                    } else {
                        _gotoNext = 5540337i32;
                    };
                } else if (__value__ == (5539600i32)) {
                    _i_7--;
                    _gotoNext = 5539567i32;
                } else if (__value__ == (5539604i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5539694i32;
                    } else {
                        _gotoNext = 5539784i32;
                    };
                } else if (__value__ == (5539694i32)) {
                    _i_7--;
                    _gotoNext = 5539567i32;
                } else if (__value__ == (5539784i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5539942i32;
                    } else {
                        _gotoNext = 5539948i32;
                    };
                } else if (__value__ == (5539788i32)) {
                    _i_5539800_9++;
                    _gotoNext = 5539943i32;
                } else if (__value__ == (5539823i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5539800_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5539855i32;
                    } else {
                        _gotoNext = 5539788i32;
                    };
                } else if (__value__ == (5539855i32)) {
                    _i_7--;
                    _gotoNext = 5539567i32;
                } else if (__value__ == (5539942i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5539800_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5539943i32;
                } else if (__value__ == (5539943i32)) {
                    if (_i_5539800_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5539823i32;
                    } else {
                        _gotoNext = 5539948i32;
                    };
                } else if (__value__ == (5539948i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5539986i32;
                } else if (__value__ == (5539986i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5540329i32;
                    } else {
                        _gotoNext = 5539600i32;
                    };
                } else if (__value__ == (5540012i32)) {
                    _i_12++;
                    _gotoNext = 5540330i32;
                } else if (__value__ == (5540046i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5540085i32;
                    } else {
                        _gotoNext = 5540109i32;
                    };
                } else if (__value__ == (5540085i32)) {
                    _i_12++;
                    _gotoNext = 5540330i32;
                } else if (__value__ == (5540109i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5540224i32;
                    } else {
                        _gotoNext = 5540231i32;
                    };
                } else if (__value__ == (5540113i32)) {
                    _i_5540125_14++;
                    _gotoNext = 5540225i32;
                } else if (__value__ == (5540148i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5540125_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5540181i32;
                    } else {
                        _gotoNext = 5540113i32;
                    };
                } else if (__value__ == (5540181i32)) {
                    _i_12++;
                    _gotoNext = 5540330i32;
                } else if (__value__ == (5540224i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5540125_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5540225i32;
                } else if (__value__ == (5540225i32)) {
                    if (_i_5540125_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5540148i32;
                    } else {
                        _gotoNext = 5540231i32;
                    };
                } else if (__value__ == (5540231i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5540304i32;
                    } else {
                        _gotoNext = 5540012i32;
                    };
                } else if (__value__ == (5540304i32)) {
                    return false;
                    _gotoNext = 5540012i32;
                } else if (__value__ == (5540329i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5540330i32;
                } else if (__value__ == (5540330i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5540046i32;
                    } else {
                        _gotoNext = 5539600i32;
                    };
                } else if (__value__ == (5540337i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
