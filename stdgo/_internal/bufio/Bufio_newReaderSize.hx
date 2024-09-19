package stdgo._internal.bufio;
function newReaderSize(_rd:stdgo._internal.io.Io_Reader.Reader, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rd) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if ((_ok && ((_b._buf.length) >= _size : Bool) : Bool)) {
            return _b;
        };
        if ((_size < (16 : stdgo.GoInt) : Bool)) {
            _size = (16 : stdgo.GoInt);
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bufio.Bufio_Reader.Reader)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        _r._reset((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _rd);
        return _r;
    }
