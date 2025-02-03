package stdgo.crypto.tls;
class T_keyAgreement_static_extension {
    static public function _generateClientKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:Config, _1:T_clientHelloMsg, _2:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo.Tuple.Tuple3<Array<std.UInt>, T_clientKeyExchangeMsg, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_keyAgreement_static_extension.T_keyAgreement_static_extension._generateClientKeyExchange(t, _0, _1, _2);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _processServerKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:Config, _1:T_clientHelloMsg, _2:T_serverHelloMsg, _3:stdgo._internal.crypto.x509.X509_Certificate.Certificate, _4:T_serverKeyExchangeMsg):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _4 = (_4 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>);
        return stdgo._internal.crypto.tls.Tls_T_keyAgreement_static_extension.T_keyAgreement_static_extension._processServerKeyExchange(t, _0, _1, _2, _3, _4);
    }
    static public function _processClientKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:Config, _1:Certificate, _2:T_clientKeyExchangeMsg, _3:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
        final _3 = (_3 : stdgo.GoUInt16);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_keyAgreement_static_extension.T_keyAgreement_static_extension._processClientKeyExchange(t, _0, _1, _2, _3);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _generateServerKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:Config, _1:Certificate, _2:T_clientHelloMsg, _3:T_serverHelloMsg):stdgo.Tuple<T_serverKeyExchangeMsg, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_keyAgreement_static_extension.T_keyAgreement_static_extension._generateServerKeyExchange(t, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
