package stdgo._internal.crypto.tls;
function _keysFromMasterSecret(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _serverRandom:stdgo.Slice<stdgo.GoUInt8>, _macLen:stdgo.GoInt, _keyLen:stdgo.GoInt, _ivLen:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Slice<stdgo.GoUInt8>; var _4 : stdgo.Slice<stdgo.GoUInt8>; var _5 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _clientMAC = (null : stdgo.Slice<stdgo.GoUInt8>), _serverMAC = (null : stdgo.Slice<stdgo.GoUInt8>), _clientKey = (null : stdgo.Slice<stdgo.GoUInt8>), _serverKey = (null : stdgo.Slice<stdgo.GoUInt8>), _clientIV = (null : stdgo.Slice<stdgo.GoUInt8>), _serverIV = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _seed = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_serverRandom.length) + (_clientRandom.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _seed = (_seed.__append__(...(_serverRandom : Array<stdgo.GoUInt8>)));
        _seed = (_seed.__append__(...(_clientRandom : Array<stdgo.GoUInt8>)));
        var _n = ((((2 : stdgo.GoInt) * _macLen : stdgo.GoInt) + ((2 : stdgo.GoInt) * _keyLen : stdgo.GoInt) : stdgo.GoInt) + ((2 : stdgo.GoInt) * _ivLen : stdgo.GoInt) : stdgo.GoInt);
        var _keyMaterial = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls__prfforversion._prfForVersion(_version, _suite)(_keyMaterial, _masterSecret, stdgo._internal.crypto.tls.Tls__keyexpansionlabel._keyExpansionLabel, _seed);
        _clientMAC = (_keyMaterial.__slice__(0, _macLen) : stdgo.Slice<stdgo.GoUInt8>);
        _keyMaterial = (_keyMaterial.__slice__(_macLen) : stdgo.Slice<stdgo.GoUInt8>);
        _serverMAC = (_keyMaterial.__slice__(0, _macLen) : stdgo.Slice<stdgo.GoUInt8>);
        _keyMaterial = (_keyMaterial.__slice__(_macLen) : stdgo.Slice<stdgo.GoUInt8>);
        _clientKey = (_keyMaterial.__slice__(0, _keyLen) : stdgo.Slice<stdgo.GoUInt8>);
        _keyMaterial = (_keyMaterial.__slice__(_keyLen) : stdgo.Slice<stdgo.GoUInt8>);
        _serverKey = (_keyMaterial.__slice__(0, _keyLen) : stdgo.Slice<stdgo.GoUInt8>);
        _keyMaterial = (_keyMaterial.__slice__(_keyLen) : stdgo.Slice<stdgo.GoUInt8>);
        _clientIV = (_keyMaterial.__slice__(0, _ivLen) : stdgo.Slice<stdgo.GoUInt8>);
        _keyMaterial = (_keyMaterial.__slice__(_ivLen) : stdgo.Slice<stdgo.GoUInt8>);
        _serverIV = (_keyMaterial.__slice__(0, _ivLen) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _clientMAC, _1 : _serverMAC, _2 : _clientKey, _3 : _serverKey, _4 : _clientIV, _5 : _serverIV };
    }
