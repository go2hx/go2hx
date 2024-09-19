package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function newDecoder(_maxDynamicTableSize:stdgo.GoUInt32, _emitFunc:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField -> Void):stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> {
        var _d = (stdgo.Go.setRef(({ _emit : _emitFunc, _emitEnabled : true, _firstField : true } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>);
        _d._dynTab._table._init();
        _d._dynTab._allowedMaxSize = _maxDynamicTableSize;
        _d._dynTab._setMaxSize(_maxDynamicTableSize);
        return _d;
    }
