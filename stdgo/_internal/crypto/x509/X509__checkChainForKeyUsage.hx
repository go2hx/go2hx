package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5630764:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5630773_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5630602:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5630448_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5630219:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5630005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5630663:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5630660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5630439:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5630256:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _usages_5629891:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5629891 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5629891.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5629983i32;
                    } else {
                        _gotoNext = 5630005i32;
                    };
                } else if (__value__ == (5629983i32)) {
                    return false;
                    _gotoNext = 5630005i32;
                } else if (__value__ == (5630005i32)) {
                    _usagesRemaining_5630005 = (_usages_5629891.length);
                    _gotoNext = 5630204i32;
                } else if (__value__ == (5630204i32)) {
                    _i_5630219 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5630215i32;
                } else if (__value__ == (5630215i32)) {
                    if (!nextCertBreak && ((_i_5630219 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5630252i32;
                    } else {
                        _gotoNext = 5630985i32;
                    };
                } else if (__value__ == (5630248i32)) {
                    _i_5630219--;
                    _gotoNext = 5630215i32;
                } else if (__value__ == (5630252i32)) {
                    _cert_5630256 = _chain[(_i_5630219 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5630256 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5630342i32;
                    } else {
                        _gotoNext = 5630432i32;
                    };
                } else if (__value__ == (5630342i32)) {
                    _i_5630219--;
                    _gotoNext = 5630215i32;
                } else if (__value__ == (5630432i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630590i32;
                    } else {
                        _gotoNext = 5630596i32;
                    };
                } else if (__value__ == (5630436i32)) {
                    _i_5630448_0++;
                    _gotoNext = 5630591i32;
                } else if (__value__ == (5630471i32)) {
                    _usage_5630439 = (@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage[(_i_5630448_0 : stdgo.GoInt)];
                    if (_usage_5630439 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5630503i32;
                    } else {
                        _gotoNext = 5630436i32;
                    };
                } else if (__value__ == (5630503i32)) {
                    _i_5630219--;
                    _gotoNext = 5630215i32;
                } else if (__value__ == (5630590i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5630448_0 = __tmp__0;
                        _usage_5630439 = __tmp__1;
                    };
                    _gotoNext = 5630591i32;
                } else if (__value__ == (5630591i32)) {
                    if (_i_5630448_0 < ((@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630471i32;
                    } else {
                        _gotoNext = 5630596i32;
                    };
                } else if (__value__ == (5630596i32)) {
                    _invalidUsage_5630602 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5630634i32;
                } else if (__value__ == (5630634i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5629891.length)) {
                        _gotoNext = 5630977i32;
                    } else {
                        _gotoNext = 5630248i32;
                    };
                } else if (__value__ == (5630660i32)) {
                    _i_5630660++;
                    _gotoNext = 5630978i32;
                } else if (__value__ == (5630694i32)) {
                    _requestedUsage_5630663 = _usages_5629891[(_i_5630660 : stdgo.GoInt)];
                    if (_requestedUsage_5630663 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5630733i32;
                    } else {
                        _gotoNext = 5630757i32;
                    };
                } else if (__value__ == (5630733i32)) {
                    _i_5630660++;
                    _gotoNext = 5630978i32;
                } else if (__value__ == (5630757i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630872i32;
                    } else {
                        _gotoNext = 5630879i32;
                    };
                } else if (__value__ == (5630761i32)) {
                    _i_5630773_0++;
                    _gotoNext = 5630873i32;
                } else if (__value__ == (5630796i32)) {
                    _usage_5630764 = (@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage[(_i_5630773_0 : stdgo.GoInt)];
                    if (_requestedUsage_5630663 == (_usage_5630764)) {
                        _gotoNext = 5630829i32;
                    } else {
                        _gotoNext = 5630761i32;
                    };
                } else if (__value__ == (5630829i32)) {
                    _i_5630660++;
                    _gotoNext = 5630978i32;
                } else if (__value__ == (5630872i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5630773_0 = __tmp__0;
                        _usage_5630764 = __tmp__1;
                    };
                    _gotoNext = 5630873i32;
                } else if (__value__ == (5630873i32)) {
                    if (_i_5630773_0 < ((@:checkr _cert_5630256 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5630796i32;
                    } else {
                        _gotoNext = 5630879i32;
                    };
                } else if (__value__ == (5630879i32)) {
                    _usages_5629891[(_i_5630660 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5630005--;
                    if (_usagesRemaining_5630005 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5630952i32;
                    } else {
                        _gotoNext = 5630660i32;
                    };
                } else if (__value__ == (5630952i32)) {
                    return false;
                    _gotoNext = 5630660i32;
                } else if (__value__ == (5630977i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5629891[(0i32 : stdgo.GoInt)];
                        _i_5630660 = __tmp__0;
                        _requestedUsage_5630663 = __tmp__1;
                    };
                    _gotoNext = 5630978i32;
                } else if (__value__ == (5630978i32)) {
                    if (_i_5630660 < (_usages_5629891.length)) {
                        _gotoNext = 5630694i32;
                    } else {
                        _gotoNext = 5630248i32;
                    };
                } else if (__value__ == (5630985i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
