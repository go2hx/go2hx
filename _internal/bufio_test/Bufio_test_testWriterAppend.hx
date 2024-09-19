package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _want:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _rn = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((0i64 : stdgo.GoInt64)));
        var _w = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_got), (64 : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _b = _w.availableBuffer();
                if (_w.available() != (_b.capacity)) {
                    _t.fatalf(("Available() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_w.available()), stdgo.Go.toInterface(_b.capacity));
                };
                if (((_rn.intn((8 : stdgo.GoInt)) == (0 : stdgo.GoInt)) && (_b.capacity > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _b = (_b.__slice__((1 : stdgo.GoInt), (1 : stdgo.GoInt), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                };
                var _n = (_rn.intn(((1 : stdgo.GoInt) << _rn.intn((30 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt64);
                _want = (stdgo._internal.strconv.Strconv_appendInt.appendInt(_want, _n, (10 : stdgo.GoInt)).__append__((32 : stdgo.GoUInt8)));
                _b = (stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, _n, (10 : stdgo.GoInt)).__append__((32 : stdgo.GoUInt8)));
                _w.write(_b);
            });
        };
        _w.flush();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_got.bytes(), _want)) {
            _t.errorf(("output mismatch:\ngot  %s\nwant %s" : stdgo.GoString), stdgo.Go.toInterface(_got.bytes()), stdgo.Go.toInterface(_want));
        };
    }
