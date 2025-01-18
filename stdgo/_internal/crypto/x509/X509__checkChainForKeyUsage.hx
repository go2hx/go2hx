package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5630882_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5630690:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5630653:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5631207_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5631097:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5630873:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_5630439:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5630325:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5631198:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5631094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5631036:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5630325 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5630325.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5630417i32;
                    } else {
                        _gotoNext = 5630439i32;
                    };
                } else if (__value__ == (5630417i32)) {
                    return false;
                    _gotoNext = 5630439i32;
                } else if (__value__ == (5630439i32)) {
                    _usagesRemaining_5630439 = (_usages_5630325.length);
                    _gotoNext = 5630638i32;
                } else if (__value__ == (5630638i32)) {
                    _i_5630653 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5630649i32;
                } else if (__value__ == (5630649i32)) {
                    if (!nextCertBreak && ((_i_5630653 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5630686i32;
                    } else {
                        _gotoNext = 5631419i32;
                    };
                } else if (__value__ == (5630682i32)) {
                    _i_5630653--;
                    _gotoNext = 5630649i32;
                } else if (__value__ == (5630686i32)) {
                    _cert_5630690 = _chain[(_i_5630653 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5630690 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5630776i32;
                    } else {
                        _gotoNext = 5630866i32;
                    };
                } else if (__value__ == (5630776i32)) {
                    _i_5630653--;
                    _gotoNext = 5630649i32;
                } else if (__value__ == (5630866i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5631024i32;
                    } else {
                        _gotoNext = 5631030i32;
                    };
                } else if (__value__ == (5630870i32)) {
                    _i_5630882_0++;
                    _gotoNext = 5631025i32;
                } else if (__value__ == (5630905i32)) {
                    _usage_5630873 = (@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage[(_i_5630882_0 : stdgo.GoInt)];
                    if (_usage_5630873 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5630937i32;
                    } else {
                        _gotoNext = 5630870i32;
                    };
                } else if (__value__ == (5630937i32)) {
                    _i_5630653--;
                    _gotoNext = 5630649i32;
                } else if (__value__ == (5631024i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5630882_0 = __tmp__0;
                        _usage_5630873 = __tmp__1;
                    };
                    _gotoNext = 5631025i32;
                } else if (__value__ == (5631025i32)) {
                    if (_i_5630882_0 < ((@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630905i32;
                    } else {
                        _gotoNext = 5631030i32;
                    };
                } else if (__value__ == (5631030i32)) {
                    _invalidUsage_5631036 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5631068i32;
                } else if (__value__ == (5631068i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5630325.length)) {
                        _gotoNext = 5631411i32;
                    } else {
                        _gotoNext = 5630682i32;
                    };
                } else if (__value__ == (5631094i32)) {
                    _i_5631094++;
                    _gotoNext = 5631412i32;
                } else if (__value__ == (5631128i32)) {
                    _requestedUsage_5631097 = _usages_5630325[(_i_5631094 : stdgo.GoInt)];
                    if (_requestedUsage_5631097 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5631167i32;
                    } else {
                        _gotoNext = 5631191i32;
                    };
                } else if (__value__ == (5631167i32)) {
                    _i_5631094++;
                    _gotoNext = 5631412i32;
                } else if (__value__ == (5631191i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5631306i32;
                    } else {
                        _gotoNext = 5631313i32;
                    };
                } else if (__value__ == (5631195i32)) {
                    _i_5631207_0++;
                    _gotoNext = 5631307i32;
                } else if (__value__ == (5631230i32)) {
                    _usage_5631198 = (@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage[(_i_5631207_0 : stdgo.GoInt)];
                    if (_requestedUsage_5631097 == (_usage_5631198)) {
                        _gotoNext = 5631263i32;
                    } else {
                        _gotoNext = 5631195i32;
                    };
                } else if (__value__ == (5631263i32)) {
                    _i_5631094++;
                    _gotoNext = 5631412i32;
                } else if (__value__ == (5631306i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5631207_0 = __tmp__0;
                        _usage_5631198 = __tmp__1;
                    };
                    _gotoNext = 5631307i32;
                } else if (__value__ == (5631307i32)) {
                    if (_i_5631207_0 < ((@:checkr _cert_5630690 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5631230i32;
                    } else {
                        _gotoNext = 5631313i32;
                    };
                } else if (__value__ == (5631313i32)) {
                    _usages_5630325[(_i_5631094 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5630439--;
                    if (_usagesRemaining_5630439 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5631386i32;
                    } else {
                        _gotoNext = 5631094i32;
                    };
                } else if (__value__ == (5631386i32)) {
                    return false;
                    _gotoNext = 5631094i32;
                } else if (__value__ == (5631411i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5630325[(0i32 : stdgo.GoInt)];
                        _i_5631094 = __tmp__0;
                        _requestedUsage_5631097 = __tmp__1;
                    };
                    _gotoNext = 5631412i32;
                } else if (__value__ == (5631412i32)) {
                    if (_i_5631094 < (_usages_5630325.length)) {
                        _gotoNext = 5631128i32;
                    } else {
                        _gotoNext = 5630682i32;
                    };
                } else if (__value__ == (5631419i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
