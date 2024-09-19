package stdgo._internal.net.http;
function fileServer(_root:stdgo._internal.net.http.Http_FileSystem.FileSystem):stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler(_root) : stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler)) : stdgo.Ref<stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler>));
    }
