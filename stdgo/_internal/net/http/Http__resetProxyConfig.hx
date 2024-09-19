package stdgo._internal.net.http;
function _resetProxyConfig():Void {
        stdgo._internal.net.http.Http__envProxyOnce._envProxyOnce = (new stdgo._internal.sync.Sync_Once.Once() : stdgo._internal.sync.Sync_Once.Once);
        stdgo._internal.net.http.Http__envProxyFuncValue._envProxyFuncValue = null;
    }
