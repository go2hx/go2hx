package stdgo._internal.net.http;
function _socksNewDialer(_network:stdgo.GoString, _address:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> {
        return (stdgo.Go.setRef(({ _proxyNetwork : _network?.__copy__(), _proxyAddress : _address?.__copy__(), _cmd : (1 : stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand) } : stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>);
    }
