package stdgo._internal.net.http;
function _bufioWriterPool(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> {
        {
            final __value__ = _size;
            if (__value__ == ((2048 : stdgo.GoInt))) {
                return (stdgo.Go.setRef(stdgo._internal.net.http.Http__bufioWriter2kPool._bufioWriter2kPool) : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
            } else if (__value__ == ((4096 : stdgo.GoInt))) {
                return (stdgo.Go.setRef(stdgo._internal.net.http.Http__bufioWriter4kPool._bufioWriter4kPool) : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
            };
        };
        return null;
    }
