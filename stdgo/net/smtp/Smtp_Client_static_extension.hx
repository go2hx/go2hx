package stdgo.net.smtp;
class Client_static_extension {
    static public function quit(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.quit(_c);
    }
    static public function noop(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.noop(_c);
    }
    static public function reset(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.reset(_c);
    }
    static public function extension(_c:Client, _ext:String):stdgo.Tuple<Bool, String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _ext = (_ext : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.extension(_c, _ext);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function data(_c:Client):stdgo.Tuple<stdgo._internal.io.Io_WriteCloser.WriteCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.data(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rcpt(_c:Client, _to:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.rcpt(_c, _to);
    }
    static public function mail(_c:Client, _from:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _from = (_from : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.mail(_c, _from);
    }
    static public function auth(_c:Client, _a:Auth):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.auth(_c, _a);
    }
    static public function verify(_c:Client, _addr:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _addr = (_addr : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.verify(_c, _addr);
    }
    static public function tLSConnectionState(_c:Client):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.tLSConnectionState(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function startTLS(_c:Client, _config:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.startTLS(_c, _config);
    }
    static public function _ehlo(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._ehlo(_c);
    }
    static public function _helo(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._helo(_c);
    }
    static public function _cmd(_c:Client, _expectCode:StdTypes.Int, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._cmd(_c, _expectCode, _format, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function hello(_c:Client, _localName:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        final _localName = (_localName : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.hello(_c, _localName);
    }
    static public function _hello(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._hello(_c);
    }
    static public function close(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.close(_c);
    }
}
