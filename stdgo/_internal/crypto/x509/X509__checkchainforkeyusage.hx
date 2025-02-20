package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_5590915_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_5590590_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590125i32;
                    } else {
                        _gotoNext = 5590147i32;
                    };
                } else if (__value__ == (5590125i32)) {
                    return false;
                    _gotoNext = 5590147i32;
                } else if (__value__ == (5590147i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5590346i32;
                } else if (__value__ == (5590346i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5590357i32;
                } else if (__value__ == (5590357i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5590394i32;
                    } else {
                        _gotoNext = 5591127i32;
                    };
                } else if (__value__ == (5590390i32)) {
                    _i_7--;
                    _gotoNext = 5590357i32;
                } else if (__value__ == (5590394i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5590484i32;
                    } else {
                        _gotoNext = 5590574i32;
                    };
                } else if (__value__ == (5590484i32)) {
                    _i_7--;
                    _gotoNext = 5590357i32;
                } else if (__value__ == (5590574i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5590732i32;
                    } else {
                        _gotoNext = 5590738i32;
                    };
                } else if (__value__ == (5590578i32)) {
                    _i_5590590_9++;
                    _gotoNext = 5590733i32;
                } else if (__value__ == (5590613i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5590590_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5590645i32;
                    } else {
                        _gotoNext = 5590578i32;
                    };
                } else if (__value__ == (5590645i32)) {
                    _i_7--;
                    _gotoNext = 5590357i32;
                } else if (__value__ == (5590732i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5590590_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5590733i32;
                } else if (__value__ == (5590733i32)) {
                    if (_i_5590590_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5590613i32;
                    } else {
                        _gotoNext = 5590738i32;
                    };
                } else if (__value__ == (5590738i32)) {
                    _invalidUsage_11 = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _gotoNext = 5590776i32;
                } else if (__value__ == (5590776i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5591119i32;
                    } else {
                        _gotoNext = 5590390i32;
                    };
                } else if (__value__ == (5590802i32)) {
                    _i_12++;
                    _gotoNext = 5591120i32;
                } else if (__value__ == (5590836i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5590875i32;
                    } else {
                        _gotoNext = 5590899i32;
                    };
                } else if (__value__ == (5590875i32)) {
                    _i_12++;
                    _gotoNext = 5591120i32;
                } else if (__value__ == (5590899i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5591014i32;
                    } else {
                        _gotoNext = 5591021i32;
                    };
                } else if (__value__ == (5590903i32)) {
                    _i_5590915_14++;
                    _gotoNext = 5591015i32;
                } else if (__value__ == (5590938i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_i_5590915_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5590971i32;
                    } else {
                        _gotoNext = 5590903i32;
                    };
                } else if (__value__ == (5590971i32)) {
                    _i_12++;
                    _gotoNext = 5591120i32;
                } else if (__value__ == (5591014i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5590915_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5591015i32;
                } else if (__value__ == (5591015i32)) {
                    if (_i_5590915_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5590938i32;
                    } else {
                        _gotoNext = 5591021i32;
                    };
                } else if (__value__ == (5591021i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5591094i32;
                    } else {
                        _gotoNext = 5590802i32;
                    };
                } else if (__value__ == (5591094i32)) {
                    return false;
                    _gotoNext = 5590802i32;
                } else if (__value__ == (5591119i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5591120i32;
                } else if (__value__ == (5591120i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5590836i32;
                    } else {
                        _gotoNext = 5590390i32;
                    };
                } else if (__value__ == (5591127i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
