package stdgo.crypto.tls;
class Config_static_extension {
    static public function _decryptTicket(_c:Config, _encrypted:Array<std.UInt>, _ticketKeys:Array<T_ticketKey>):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _encrypted = ([for (i in _encrypted) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ticketKeys = ([for (i in _ticketKeys) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._decryptTicket(_c, _encrypted, _ticketKeys)) i];
    }
    static public function decryptTicket(_c:Config, _identity:Array<std.UInt>, _cs:ConnectionState):stdgo.Tuple<SessionState, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _identity = ([for (i in _identity) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension.decryptTicket(_c, _identity, _cs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _encryptTicket(_c:Config, _state:Array<std.UInt>, _ticketKeys:Array<T_ticketKey>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _state = ([for (i in _state) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ticketKeys = ([for (i in _ticketKeys) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._encryptTicket(_c, _state, _ticketKeys);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function encryptTicket(_c:Config, _cs:ConnectionState, _ss:SessionState):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _ss = (_ss : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension.encryptTicket(_c, _cs, _ss);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _writeKeyLog(_c:Config, _label:String, _clientRandom:Array<std.UInt>, _secret:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _label = (_label : stdgo.GoString);
        final _clientRandom = ([for (i in _clientRandom) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._writeKeyLog(_c, _label, _clientRandom, _secret);
    }
    static public function buildNameToCertificate(_c:Config):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension.buildNameToCertificate(_c);
    }
    static public function _getCertificate(_c:Config, _clientHello:ClientHelloInfo):stdgo.Tuple<Certificate, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _clientHello = (_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._getCertificate(_c, _clientHello);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _mutualVersion(_c:Config, _isClient:Bool, _peerVersions:Array<std.UInt>):stdgo.Tuple<std.UInt, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _peerVersions = ([for (i in _peerVersions) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._mutualVersion(_c, _isClient, _peerVersions);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _supportsCurve(_c:Config, _curve:CurveID):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._supportsCurve(_c, _curve);
    }
    static public function _curvePreferences(_c:Config):Array<CurveID> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._curvePreferences(_c)) i];
    }
    static public function _maxSupportedVersion(_c:Config, _isClient:Bool):std.UInt {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._maxSupportedVersion(_c, _isClient);
    }
    static public function _supportedVersions(_c:Config, _isClient:Bool):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._supportedVersions(_c, _isClient)) i];
    }
    static public function _cipherSuites(_c:Config):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._cipherSuites(_c)) i];
    }
    static public function _time(_c:Config):stdgo._internal.time.Time_Time.Time {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._time(_c);
    }
    static public function _rand(_c:Config):stdgo._internal.io.Io_Reader.Reader {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._rand(_c);
    }
    static public function setSessionTicketKeys(_c:Config, _keys:Array<haxe.ds.Vector<std.UInt>>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _keys = ([for (i in _keys) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension.setSessionTicketKeys(_c, _keys);
    }
    static public function _ticketKeys(_c:Config, _configForClient:Config):Array<T_ticketKey> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _configForClient = (_configForClient : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._ticketKeys(_c, _configForClient)) i];
    }
    static public function _initLegacySessionTicketKeyRLocked(_c:Config):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._initLegacySessionTicketKeyRLocked(_c);
    }
    static public function clone(_c:Config):Config {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension.clone(_c);
    }
    static public function _ticketKeyFromBytes(_c:Config, _b:haxe.ds.Vector<std.UInt>):T_ticketKey {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension._ticketKeyFromBytes(_c, _b);
    }
}
