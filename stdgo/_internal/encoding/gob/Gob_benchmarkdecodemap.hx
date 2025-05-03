package stdgo._internal.encoding.gob;
function benchmarkDecodeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _count = (1000 : stdgo.GoInt);
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L311"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _count : Bool)) {
                _m[_i] = _i;
                _i++;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _err = (_enc.encode(stdgo.Go.toInterface(_m)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L317"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L318"
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _bbuf = ({ _data : _buf.bytes() } : stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L321"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L322"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L323"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _rm:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L325"
                _bbuf._reset();
var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>)));
var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>))) : stdgo.Error);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L328"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L329"
                    _b.fatal(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
