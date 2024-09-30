package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        stdgo._internal.internal.Macro.controlFlow({
            var _usages = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
            stdgo.Go.copySlice(_usages, _keyUsages);
            if ((_chain.length) == ((0 : stdgo.GoInt))) {
                return false;
            };
            var _usagesRemaining = (_usages.length : stdgo.GoInt);
            @:label("NextCert") {
                var _i = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                    var _cert = _chain[(_i : stdgo.GoInt)];
                    if (((_cert.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        continue;
                    };
                    for (__1 => _usage in _cert.extKeyUsage) {
                        if (_usage == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                            @:jump("NextCert") continue;
                        };
                    };
                    {};
                    @:label("NextRequestedUsage") for (_i => _requestedUsage in _usages) {
                        if (_requestedUsage == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                            continue;
                        };
                        for (__2 => _usage in _cert.extKeyUsage) {
                            if (_requestedUsage == (_usage)) {
                                @:jump("NextRequestedUsage") continue;
                            };
                        };
                        _usages[(_i : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                        _usagesRemaining--;
                        if (_usagesRemaining == ((0 : stdgo.GoInt))) {
                            return false;
                        };
                    };
                });
            };
            return true;
        });
    }
