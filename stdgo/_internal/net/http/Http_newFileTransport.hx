package stdgo._internal.net.http;
function newFileTransport(_fs:stdgo._internal.net.http.Http_FileSystem.FileSystem):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport((new stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler(_fs) : stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler)) : stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport));
    }
