package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5621088:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5620984:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5620772_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5620543:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5620329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5620215:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5621097_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5620987:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5620926:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5620763:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5620580:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5620215 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5620215.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5620307i32;
                    } else {
                        _gotoNext = 5620329i32;
                    };
                } else if (__value__ == (5620307i32)) {
                    return false;
                    _gotoNext = 5620329i32;
                } else if (__value__ == (5620329i32)) {
                    _usagesRemaining_5620329 = (_usages_5620215.length);
                    _gotoNext = 5620528i32;
                } else if (__value__ == (5620528i32)) {
                    _i_5620543 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5620539i32;
                } else if (__value__ == (5620539i32)) {
                    if (!nextCertBreak && ((_i_5620543 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5620576i32;
                    } else {
                        _gotoNext = 5621309i32;
                    };
                } else if (__value__ == (5620572i32)) {
                    _i_5620543--;
                    _gotoNext = 5620539i32;
                } else if (__value__ == (5620576i32)) {
                    _cert_5620580 = _chain[(_i_5620543 : stdgo.GoInt)];
                    if (((_cert_5620580.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5620580.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5620666i32;
                    } else {
                        _gotoNext = 5620756i32;
                    };
                } else if (__value__ == (5620666i32)) {
                    _i_5620543--;
                    _gotoNext = 5620539i32;
                } else if (__value__ == (5620756i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5620580.extKeyUsage.length)) {
                        _gotoNext = 5620914i32;
                    } else {
                        _gotoNext = 5620920i32;
                    };
                } else if (__value__ == (5620760i32)) {
                    _i_5620772_0++;
                    _gotoNext = 5620915i32;
                } else if (__value__ == (5620795i32)) {
                    _usage_5620763 = _cert_5620580.extKeyUsage[(_i_5620772_0 : stdgo.GoInt)];
                    if (_usage_5620763 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5620827i32;
                    } else {
                        _gotoNext = 5620760i32;
                    };
                } else if (__value__ == (5620827i32)) {
                    _i_5620543--;
                    _gotoNext = 5620539i32;
                } else if (__value__ == (5620914i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5620580.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5620772_0 = __tmp__0;
                        _usage_5620763 = __tmp__1;
                    };
                    _gotoNext = 5620915i32;
                } else if (__value__ == (5620915i32)) {
                    if (_i_5620772_0 < (_cert_5620580.extKeyUsage.length)) {
                        _gotoNext = 5620795i32;
                    } else {
                        _gotoNext = 5620920i32;
                    };
                } else if (__value__ == (5620920i32)) {
                    _invalidUsage_5620926 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5620958i32;
                } else if (__value__ == (5620958i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5620215.length)) {
                        _gotoNext = 5621301i32;
                    } else {
                        _gotoNext = 5620572i32;
                    };
                } else if (__value__ == (5620984i32)) {
                    _i_5620984++;
                    _gotoNext = 5621302i32;
                } else if (__value__ == (5621018i32)) {
                    _requestedUsage_5620987 = _usages_5620215[(_i_5620984 : stdgo.GoInt)];
                    if (_requestedUsage_5620987 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5621057i32;
                    } else {
                        _gotoNext = 5621081i32;
                    };
                } else if (__value__ == (5621057i32)) {
                    _i_5620984++;
                    _gotoNext = 5621302i32;
                } else if (__value__ == (5621081i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5620580.extKeyUsage.length)) {
                        _gotoNext = 5621196i32;
                    } else {
                        _gotoNext = 5621203i32;
                    };
                } else if (__value__ == (5621085i32)) {
                    _i_5621097_0++;
                    _gotoNext = 5621197i32;
                } else if (__value__ == (5621120i32)) {
                    _usage_5621088 = _cert_5620580.extKeyUsage[(_i_5621097_0 : stdgo.GoInt)];
                    if (_requestedUsage_5620987 == (_usage_5621088)) {
                        _gotoNext = 5621153i32;
                    } else {
                        _gotoNext = 5621085i32;
                    };
                } else if (__value__ == (5621153i32)) {
                    _i_5620984++;
                    _gotoNext = 5621302i32;
                } else if (__value__ == (5621196i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5620580.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5621097_0 = __tmp__0;
                        _usage_5621088 = __tmp__1;
                    };
                    _gotoNext = 5621197i32;
                } else if (__value__ == (5621197i32)) {
                    if (_i_5621097_0 < (_cert_5620580.extKeyUsage.length)) {
                        _gotoNext = 5621120i32;
                    } else {
                        _gotoNext = 5621203i32;
                    };
                } else if (__value__ == (5621203i32)) {
                    _usages_5620215[(_i_5620984 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5620329--;
                    if (_usagesRemaining_5620329 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5621276i32;
                    } else {
                        _gotoNext = 5620984i32;
                    };
                } else if (__value__ == (5621276i32)) {
                    return false;
                    _gotoNext = 5620984i32;
                } else if (__value__ == (5621301i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5620215[(0i32 : stdgo.GoInt)];
                        _i_5620984 = __tmp__0;
                        _requestedUsage_5620987 = __tmp__1;
                    };
                    _gotoNext = 5621302i32;
                } else if (__value__ == (5621302i32)) {
                    if (_i_5620984 < (_usages_5620215.length)) {
                        _gotoNext = 5621018i32;
                    } else {
                        _gotoNext = 5620572i32;
                    };
                } else if (__value__ == (5621309i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
