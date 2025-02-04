package stdgo._internal.crypto.tls;
function _ekmFromMasterSecret(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _serverRandom:stdgo.Slice<stdgo.GoUInt8>):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return function(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            {
                final __value__ = _label;
                if (__value__ == (("client finished" : stdgo.GoString)) || __value__ == (("server finished" : stdgo.GoString)) || __value__ == (("master secret" : stdgo.GoString)) || __value__ == (("key expansion" : stdgo.GoString))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/tls: reserved ExportKeyingMaterial label: %s" : stdgo.GoString), stdgo.Go.toInterface(_label)) };
                };
            };
            var _seedLen = ((_serverRandom.length) + (_clientRandom.length) : stdgo.GoInt);
            if (_context != null) {
                _seedLen = (_seedLen + (((2 : stdgo.GoInt) + (_context.length) : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _seed = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _seedLen).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _seed = (_seed.__append__(...(_clientRandom : Array<stdgo.GoUInt8>)));
            _seed = (_seed.__append__(...(_serverRandom : Array<stdgo.GoUInt8>)));
            if (_context != null) {
                if (((_context.length) >= (65536 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/tls: ExportKeyingMaterial context too long" : stdgo.GoString)) };
                };
                _seed = (_seed.__append__((((_context.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_context.length : stdgo.GoUInt8)));
                _seed = (_seed.__append__(...(_context : Array<stdgo.GoUInt8>)));
            };
            var _keyMaterial = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.tls.Tls__prfforversion._prfForVersion(_version, _suite)(_keyMaterial, _masterSecret, (_label : stdgo.Slice<stdgo.GoUInt8>), _seed);
            return { _0 : _keyMaterial, _1 : (null : stdgo.Error) };
        };
    }
