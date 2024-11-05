package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5635271_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5635079:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5635042:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5635486:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5635483:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5635425:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_5634828:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5634714:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5635587:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5635596_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5635262:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5634714 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5634714, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5634806i32;
                    } else {
                        _gotoNext = 5634828i32;
                    };
                } else if (__value__ == (5634806i32)) {
                    return false;
                    _gotoNext = 5634828i32;
                } else if (__value__ == (5634828i32)) {
                    _usagesRemaining_5634828 = (_usages_5634714.length);
                    _gotoNext = 5635027i32;
                } else if (__value__ == (5635027i32)) {
                    _i_5635042 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635038i32)) {
                    if (!nextCertBreak && ((_i_5635042 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635075i32;
                    } else {
                        _gotoNext = 5635808i32;
                    };
                } else if (__value__ == (5635071i32)) {
                    _i_5635042--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635075i32)) {
                    _cert_5635079 = _chain[(_i_5635042 : stdgo.GoInt)];
                    if (((_cert_5635079.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5635079.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635165i32;
                    } else {
                        _gotoNext = 5635255i32;
                    };
                } else if (__value__ == (5635165i32)) {
                    _i_5635042--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635255i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635079.extKeyUsage.length)) {
                        _gotoNext = 5635413i32;
                    } else {
                        _gotoNext = 5635419i32;
                    };
                } else if (__value__ == (5635259i32)) {
                    _i_5635271_0++;
                    _gotoNext = 5635414i32;
                } else if (__value__ == (5635294i32)) {
                    _usage_5635262 = _cert_5635079.extKeyUsage[(_i_5635271_0 : stdgo.GoInt)];
                    if (_usage_5635262 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635326i32;
                    } else {
                        _gotoNext = 5635259i32;
                    };
                } else if (__value__ == (5635326i32)) {
                    _i_5635042--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635413i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635079.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635271_0 = __tmp__0;
                        _usage_5635262 = __tmp__1;
                    };
                    _gotoNext = 5635414i32;
                } else if (__value__ == (5635414i32)) {
                    if (_i_5635271_0 < (_cert_5635079.extKeyUsage.length)) {
                        _gotoNext = 5635294i32;
                    } else {
                        _gotoNext = 5635419i32;
                    };
                } else if (__value__ == (5635419i32)) {
                    _invalidUsage_5635425 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5635457i32;
                } else if (__value__ == (5635457i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5634714.length)) {
                        _gotoNext = 5635800i32;
                    } else {
                        _gotoNext = 5635071i32;
                    };
                } else if (__value__ == (5635483i32)) {
                    _i_5635483++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635517i32)) {
                    _requestedUsage_5635486 = _usages_5634714[(_i_5635483 : stdgo.GoInt)];
                    if (_requestedUsage_5635486 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5635556i32;
                    } else {
                        _gotoNext = 5635580i32;
                    };
                } else if (__value__ == (5635556i32)) {
                    _i_5635483++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635580i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5635079.extKeyUsage.length)) {
                        _gotoNext = 5635695i32;
                    } else {
                        _gotoNext = 5635702i32;
                    };
                } else if (__value__ == (5635584i32)) {
                    _i_5635596_0++;
                    _gotoNext = 5635696i32;
                } else if (__value__ == (5635619i32)) {
                    _usage_5635587 = _cert_5635079.extKeyUsage[(_i_5635596_0 : stdgo.GoInt)];
                    if (_requestedUsage_5635486 == (_usage_5635587)) {
                        _gotoNext = 5635652i32;
                    } else {
                        _gotoNext = 5635584i32;
                    };
                } else if (__value__ == (5635652i32)) {
                    _i_5635483++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635695i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5635079.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635596_0 = __tmp__0;
                        _usage_5635587 = __tmp__1;
                    };
                    _gotoNext = 5635696i32;
                } else if (__value__ == (5635696i32)) {
                    if (_i_5635596_0 < (_cert_5635079.extKeyUsage.length)) {
                        _gotoNext = 5635619i32;
                    } else {
                        _gotoNext = 5635702i32;
                    };
                } else if (__value__ == (5635702i32)) {
                    _usages_5634714[(_i_5635483 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5634828--;
                    if (_usagesRemaining_5634828 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5635775i32;
                    } else {
                        _gotoNext = 5635483i32;
                    };
                } else if (__value__ == (5635775i32)) {
                    return false;
                    _gotoNext = 5635483i32;
                } else if (__value__ == (5635800i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5634714[(0i32 : stdgo.GoInt)];
                        _i_5635483 = __tmp__0;
                        _requestedUsage_5635486 = __tmp__1;
                    };
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635801i32)) {
                    if (_i_5635483 < (_usages_5634714.length)) {
                        _gotoNext = 5635517i32;
                    } else {
                        _gotoNext = 5635071i32;
                    };
                } else if (__value__ == (5635808i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
