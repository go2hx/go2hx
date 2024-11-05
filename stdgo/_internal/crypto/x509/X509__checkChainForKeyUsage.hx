package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _cert_5628083:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usages_5627718:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5628487:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5628429:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5628266:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5628046:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5627832:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5628591:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5628600_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5628490:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5628275_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5627718 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5627718, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5627810i32;
                    } else {
                        _gotoNext = 5627832i32;
                    };
                } else if (__value__ == (5627810i32)) {
                    return false;
                    _gotoNext = 5627832i32;
                } else if (__value__ == (5627832i32)) {
                    _usagesRemaining_5627832 = (_usages_5627718.length);
                    _gotoNext = 5628031i32;
                } else if (__value__ == (5628031i32)) {
                    _i_5628046 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5628042i32;
                } else if (__value__ == (5628042i32)) {
                    if (!nextCertBreak && ((_i_5628046 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5628079i32;
                    } else {
                        _gotoNext = 5628812i32;
                    };
                } else if (__value__ == (5628075i32)) {
                    _i_5628046--;
                    _gotoNext = 5628042i32;
                } else if (__value__ == (5628079i32)) {
                    _cert_5628083 = _chain[(_i_5628046 : stdgo.GoInt)];
                    if (((_cert_5628083.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5628083.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5628169i32;
                    } else {
                        _gotoNext = 5628259i32;
                    };
                } else if (__value__ == (5628169i32)) {
                    _i_5628046--;
                    _gotoNext = 5628042i32;
                } else if (__value__ == (5628259i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5628083.extKeyUsage.length)) {
                        _gotoNext = 5628417i32;
                    } else {
                        _gotoNext = 5628423i32;
                    };
                } else if (__value__ == (5628263i32)) {
                    _i_5628275_0++;
                    _gotoNext = 5628418i32;
                } else if (__value__ == (5628298i32)) {
                    _usage_5628266 = _cert_5628083.extKeyUsage[(_i_5628275_0 : stdgo.GoInt)];
                    if (_usage_5628266 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5628330i32;
                    } else {
                        _gotoNext = 5628263i32;
                    };
                } else if (__value__ == (5628330i32)) {
                    _i_5628046--;
                    _gotoNext = 5628042i32;
                } else if (__value__ == (5628417i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5628083.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5628275_0 = __tmp__0;
                        _usage_5628266 = __tmp__1;
                    };
                    _gotoNext = 5628418i32;
                } else if (__value__ == (5628418i32)) {
                    if (_i_5628275_0 < (_cert_5628083.extKeyUsage.length)) {
                        _gotoNext = 5628298i32;
                    } else {
                        _gotoNext = 5628423i32;
                    };
                } else if (__value__ == (5628423i32)) {
                    _invalidUsage_5628429 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5628461i32;
                } else if (__value__ == (5628461i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5627718.length)) {
                        _gotoNext = 5628804i32;
                    } else {
                        _gotoNext = 5628075i32;
                    };
                } else if (__value__ == (5628487i32)) {
                    _i_5628487++;
                    _gotoNext = 5628805i32;
                } else if (__value__ == (5628521i32)) {
                    _requestedUsage_5628490 = _usages_5627718[(_i_5628487 : stdgo.GoInt)];
                    if (_requestedUsage_5628490 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5628560i32;
                    } else {
                        _gotoNext = 5628584i32;
                    };
                } else if (__value__ == (5628560i32)) {
                    _i_5628487++;
                    _gotoNext = 5628805i32;
                } else if (__value__ == (5628584i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5628083.extKeyUsage.length)) {
                        _gotoNext = 5628699i32;
                    } else {
                        _gotoNext = 5628706i32;
                    };
                } else if (__value__ == (5628588i32)) {
                    _i_5628600_0++;
                    _gotoNext = 5628700i32;
                } else if (__value__ == (5628623i32)) {
                    _usage_5628591 = _cert_5628083.extKeyUsage[(_i_5628600_0 : stdgo.GoInt)];
                    if (_requestedUsage_5628490 == (_usage_5628591)) {
                        _gotoNext = 5628656i32;
                    } else {
                        _gotoNext = 5628588i32;
                    };
                } else if (__value__ == (5628656i32)) {
                    _i_5628487++;
                    _gotoNext = 5628805i32;
                } else if (__value__ == (5628699i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5628083.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5628600_0 = __tmp__0;
                        _usage_5628591 = __tmp__1;
                    };
                    _gotoNext = 5628700i32;
                } else if (__value__ == (5628700i32)) {
                    if (_i_5628600_0 < (_cert_5628083.extKeyUsage.length)) {
                        _gotoNext = 5628623i32;
                    } else {
                        _gotoNext = 5628706i32;
                    };
                } else if (__value__ == (5628706i32)) {
                    _usages_5627718[(_i_5628487 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5627832--;
                    if (_usagesRemaining_5627832 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5628779i32;
                    } else {
                        _gotoNext = 5628487i32;
                    };
                } else if (__value__ == (5628779i32)) {
                    return false;
                    _gotoNext = 5628487i32;
                } else if (__value__ == (5628804i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5627718[(0i32 : stdgo.GoInt)];
                        _i_5628487 = __tmp__0;
                        _requestedUsage_5628490 = __tmp__1;
                    };
                    _gotoNext = 5628805i32;
                } else if (__value__ == (5628805i32)) {
                    if (_i_5628487 < (_usages_5627718.length)) {
                        _gotoNext = 5628521i32;
                    } else {
                        _gotoNext = 5628075i32;
                    };
                } else if (__value__ == (5628812i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
