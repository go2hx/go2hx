package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> {
        var _e = (stdgo.Go.setRef(({ _minSize : (-1u32 : stdgo.GoUInt32), _maxSizeLimit : (4096u32 : stdgo.GoUInt32), _tableSizeUpdate : false, _w : _w } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>);
        _e._dynTab._table._init();
        _e._dynTab._setMaxSize((4096u32 : stdgo.GoUInt32));
        return _e;
    }
