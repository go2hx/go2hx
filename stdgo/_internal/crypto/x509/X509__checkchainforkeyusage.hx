package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i64;
        var _iterator_5515910_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _iterator_5516235_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1126"
                    _usages_5.__copyTo__(_keyUsages);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1128"
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5515445i64;
                    } else {
                        _gotoNext = 5515467i64;
                    };
                } else if (__value__ == (5515445i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1129"
                    return false;
                    _gotoNext = 5515467i64;
                } else if (__value__ == (5515467i64)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5515666i64;
                } else if (__value__ == (5515666i64)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5515677i64;
                } else if (__value__ == (5515677i64)) {
                    //"file://#L0"
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5515714i64;
                    } else {
                        _gotoNext = 5516447i64;
                    };
                } else if (__value__ == (5515710i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5515677i64;
                } else if (__value__ == (5515714i64)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1141"
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5515804i64;
                    } else {
                        _gotoNext = 5515894i64;
                    };
                } else if (__value__ == (5515804i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5515677i64;
                } else if (__value__ == (5515894i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5516052i64;
                    } else {
                        _gotoNext = 5516058i64;
                    };
                } else if (__value__ == (5515898i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    _iterator_5515910_9++;
                    _gotoNext = 5516053i64;
                } else if (__value__ == (5515933i64)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5515910_9 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1147"
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5515965i64;
                    } else {
                        _gotoNext = 5515898i64;
                    };
                } else if (__value__ == (5515965i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5515677i64;
                } else if (__value__ == (5516052i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_5515910_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5516053i64;
                } else if (__value__ == (5516053i64)) {
                    //"file://#L0"
                    if (_iterator_5515910_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5515933i64;
                    } else {
                        _gotoNext = 5516058i64;
                    };
                } else if (__value__ == (5516058i64)) {
                    _gotoNext = 5516096i64;
                } else if (__value__ == (5516096i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    if ((0i64 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5516439i64;
                    } else {
                        _gotoNext = 5515710i64;
                    };
                } else if (__value__ == (5516122i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5516440i64;
                } else if (__value__ == (5516156i64)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1157"
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5516195i64;
                    } else {
                        _gotoNext = 5516219i64;
                    };
                } else if (__value__ == (5516195i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5516440i64;
                } else if (__value__ == (5516219i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5516334i64;
                    } else {
                        _gotoNext = 5516341i64;
                    };
                } else if (__value__ == (5516223i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    _iterator_5516235_14++;
                    _gotoNext = 5516335i64;
                } else if (__value__ == (5516258i64)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5516235_14 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1162"
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5516291i64;
                    } else {
                        _gotoNext = 5516223i64;
                    };
                } else if (__value__ == (5516291i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5516440i64;
                } else if (__value__ == (5516334i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_5516235_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5516335i64;
                } else if (__value__ == (5516335i64)) {
                    //"file://#L0"
                    if (_iterator_5516235_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5516258i64;
                    } else {
                        _gotoNext = 5516341i64;
                    };
                } else if (__value__ == (5516341i64)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1168"
                    _usagesRemaining_6--;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1169"
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5516414i64;
                    } else {
                        _gotoNext = 5516122i64;
                    };
                } else if (__value__ == (5516414i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1170"
                    return false;
                    _gotoNext = 5516122i64;
                } else if (__value__ == (5516439i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _usages_5[(0i64 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5516440i64;
                } else if (__value__ == (5516440i64)) {
                    //"file://#L0"
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5516156i64;
                    } else {
                        _gotoNext = 5515710i64;
                    };
                } else if (__value__ == (5516447i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1175"
                    return true;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
