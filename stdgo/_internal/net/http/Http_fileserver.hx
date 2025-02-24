package stdgo._internal.net.http;
function fileServer(_root:stdgo._internal.net.http.Http_filesystem.FileSystem):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_filehandler.T_fileHandler(_root) : stdgo._internal.net.http.Http_t_filehandler.T_fileHandler)) : stdgo.Ref<stdgo._internal.net.http.Http_t_filehandler.T_fileHandler>));
    }
