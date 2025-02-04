package stdgo._internal.crypto.tls;
function _masterFromPreMasterSecret(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>, _preMasterSecret:stdgo.Slice<stdgo.GoUInt8>, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _serverRandom:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _seed = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_clientRandom.length) + (_serverRandom.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _seed = (_seed.__append__(...(_clientRandom : Array<stdgo.GoUInt8>)));
        _seed = (_seed.__append__(...(_serverRandom : Array<stdgo.GoUInt8>)));
        var _masterSecret = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls__prfforversion._prfForVersion(_version, _suite)(_masterSecret, _preMasterSecret, stdgo._internal.crypto.tls.Tls__mastersecretlabel._masterSecretLabel, _seed);
        return _masterSecret;
    }
