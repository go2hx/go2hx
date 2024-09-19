package stdgo._internal.net.http;
var _http2bufWriterPool : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize((null : stdgo._internal.io.Io_Writer.Writer), (4096 : stdgo.GoInt))));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
