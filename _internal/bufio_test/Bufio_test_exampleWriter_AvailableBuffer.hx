package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleWriter_AvailableBuffer():Void {
        var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        for (__0 => _i in (new stdgo.Slice<stdgo.GoInt64>(4, 4, ...[(1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _b = _w.availableBuffer();
            _b = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, _i, (10 : stdgo.GoInt));
            _b = (_b.__append__((32 : stdgo.GoUInt8)));
            _w.write(_b);
        };
        _w.flush();
    }
