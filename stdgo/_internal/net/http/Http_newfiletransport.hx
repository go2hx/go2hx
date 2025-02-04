package stdgo._internal.net.http;
function newFileTransport(_fs:stdgo._internal.net.http.Http_filesystem.FileSystem):stdgo._internal.net.http.Http_roundtripper.RoundTripper {
        return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_filetransport.T_fileTransport((new stdgo._internal.net.http.Http_t_filehandler.T_fileHandler(_fs) : stdgo._internal.net.http.Http_t_filehandler.T_fileHandler)) : stdgo._internal.net.http.Http_t_filetransport.T_fileTransport));
    }
