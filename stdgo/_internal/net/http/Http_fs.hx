package stdgo._internal.net.http;
function fS(_fsys:stdgo._internal.io.fs.Fs_fs.FS):stdgo._internal.net.http.Http_filesystem.FileSystem {
        return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_iofs.T_ioFS(_fsys) : stdgo._internal.net.http.Http_t_iofs.T_ioFS));
    }
