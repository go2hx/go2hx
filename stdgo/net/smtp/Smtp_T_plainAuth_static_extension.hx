package stdgo.net.smtp;
class T_plainAuth_static_extension {
    static public function next(_a:T_plainAuth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>);
        final _fromServer = ([for (i in _fromServer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_plainAuth_static_extension.T_plainAuth_static_extension.next(_a, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(_a:T_plainAuth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>);
        final _server = (_server : stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_plainAuth_static_extension.T_plainAuth_static_extension.start(_a, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
