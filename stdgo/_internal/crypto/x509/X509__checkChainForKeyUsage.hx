package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _requestedUsage_5617043:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5616982:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5616819:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5616828_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5616599:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5617144:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5617153_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5617040:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5616636:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5616385:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5616271:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5616271 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5616271, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5616363i32;
                    } else {
                        _gotoNext = 5616385i32;
                    };
                } else if (__value__ == (5616363i32)) {
                    return false;
                    _gotoNext = 5616385i32;
                } else if (__value__ == (5616385i32)) {
                    _usagesRemaining_5616385 = (_usages_5616271.length);
                    _gotoNext = 5616584i32;
                } else if (__value__ == (5616584i32)) {
                    _i_5616599 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5616595i32;
                } else if (__value__ == (5616595i32)) {
                    if (!nextCertBreak && ((_i_5616599 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5616632i32;
                    } else {
                        _gotoNext = 5617365i32;
                    };
                } else if (__value__ == (5616628i32)) {
                    _i_5616599--;
                    _gotoNext = 5616595i32;
                } else if (__value__ == (5616632i32)) {
                    _cert_5616636 = _chain[(_i_5616599 : stdgo.GoInt)];
                    if (((_cert_5616636.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5616636.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5616722i32;
                    } else {
                        _gotoNext = 5616812i32;
                    };
                } else if (__value__ == (5616722i32)) {
                    _i_5616599--;
                    _gotoNext = 5616595i32;
                } else if (__value__ == (5616812i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5616636.extKeyUsage.length)) {
                        _gotoNext = 5616970i32;
                    } else {
                        _gotoNext = 5616976i32;
                    };
                } else if (__value__ == (5616816i32)) {
                    _i_5616828_0++;
                    _gotoNext = 5616971i32;
                } else if (__value__ == (5616851i32)) {
                    _usage_5616819 = _cert_5616636.extKeyUsage[(_i_5616828_0 : stdgo.GoInt)];
                    if (_usage_5616819 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5616883i32;
                    } else {
                        _gotoNext = 5616816i32;
                    };
                } else if (__value__ == (5616883i32)) {
                    _i_5616599--;
                    _gotoNext = 5616595i32;
                } else if (__value__ == (5616970i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5616636.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5616828_0 = __tmp__0;
                        _usage_5616819 = __tmp__1;
                    };
                    _gotoNext = 5616971i32;
                } else if (__value__ == (5616971i32)) {
                    if (_i_5616828_0 < (_cert_5616636.extKeyUsage.length)) {
                        _gotoNext = 5616851i32;
                    } else {
                        _gotoNext = 5616976i32;
                    };
                } else if (__value__ == (5616976i32)) {
                    _invalidUsage_5616982 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5617014i32;
                } else if (__value__ == (5617014i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5616271.length)) {
                        _gotoNext = 5617357i32;
                    } else {
                        _gotoNext = 5616628i32;
                    };
                } else if (__value__ == (5617040i32)) {
                    _i_5617040++;
                    _gotoNext = 5617358i32;
                } else if (__value__ == (5617074i32)) {
                    _requestedUsage_5617043 = _usages_5616271[(_i_5617040 : stdgo.GoInt)];
                    if (_requestedUsage_5617043 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5617113i32;
                    } else {
                        _gotoNext = 5617137i32;
                    };
                } else if (__value__ == (5617113i32)) {
                    _i_5617040++;
                    _gotoNext = 5617358i32;
                } else if (__value__ == (5617137i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5616636.extKeyUsage.length)) {
                        _gotoNext = 5617252i32;
                    } else {
                        _gotoNext = 5617259i32;
                    };
                } else if (__value__ == (5617141i32)) {
                    _i_5617153_0++;
                    _gotoNext = 5617253i32;
                } else if (__value__ == (5617176i32)) {
                    _usage_5617144 = _cert_5616636.extKeyUsage[(_i_5617153_0 : stdgo.GoInt)];
                    if (_requestedUsage_5617043 == (_usage_5617144)) {
                        _gotoNext = 5617209i32;
                    } else {
                        _gotoNext = 5617141i32;
                    };
                } else if (__value__ == (5617209i32)) {
                    _i_5617040++;
                    _gotoNext = 5617358i32;
                } else if (__value__ == (5617252i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5616636.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5617153_0 = __tmp__0;
                        _usage_5617144 = __tmp__1;
                    };
                    _gotoNext = 5617253i32;
                } else if (__value__ == (5617253i32)) {
                    if (_i_5617153_0 < (_cert_5616636.extKeyUsage.length)) {
                        _gotoNext = 5617176i32;
                    } else {
                        _gotoNext = 5617259i32;
                    };
                } else if (__value__ == (5617259i32)) {
                    _usages_5616271[(_i_5617040 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5616385--;
                    if (_usagesRemaining_5616385 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5617332i32;
                    } else {
                        _gotoNext = 5617040i32;
                    };
                } else if (__value__ == (5617332i32)) {
                    return false;
                    _gotoNext = 5617040i32;
                } else if (__value__ == (5617357i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5616271[(0i32 : stdgo.GoInt)];
                        _i_5617040 = __tmp__0;
                        _requestedUsage_5617043 = __tmp__1;
                    };
                    _gotoNext = 5617358i32;
                } else if (__value__ == (5617358i32)) {
                    if (_i_5617040 < (_usages_5616271.length)) {
                        _gotoNext = 5617074i32;
                    } else {
                        _gotoNext = 5616628i32;
                    };
                } else if (__value__ == (5617365i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
