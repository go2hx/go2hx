package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_5628097_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5627772_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5627307i32;
                    } else {
                        _gotoNext = 5627329i32;
                    };
                } else if (__value__ == (5627307i32)) {
                    return false;
                    _gotoNext = 5627329i32;
                } else if (__value__ == (5627329i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5627528i32;
                } else if (__value__ == (5627528i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5627539i32;
                } else if (__value__ == (5627539i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5627576i32;
                    } else {
                        _gotoNext = 5628309i32;
                    };
                } else if (__value__ == (5627572i32)) {
                    _i_7--;
                    _gotoNext = 5627539i32;
                } else if (__value__ == (5627576i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5627666i32;
                    } else {
                        _gotoNext = 5627756i32;
                    };
                } else if (__value__ == (5627666i32)) {
                    _i_7--;
                    _gotoNext = 5627539i32;
                } else if (__value__ == (5627756i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5627914i32;
                    } else {
                        _gotoNext = 5627920i32;
                    };
                } else if (__value__ == (5627760i32)) {
                    _iterator_5627772_9++;
                    _gotoNext = 5627915i32;
                } else if (__value__ == (5627795i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5627772_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5627827i32;
                    } else {
                        _gotoNext = 5627760i32;
                    };
                } else if (__value__ == (5627827i32)) {
                    _i_7--;
                    _gotoNext = 5627539i32;
                } else if (__value__ == (5627914i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5627772_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5627915i32;
                } else if (__value__ == (5627915i32)) {
                    if (_iterator_5627772_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5627795i32;
                    } else {
                        _gotoNext = 5627920i32;
                    };
                } else if (__value__ == (5627920i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5627958i32;
                } else if (__value__ == (5627958i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5628301i32;
                    } else {
                        _gotoNext = 5627572i32;
                    };
                } else if (__value__ == (5627984i32)) {
                    _i_12++;
                    _gotoNext = 5628302i32;
                } else if (__value__ == (5628018i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5628057i32;
                    } else {
                        _gotoNext = 5628081i32;
                    };
                } else if (__value__ == (5628057i32)) {
                    _i_12++;
                    _gotoNext = 5628302i32;
                } else if (__value__ == (5628081i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5628196i32;
                    } else {
                        _gotoNext = 5628203i32;
                    };
                } else if (__value__ == (5628085i32)) {
                    _iterator_5628097_14++;
                    _gotoNext = 5628197i32;
                } else if (__value__ == (5628120i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5628097_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5628153i32;
                    } else {
                        _gotoNext = 5628085i32;
                    };
                } else if (__value__ == (5628153i32)) {
                    _i_12++;
                    _gotoNext = 5628302i32;
                } else if (__value__ == (5628196i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5628097_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5628197i32;
                } else if (__value__ == (5628197i32)) {
                    if (_iterator_5628097_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5628120i32;
                    } else {
                        _gotoNext = 5628203i32;
                    };
                } else if (__value__ == (5628203i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5628276i32;
                    } else {
                        _gotoNext = 5627984i32;
                    };
                } else if (__value__ == (5628276i32)) {
                    return false;
                    _gotoNext = 5627984i32;
                } else if (__value__ == (5628301i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5628302i32;
                } else if (__value__ == (5628302i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5628018i32;
                    } else {
                        _gotoNext = 5627572i32;
                    };
                } else if (__value__ == (5628309i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
