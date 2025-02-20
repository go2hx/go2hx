package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5635271_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5635596_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5634806i32;
                    } else {
                        _gotoNext = 5634828i32;
                    };
                } else if (__value__ == (5634806i32)) {
                    return false;
                    _gotoNext = 5634828i32;
                } else if (__value__ == (5634828i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5635027i32;
                } else if (__value__ == (5635027i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635038i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5635075i32;
                    } else {
                        _gotoNext = 5635808i32;
                    };
                } else if (__value__ == (5635071i32)) {
                    _i_7--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635075i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5635165i32;
                    } else {
                        _gotoNext = 5635255i32;
                    };
                } else if (__value__ == (5635165i32)) {
                    _i_7--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635255i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635413i32;
                    } else {
                        _gotoNext = 5635419i32;
                    };
                } else if (__value__ == (5635259i32)) {
                    _i_5635271_9++;
                    _gotoNext = 5635414i32;
                } else if (__value__ == (5635294i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5635271_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635326i32;
                    } else {
                        _gotoNext = 5635259i32;
                    };
                } else if (__value__ == (5635326i32)) {
                    _i_7--;
                    _gotoNext = 5635038i32;
                } else if (__value__ == (5635413i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635271_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5635414i32;
                } else if (__value__ == (5635414i32)) {
                    if (_i_5635271_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635294i32;
                    } else {
                        _gotoNext = 5635419i32;
                    };
                } else if (__value__ == (5635419i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5635457i32;
                } else if (__value__ == (5635457i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5635800i32;
                    } else {
                        _gotoNext = 5635071i32;
                    };
                } else if (__value__ == (5635483i32)) {
                    _i_12++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635517i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5635556i32;
                    } else {
                        _gotoNext = 5635580i32;
                    };
                } else if (__value__ == (5635556i32)) {
                    _i_12++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635580i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635695i32;
                    } else {
                        _gotoNext = 5635702i32;
                    };
                } else if (__value__ == (5635584i32)) {
                    _i_5635596_14++;
                    _gotoNext = 5635696i32;
                } else if (__value__ == (5635619i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5635596_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5635652i32;
                    } else {
                        _gotoNext = 5635584i32;
                    };
                } else if (__value__ == (5635652i32)) {
                    _i_12++;
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635695i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5635596_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5635696i32;
                } else if (__value__ == (5635696i32)) {
                    if (_i_5635596_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5635619i32;
                    } else {
                        _gotoNext = 5635702i32;
                    };
                } else if (__value__ == (5635702i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
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
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5635801i32;
                } else if (__value__ == (5635801i32)) {
                    if (_i_12 < (_usages_5.length)) {
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
