package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _i_5506020_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5505695_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5505230i32;
                    } else {
                        _gotoNext = 5505252i32;
                    };
                } else if (__value__ == (5505230i32)) {
                    return false;
                    _gotoNext = 5505252i32;
                } else if (__value__ == (5505252i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5505451i32;
                } else if (__value__ == (5505451i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5505462i32;
                } else if (__value__ == (5505462i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5505499i32;
                    } else {
                        _gotoNext = 5506232i32;
                    };
                } else if (__value__ == (5505495i32)) {
                    _i_7--;
                    _gotoNext = 5505462i32;
                } else if (__value__ == (5505499i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5505589i32;
                    } else {
                        _gotoNext = 5505679i32;
                    };
                } else if (__value__ == (5505589i32)) {
                    _i_7--;
                    _gotoNext = 5505462i32;
                } else if (__value__ == (5505679i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5505837i32;
                    } else {
                        _gotoNext = 5505843i32;
                    };
                } else if (__value__ == (5505683i32)) {
                    _i_5505695_9++;
                    _gotoNext = 5505838i32;
                } else if (__value__ == (5505718i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5505695_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5505750i32;
                    } else {
                        _gotoNext = 5505683i32;
                    };
                } else if (__value__ == (5505750i32)) {
                    _i_7--;
                    _gotoNext = 5505462i32;
                } else if (__value__ == (5505837i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5505695_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5505838i32;
                } else if (__value__ == (5505838i32)) {
                    if (_i_5505695_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5505718i32;
                    } else {
                        _gotoNext = 5505843i32;
                    };
                } else if (__value__ == (5505843i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5505881i32;
                } else if (__value__ == (5505881i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5506224i32;
                    } else {
                        _gotoNext = 5505495i32;
                    };
                } else if (__value__ == (5505907i32)) {
                    _i_12++;
                    _gotoNext = 5506225i32;
                } else if (__value__ == (5505941i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5505980i32;
                    } else {
                        _gotoNext = 5506004i32;
                    };
                } else if (__value__ == (5505980i32)) {
                    _i_12++;
                    _gotoNext = 5506225i32;
                } else if (__value__ == (5506004i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5506119i32;
                    } else {
                        _gotoNext = 5506126i32;
                    };
                } else if (__value__ == (5506008i32)) {
                    _i_5506020_14++;
                    _gotoNext = 5506120i32;
                } else if (__value__ == (5506043i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5506020_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5506076i32;
                    } else {
                        _gotoNext = 5506008i32;
                    };
                } else if (__value__ == (5506076i32)) {
                    _i_12++;
                    _gotoNext = 5506225i32;
                } else if (__value__ == (5506119i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5506020_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5506120i32;
                } else if (__value__ == (5506120i32)) {
                    if (_i_5506020_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5506043i32;
                    } else {
                        _gotoNext = 5506126i32;
                    };
                } else if (__value__ == (5506126i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5506199i32;
                    } else {
                        _gotoNext = 5505907i32;
                    };
                } else if (__value__ == (5506199i32)) {
                    return false;
                    _gotoNext = 5505907i32;
                } else if (__value__ == (5506224i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5506225i32;
                } else if (__value__ == (5506225i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5505941i32;
                    } else {
                        _gotoNext = 5505495i32;
                    };
                } else if (__value__ == (5506232i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
