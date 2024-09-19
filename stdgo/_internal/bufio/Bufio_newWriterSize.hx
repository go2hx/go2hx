package stdgo._internal.bufio;
function newWriterSize(_w:stdgo._internal.io.Io_Writer.Writer, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if ((_ok && ((_b._buf.length) >= _size : Bool) : Bool)) {
            return _b;
        };
        if ((_size <= (0 : stdgo.GoInt) : Bool)) {
            _size = (4096 : stdgo.GoInt);
        };
        return (stdgo.Go.setRef(({ _buf : (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wr : _w } : stdgo._internal.bufio.Bufio_Writer.Writer)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    }
