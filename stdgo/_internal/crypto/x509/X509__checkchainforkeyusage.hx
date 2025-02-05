package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5583286_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5583173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5583115:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_5582518:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5582404:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_5583277:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_5583176:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_5582952:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5582961_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5582769:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_5582732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5582404 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5582404.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5582496i32;
                    } else {
                        _gotoNext = 5582518i32;
                    };
                } else if (__value__ == (5582496i32)) {
                    return false;
                    _gotoNext = 5582518i32;
                } else if (__value__ == (5582518i32)) {
                    _usagesRemaining_5582518 = (_usages_5582404.length);
                    _gotoNext = 5582717i32;
                } else if (__value__ == (5582717i32)) {
                    _i_5582732 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5582728i32;
                } else if (__value__ == (5582728i32)) {
                    if (!nextCertBreak && ((_i_5582732 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5582765i32;
                    } else {
                        _gotoNext = 5583498i32;
                    };
                } else if (__value__ == (5582761i32)) {
                    _i_5582732--;
                    _gotoNext = 5582728i32;
                } else if (__value__ == (5582765i32)) {
                    _cert_5582769 = _chain[(_i_5582732 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5582769 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5582855i32;
                    } else {
                        _gotoNext = 5582945i32;
                    };
                } else if (__value__ == (5582855i32)) {
                    _i_5582732--;
                    _gotoNext = 5582728i32;
                } else if (__value__ == (5582945i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583103i32;
                    } else {
                        _gotoNext = 5583109i32;
                    };
                } else if (__value__ == (5582949i32)) {
                    _i_5582961_0++;
                    _gotoNext = 5583104i32;
                } else if (__value__ == (5582984i32)) {
                    _usage_5582952 = (@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage[(_i_5582961_0 : stdgo.GoInt)];
                    if (_usage_5582952 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5583016i32;
                    } else {
                        _gotoNext = 5582949i32;
                    };
                } else if (__value__ == (5583016i32)) {
                    _i_5582732--;
                    _gotoNext = 5582728i32;
                } else if (__value__ == (5583103i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5582961_0 = __tmp__0;
                        _usage_5582952 = __tmp__1;
                    };
                    _gotoNext = 5583104i32;
                } else if (__value__ == (5583104i32)) {
                    if (_i_5582961_0 < ((@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5582984i32;
                    } else {
                        _gotoNext = 5583109i32;
                    };
                } else if (__value__ == (5583109i32)) {
                    _invalidUsage_5583115 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5583147i32;
                } else if (__value__ == (5583147i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5582404.length)) {
                        _gotoNext = 5583490i32;
                    } else {
                        _gotoNext = 5582761i32;
                    };
                } else if (__value__ == (5583173i32)) {
                    _i_5583173++;
                    _gotoNext = 5583491i32;
                } else if (__value__ == (5583207i32)) {
                    _requestedUsage_5583176 = _usages_5582404[(_i_5583173 : stdgo.GoInt)];
                    if (_requestedUsage_5583176 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5583246i32;
                    } else {
                        _gotoNext = 5583270i32;
                    };
                } else if (__value__ == (5583246i32)) {
                    _i_5583173++;
                    _gotoNext = 5583491i32;
                } else if (__value__ == (5583270i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583385i32;
                    } else {
                        _gotoNext = 5583392i32;
                    };
                } else if (__value__ == (5583274i32)) {
                    _i_5583286_0++;
                    _gotoNext = 5583386i32;
                } else if (__value__ == (5583309i32)) {
                    _usage_5583277 = (@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage[(_i_5583286_0 : stdgo.GoInt)];
                    if (_requestedUsage_5583176 == (_usage_5583277)) {
                        _gotoNext = 5583342i32;
                    } else {
                        _gotoNext = 5583274i32;
                    };
                } else if (__value__ == (5583342i32)) {
                    _i_5583173++;
                    _gotoNext = 5583491i32;
                } else if (__value__ == (5583385i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5583286_0 = __tmp__0;
                        _usage_5583277 = __tmp__1;
                    };
                    _gotoNext = 5583386i32;
                } else if (__value__ == (5583386i32)) {
                    if (_i_5583286_0 < ((@:checkr _cert_5582769 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5583309i32;
                    } else {
                        _gotoNext = 5583392i32;
                    };
                } else if (__value__ == (5583392i32)) {
                    _usages_5582404[(_i_5583173 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_5582518--;
                    if (_usagesRemaining_5582518 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5583465i32;
                    } else {
                        _gotoNext = 5583173i32;
                    };
                } else if (__value__ == (5583465i32)) {
                    return false;
                    _gotoNext = 5583173i32;
                } else if (__value__ == (5583490i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5582404[(0i32 : stdgo.GoInt)];
                        _i_5583173 = __tmp__0;
                        _requestedUsage_5583176 = __tmp__1;
                    };
                    _gotoNext = 5583491i32;
                } else if (__value__ == (5583491i32)) {
                    if (_i_5583173 < (_usages_5582404.length)) {
                        _gotoNext = 5583207i32;
                    } else {
                        _gotoNext = 5582761i32;
                    };
                } else if (__value__ == (5583498i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
