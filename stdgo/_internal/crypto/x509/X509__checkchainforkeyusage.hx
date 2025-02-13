package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5584409_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5584217:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _usagesRemaining_5583966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5584734_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5584624:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5584400:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5584621:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5584563:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5584180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5583852:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_5584725:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5583852 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5583852.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5583944i32;
                    } else {
                        _gotoNext = 5583966i32;
                    };
                } else if (__value__ == (5583944i32)) {
                    return false;
                    _gotoNext = 5583966i32;
                } else if (__value__ == (5583966i32)) {
                    _usagesRemaining_5583966 = (_usages_5583852.length);
                    _gotoNext = 5584165i32;
                } else if (__value__ == (5584165i32)) {
                    _i_5584180 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5584176i32;
                } else if (__value__ == (5584176i32)) {
                    if (!nextCertBreak && ((_i_5584180 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5584213i32;
                    } else {
                        _gotoNext = 5584946i32;
                    };
                } else if (__value__ == (5584209i32)) {
                    _i_5584180--;
                    _gotoNext = 5584176i32;
                } else if (__value__ == (5584213i32)) {
                    _cert_5584217 = _chain[(_i_5584180 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5584217 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5584303i32;
                    } else {
                        _gotoNext = 5584393i32;
                    };
                } else if (__value__ == (5584303i32)) {
                    _i_5584180--;
                    _gotoNext = 5584176i32;
                } else if (__value__ == (5584393i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5584551i32;
                    } else {
                        _gotoNext = 5584557i32;
                    };
                } else if (__value__ == (5584397i32)) {
                    _i_5584409_0++;
                    _gotoNext = 5584552i32;
                } else if (__value__ == (5584432i32)) {
                    _usage_5584400 = (@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage[(_i_5584409_0 : stdgo.GoInt)];
                    if (_usage_5584400 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5584464i32;
                    } else {
                        _gotoNext = 5584397i32;
                    };
                } else if (__value__ == (5584464i32)) {
                    _i_5584180--;
                    _gotoNext = 5584176i32;
                } else if (__value__ == (5584551i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5584409_0 = __tmp__0;
                        _usage_5584400 = __tmp__1;
                    };
                    _gotoNext = 5584552i32;
                } else if (__value__ == (5584552i32)) {
                    if (_i_5584409_0 < ((@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5584432i32;
                    } else {
                        _gotoNext = 5584557i32;
                    };
                } else if (__value__ == (5584557i32)) {
                    _invalidUsage_5584563 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5584595i32;
                } else if (__value__ == (5584595i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5583852.length)) {
                        _gotoNext = 5584938i32;
                    } else {
                        _gotoNext = 5584209i32;
                    };
                } else if (__value__ == (5584621i32)) {
                    _i_5584621++;
                    _gotoNext = 5584939i32;
                } else if (__value__ == (5584655i32)) {
                    _requestedUsage_5584624 = _usages_5583852[(_i_5584621 : stdgo.GoInt)];
                    if (_requestedUsage_5584624 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5584694i32;
                    } else {
                        _gotoNext = 5584718i32;
                    };
                } else if (__value__ == (5584694i32)) {
                    _i_5584621++;
                    _gotoNext = 5584939i32;
                } else if (__value__ == (5584718i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5584833i32;
                    } else {
                        _gotoNext = 5584840i32;
                    };
                } else if (__value__ == (5584722i32)) {
                    _i_5584734_0++;
                    _gotoNext = 5584834i32;
                } else if (__value__ == (5584757i32)) {
                    _usage_5584725 = (@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage[(_i_5584734_0 : stdgo.GoInt)];
                    if (_requestedUsage_5584624 == (_usage_5584725)) {
                        _gotoNext = 5584790i32;
                    } else {
                        _gotoNext = 5584722i32;
                    };
                } else if (__value__ == (5584790i32)) {
                    _i_5584621++;
                    _gotoNext = 5584939i32;
                } else if (__value__ == (5584833i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5584734_0 = __tmp__0;
                        _usage_5584725 = __tmp__1;
                    };
                    _gotoNext = 5584834i32;
                } else if (__value__ == (5584834i32)) {
                    if (_i_5584734_0 < ((@:checkr _cert_5584217 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5584757i32;
                    } else {
                        _gotoNext = 5584840i32;
                    };
                } else if (__value__ == (5584840i32)) {
                    _usages_5583852[(_i_5584621 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5583966--;
                    if (_usagesRemaining_5583966 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5584913i32;
                    } else {
                        _gotoNext = 5584621i32;
                    };
                } else if (__value__ == (5584913i32)) {
                    return false;
                    _gotoNext = 5584621i32;
                } else if (__value__ == (5584938i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5583852[(0i32 : stdgo.GoInt)];
                        _i_5584621 = __tmp__0;
                        _requestedUsage_5584624 = __tmp__1;
                    };
                    _gotoNext = 5584939i32;
                } else if (__value__ == (5584939i32)) {
                    if (_i_5584621 < (_usages_5583852.length)) {
                        _gotoNext = 5584655i32;
                    } else {
                        _gotoNext = 5584209i32;
                    };
                } else if (__value__ == (5584946i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
