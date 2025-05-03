package stdgo._internal.log.slog.internal.buffer;
var _bufPool : stdgo._internal.sync.Sync_pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1024 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L17"
        return stdgo.Go.toInterface(stdgo.Go.asInterface(((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>)));
    } } : stdgo._internal.sync.Sync_pool.Pool);
