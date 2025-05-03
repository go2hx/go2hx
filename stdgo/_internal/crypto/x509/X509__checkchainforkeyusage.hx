package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _iterator_5547495_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i64;
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5547170_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
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
                        _gotoNext = 5546705i64;
                    } else {
                        _gotoNext = 5546727i64;
                    };
                } else if (__value__ == (5546705i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1129"
                    return false;
                    _gotoNext = 5546727i64;
                } else if (__value__ == (5546727i64)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5546926i64;
                } else if (__value__ == (5546926i64)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5546937i64;
                } else if (__value__ == (5546937i64)) {
                    //"file://#L0"
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5546974i64;
                    } else {
                        _gotoNext = 5547707i64;
                    };
                } else if (__value__ == (5546970i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5546937i64;
                } else if (__value__ == (5546974i64)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1141"
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5547064i64;
                    } else {
                        _gotoNext = 5547154i64;
                    };
                } else if (__value__ == (5547064i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5546937i64;
                } else if (__value__ == (5547154i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5547312i64;
                    } else {
                        _gotoNext = 5547318i64;
                    };
                } else if (__value__ == (5547158i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    _iterator_5547170_9++;
                    _gotoNext = 5547313i64;
                } else if (__value__ == (5547193i64)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5547170_9 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1147"
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5547225i64;
                    } else {
                        _gotoNext = 5547158i64;
                    };
                } else if (__value__ == (5547225i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_7--;
                    _gotoNext = 5546937i64;
                } else if (__value__ == (5547312i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_5547170_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5547313i64;
                } else if (__value__ == (5547313i64)) {
                    //"file://#L0"
                    if (_iterator_5547170_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5547193i64;
                    } else {
                        _gotoNext = 5547318i64;
                    };
                } else if (__value__ == (5547318i64)) {
                    _gotoNext = 5547356i64;
                } else if (__value__ == (5547356i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    if ((0i64 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5547699i64;
                    } else {
                        _gotoNext = 5546970i64;
                    };
                } else if (__value__ == (5547382i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5547700i64;
                } else if (__value__ == (5547416i64)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1157"
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5547455i64;
                    } else {
                        _gotoNext = 5547479i64;
                    };
                } else if (__value__ == (5547455i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5547700i64;
                } else if (__value__ == (5547479i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5547594i64;
                    } else {
                        _gotoNext = 5547601i64;
                    };
                } else if (__value__ == (5547483i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    _iterator_5547495_14++;
                    _gotoNext = 5547595i64;
                } else if (__value__ == (5547518i64)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5547495_14 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1162"
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5547551i64;
                    } else {
                        _gotoNext = 5547483i64;
                    };
                } else if (__value__ == (5547551i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_12++;
                    _gotoNext = 5547700i64;
                } else if (__value__ == (5547594i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_5547495_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5547595i64;
                } else if (__value__ == (5547595i64)) {
                    //"file://#L0"
                    if (_iterator_5547495_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5547518i64;
                    } else {
                        _gotoNext = 5547601i64;
                    };
                } else if (__value__ == (5547601i64)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1168"
                    _usagesRemaining_6--;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1169"
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5547674i64;
                    } else {
                        _gotoNext = 5547382i64;
                    };
                } else if (__value__ == (5547674i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1170"
                    return false;
                    _gotoNext = 5547382i64;
                } else if (__value__ == (5547699i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _usages_5[(0i64 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5547700i64;
                } else if (__value__ == (5547700i64)) {
                    //"file://#L0"
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5547416i64;
                    } else {
                        _gotoNext = 5546970i64;
                    };
                } else if (__value__ == (5547707i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1175"
                    return true;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
