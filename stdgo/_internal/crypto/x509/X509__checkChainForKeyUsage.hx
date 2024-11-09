package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _invalidUsage_5592695:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_5592312:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5591984:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5592753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5592532:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5592541_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5592349:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5592098:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5592857:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5592866_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5592756:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5591984 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5591984, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5592076i32;
                    } else {
                        _gotoNext = 5592098i32;
                    };
                } else if (__value__ == (5592076i32)) {
                    return false;
                    _gotoNext = 5592098i32;
                } else if (__value__ == (5592098i32)) {
                    _usagesRemaining_5592098 = (_usages_5591984.length);
                    _gotoNext = 5592297i32;
                } else if (__value__ == (5592297i32)) {
                    _i_5592312 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5592308i32;
                } else if (__value__ == (5592308i32)) {
                    if (!nextCertBreak && ((_i_5592312 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5592345i32;
                    } else {
                        _gotoNext = 5593078i32;
                    };
                } else if (__value__ == (5592341i32)) {
                    _i_5592312--;
                    _gotoNext = 5592308i32;
                } else if (__value__ == (5592345i32)) {
                    _cert_5592349 = _chain[(_i_5592312 : stdgo.GoInt)];
                    if (((_cert_5592349.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5592349.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5592435i32;
                    } else {
                        _gotoNext = 5592525i32;
                    };
                } else if (__value__ == (5592435i32)) {
                    _i_5592312--;
                    _gotoNext = 5592308i32;
                } else if (__value__ == (5592525i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5592349.extKeyUsage.length)) {
                        _gotoNext = 5592683i32;
                    } else {
                        _gotoNext = 5592689i32;
                    };
                } else if (__value__ == (5592529i32)) {
                    _i_5592541_0++;
                    _gotoNext = 5592684i32;
                } else if (__value__ == (5592564i32)) {
                    _usage_5592532 = _cert_5592349.extKeyUsage[(_i_5592541_0 : stdgo.GoInt)];
                    if (_usage_5592532 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5592596i32;
                    } else {
                        _gotoNext = 5592529i32;
                    };
                } else if (__value__ == (5592596i32)) {
                    _i_5592312--;
                    _gotoNext = 5592308i32;
                } else if (__value__ == (5592683i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5592349.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5592541_0 = __tmp__0;
                        _usage_5592532 = __tmp__1;
                    };
                    _gotoNext = 5592684i32;
                } else if (__value__ == (5592684i32)) {
                    if (_i_5592541_0 < (_cert_5592349.extKeyUsage.length)) {
                        _gotoNext = 5592564i32;
                    } else {
                        _gotoNext = 5592689i32;
                    };
                } else if (__value__ == (5592689i32)) {
                    _invalidUsage_5592695 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5592727i32;
                } else if (__value__ == (5592727i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5591984.length)) {
                        _gotoNext = 5593070i32;
                    } else {
                        _gotoNext = 5592341i32;
                    };
                } else if (__value__ == (5592753i32)) {
                    _i_5592753++;
                    _gotoNext = 5593071i32;
                } else if (__value__ == (5592787i32)) {
                    _requestedUsage_5592756 = _usages_5591984[(_i_5592753 : stdgo.GoInt)];
                    if (_requestedUsage_5592756 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5592826i32;
                    } else {
                        _gotoNext = 5592850i32;
                    };
                } else if (__value__ == (5592826i32)) {
                    _i_5592753++;
                    _gotoNext = 5593071i32;
                } else if (__value__ == (5592850i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5592349.extKeyUsage.length)) {
                        _gotoNext = 5592965i32;
                    } else {
                        _gotoNext = 5592972i32;
                    };
                } else if (__value__ == (5592854i32)) {
                    _i_5592866_0++;
                    _gotoNext = 5592966i32;
                } else if (__value__ == (5592889i32)) {
                    _usage_5592857 = _cert_5592349.extKeyUsage[(_i_5592866_0 : stdgo.GoInt)];
                    if (_requestedUsage_5592756 == (_usage_5592857)) {
                        _gotoNext = 5592922i32;
                    } else {
                        _gotoNext = 5592854i32;
                    };
                } else if (__value__ == (5592922i32)) {
                    _i_5592753++;
                    _gotoNext = 5593071i32;
                } else if (__value__ == (5592965i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5592349.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5592866_0 = __tmp__0;
                        _usage_5592857 = __tmp__1;
                    };
                    _gotoNext = 5592966i32;
                } else if (__value__ == (5592966i32)) {
                    if (_i_5592866_0 < (_cert_5592349.extKeyUsage.length)) {
                        _gotoNext = 5592889i32;
                    } else {
                        _gotoNext = 5592972i32;
                    };
                } else if (__value__ == (5592972i32)) {
                    _usages_5591984[(_i_5592753 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5592098--;
                    if (_usagesRemaining_5592098 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5593045i32;
                    } else {
                        _gotoNext = 5592753i32;
                    };
                } else if (__value__ == (5593045i32)) {
                    return false;
                    _gotoNext = 5592753i32;
                } else if (__value__ == (5593070i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5591984[(0i32 : stdgo.GoInt)];
                        _i_5592753 = __tmp__0;
                        _requestedUsage_5592756 = __tmp__1;
                    };
                    _gotoNext = 5593071i32;
                } else if (__value__ == (5593071i32)) {
                    if (_i_5592753 < (_usages_5591984.length)) {
                        _gotoNext = 5592787i32;
                    } else {
                        _gotoNext = 5592341i32;
                    };
                } else if (__value__ == (5593078i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
