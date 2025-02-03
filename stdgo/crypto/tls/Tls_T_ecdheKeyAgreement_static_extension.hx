package stdgo.crypto.tls;
class T_ecdheKeyAgreement_static_extension {
    static public function _generateClientKeyExchange(_ka:T_ecdheKeyAgreement, _config:Config, _clientHello:T_clientHelloMsg, _cert:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo.Tuple.Tuple3<Array<std.UInt>, T_clientKeyExchangeMsg, stdgo.Error> {
        final _ka = (_ka : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _clientHello = (_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement_static_extension.T_ecdheKeyAgreement_static_extension._generateClientKeyExchange(_ka, _config, _clientHello, _cert);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _processServerKeyExchange(_ka:T_ecdheKeyAgreement, _config:Config, _clientHello:T_clientHelloMsg, _serverHello:T_serverHelloMsg, _cert:stdgo._internal.crypto.x509.X509_Certificate.Certificate, _skx:T_serverKeyExchangeMsg):stdgo.Error {
        final _ka = (_ka : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _clientHello = (_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _serverHello = (_serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _skx = (_skx : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>);
        return stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement_static_extension.T_ecdheKeyAgreement_static_extension._processServerKeyExchange(_ka, _config, _clientHello, _serverHello, _cert, _skx);
    }
    static public function _processClientKeyExchange(_ka:T_ecdheKeyAgreement, _config:Config, _cert:Certificate, _ckx:T_clientKeyExchangeMsg, _version:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ka = (_ka : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        final _ckx = (_ckx : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
        final _version = (_version : stdgo.GoUInt16);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement_static_extension.T_ecdheKeyAgreement_static_extension._processClientKeyExchange(_ka, _config, _cert, _ckx, _version);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _generateServerKeyExchange(_ka:T_ecdheKeyAgreement, _config:Config, _cert:Certificate, _clientHello:T_clientHelloMsg, _hello:T_serverHelloMsg):stdgo.Tuple<T_serverKeyExchangeMsg, stdgo.Error> {
        final _ka = (_ka : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        final _clientHello = (_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _hello = (_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement_static_extension.T_ecdheKeyAgreement_static_extension._generateServerKeyExchange(_ka, _config, _cert, _clientHello, _hello);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
