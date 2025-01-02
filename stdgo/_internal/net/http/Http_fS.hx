package stdgo._internal.net.http;
function fS(_fsys:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.net.http.Http_FileSystem.FileSystem {
        return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_ioFS.T_ioFS(_fsys) : stdgo._internal.net.http.Http_T_ioFS.T_ioFS));
    }
