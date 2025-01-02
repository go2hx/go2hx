package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5545276:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5545114:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usagesRemaining_5544517:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5545285_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5545175:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5545172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5544951:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5544960_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5544768:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5544731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5544403:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5544403 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5544403.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5544495i32;
                    } else {
                        _gotoNext = 5544517i32;
                    };
                } else if (__value__ == (5544495i32)) {
                    return false;
                    _gotoNext = 5544517i32;
                } else if (__value__ == (5544517i32)) {
                    _usagesRemaining_5544517 = (_usages_5544403.length);
                    _gotoNext = 5544716i32;
                } else if (__value__ == (5544716i32)) {
                    _i_5544731 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5544727i32;
                } else if (__value__ == (5544727i32)) {
                    if (!nextCertBreak && ((_i_5544731 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5544764i32;
                    } else {
                        _gotoNext = 5545497i32;
                    };
                } else if (__value__ == (5544760i32)) {
                    _i_5544731--;
                    _gotoNext = 5544727i32;
                } else if (__value__ == (5544764i32)) {
                    _cert_5544768 = _chain[(_i_5544731 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5544768 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5544854i32;
                    } else {
                        _gotoNext = 5544944i32;
                    };
                } else if (__value__ == (5544854i32)) {
                    _i_5544731--;
                    _gotoNext = 5544727i32;
                } else if (__value__ == (5544944i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5545102i32;
                    } else {
                        _gotoNext = 5545108i32;
                    };
                } else if (__value__ == (5544948i32)) {
                    _i_5544960_0++;
                    _gotoNext = 5545103i32;
                } else if (__value__ == (5544983i32)) {
                    _usage_5544951 = (@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage[(_i_5544960_0 : stdgo.GoInt)];
                    if (_usage_5544951 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5545015i32;
                    } else {
                        _gotoNext = 5544948i32;
                    };
                } else if (__value__ == (5545015i32)) {
                    _i_5544731--;
                    _gotoNext = 5544727i32;
                } else if (__value__ == (5545102i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5544960_0 = __tmp__0;
                        _usage_5544951 = __tmp__1;
                    };
                    _gotoNext = 5545103i32;
                } else if (__value__ == (5545103i32)) {
                    if (_i_5544960_0 < ((@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5544983i32;
                    } else {
                        _gotoNext = 5545108i32;
                    };
                } else if (__value__ == (5545108i32)) {
                    _invalidUsage_5545114 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5545146i32;
                } else if (__value__ == (5545146i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5544403.length)) {
                        _gotoNext = 5545489i32;
                    } else {
                        _gotoNext = 5544760i32;
                    };
                } else if (__value__ == (5545172i32)) {
                    _i_5545172++;
                    _gotoNext = 5545490i32;
                } else if (__value__ == (5545206i32)) {
                    _requestedUsage_5545175 = _usages_5544403[(_i_5545172 : stdgo.GoInt)];
                    if (_requestedUsage_5545175 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5545245i32;
                    } else {
                        _gotoNext = 5545269i32;
                    };
                } else if (__value__ == (5545245i32)) {
                    _i_5545172++;
                    _gotoNext = 5545490i32;
                } else if (__value__ == (5545269i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5545384i32;
                    } else {
                        _gotoNext = 5545391i32;
                    };
                } else if (__value__ == (5545273i32)) {
                    _i_5545285_0++;
                    _gotoNext = 5545385i32;
                } else if (__value__ == (5545308i32)) {
                    _usage_5545276 = (@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage[(_i_5545285_0 : stdgo.GoInt)];
                    if (_requestedUsage_5545175 == (_usage_5545276)) {
                        _gotoNext = 5545341i32;
                    } else {
                        _gotoNext = 5545273i32;
                    };
                } else if (__value__ == (5545341i32)) {
                    _i_5545172++;
                    _gotoNext = 5545490i32;
                } else if (__value__ == (5545384i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5545285_0 = __tmp__0;
                        _usage_5545276 = __tmp__1;
                    };
                    _gotoNext = 5545385i32;
                } else if (__value__ == (5545385i32)) {
                    if (_i_5545285_0 < ((@:checkr _cert_5544768 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5545308i32;
                    } else {
                        _gotoNext = 5545391i32;
                    };
                } else if (__value__ == (5545391i32)) {
                    _usages_5544403[(_i_5545172 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5544517--;
                    if (_usagesRemaining_5544517 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5545464i32;
                    } else {
                        _gotoNext = 5545172i32;
                    };
                } else if (__value__ == (5545464i32)) {
                    return false;
                    _gotoNext = 5545172i32;
                } else if (__value__ == (5545489i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5544403[(0i32 : stdgo.GoInt)];
                        _i_5545172 = __tmp__0;
                        _requestedUsage_5545175 = __tmp__1;
                    };
                    _gotoNext = 5545490i32;
                } else if (__value__ == (5545490i32)) {
                    if (_i_5545172 < (_usages_5544403.length)) {
                        _gotoNext = 5545206i32;
                    } else {
                        _gotoNext = 5544760i32;
                    };
                } else if (__value__ == (5545497i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
