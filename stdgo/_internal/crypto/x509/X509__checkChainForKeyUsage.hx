package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5553149:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5553048:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5553045:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5552987:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5552833_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5552641:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5552390:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5553158_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5552824:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_5552604:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5552276:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5552276 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5552276.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5552368i32;
                    } else {
                        _gotoNext = 5552390i32;
                    };
                } else if (__value__ == (5552368i32)) {
                    return false;
                    _gotoNext = 5552390i32;
                } else if (__value__ == (5552390i32)) {
                    _usagesRemaining_5552390 = (_usages_5552276.length);
                    _gotoNext = 5552589i32;
                } else if (__value__ == (5552589i32)) {
                    _i_5552604 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5552600i32;
                } else if (__value__ == (5552600i32)) {
                    if (!nextCertBreak && ((_i_5552604 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5552637i32;
                    } else {
                        _gotoNext = 5553370i32;
                    };
                } else if (__value__ == (5552633i32)) {
                    _i_5552604--;
                    _gotoNext = 5552600i32;
                } else if (__value__ == (5552637i32)) {
                    _cert_5552641 = _chain[(_i_5552604 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5552641 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5552727i32;
                    } else {
                        _gotoNext = 5552817i32;
                    };
                } else if (__value__ == (5552727i32)) {
                    _i_5552604--;
                    _gotoNext = 5552600i32;
                } else if (__value__ == (5552817i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5552975i32;
                    } else {
                        _gotoNext = 5552981i32;
                    };
                } else if (__value__ == (5552821i32)) {
                    _i_5552833_0++;
                    _gotoNext = 5552976i32;
                } else if (__value__ == (5552856i32)) {
                    _usage_5552824 = (@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage[(_i_5552833_0 : stdgo.GoInt)];
                    if (_usage_5552824 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5552888i32;
                    } else {
                        _gotoNext = 5552821i32;
                    };
                } else if (__value__ == (5552888i32)) {
                    _i_5552604--;
                    _gotoNext = 5552600i32;
                } else if (__value__ == (5552975i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5552833_0 = __tmp__0;
                        _usage_5552824 = __tmp__1;
                    };
                    _gotoNext = 5552976i32;
                } else if (__value__ == (5552976i32)) {
                    if (_i_5552833_0 < ((@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5552856i32;
                    } else {
                        _gotoNext = 5552981i32;
                    };
                } else if (__value__ == (5552981i32)) {
                    _invalidUsage_5552987 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5553019i32;
                } else if (__value__ == (5553019i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5552276.length)) {
                        _gotoNext = 5553362i32;
                    } else {
                        _gotoNext = 5552633i32;
                    };
                } else if (__value__ == (5553045i32)) {
                    _i_5553045++;
                    _gotoNext = 5553363i32;
                } else if (__value__ == (5553079i32)) {
                    _requestedUsage_5553048 = _usages_5552276[(_i_5553045 : stdgo.GoInt)];
                    if (_requestedUsage_5553048 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5553118i32;
                    } else {
                        _gotoNext = 5553142i32;
                    };
                } else if (__value__ == (5553118i32)) {
                    _i_5553045++;
                    _gotoNext = 5553363i32;
                } else if (__value__ == (5553142i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5553257i32;
                    } else {
                        _gotoNext = 5553264i32;
                    };
                } else if (__value__ == (5553146i32)) {
                    _i_5553158_0++;
                    _gotoNext = 5553258i32;
                } else if (__value__ == (5553181i32)) {
                    _usage_5553149 = (@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage[(_i_5553158_0 : stdgo.GoInt)];
                    if (_requestedUsage_5553048 == (_usage_5553149)) {
                        _gotoNext = 5553214i32;
                    } else {
                        _gotoNext = 5553146i32;
                    };
                } else if (__value__ == (5553214i32)) {
                    _i_5553045++;
                    _gotoNext = 5553363i32;
                } else if (__value__ == (5553257i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5553158_0 = __tmp__0;
                        _usage_5553149 = __tmp__1;
                    };
                    _gotoNext = 5553258i32;
                } else if (__value__ == (5553258i32)) {
                    if (_i_5553158_0 < ((@:checkr _cert_5552641 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5553181i32;
                    } else {
                        _gotoNext = 5553264i32;
                    };
                } else if (__value__ == (5553264i32)) {
                    _usages_5552276[(_i_5553045 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5552390--;
                    if (_usagesRemaining_5552390 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5553337i32;
                    } else {
                        _gotoNext = 5553045i32;
                    };
                } else if (__value__ == (5553337i32)) {
                    return false;
                    _gotoNext = 5553045i32;
                } else if (__value__ == (5553362i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5552276[(0i32 : stdgo.GoInt)];
                        _i_5553045 = __tmp__0;
                        _requestedUsage_5553048 = __tmp__1;
                    };
                    _gotoNext = 5553363i32;
                } else if (__value__ == (5553363i32)) {
                    if (_i_5553045 < (_usages_5552276.length)) {
                        _gotoNext = 5553079i32;
                    } else {
                        _gotoNext = 5552633i32;
                    };
                } else if (__value__ == (5553370i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
