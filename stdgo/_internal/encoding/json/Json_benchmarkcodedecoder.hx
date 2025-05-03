package stdgo._internal.encoding.json;
function benchmarkCodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L250"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L251"
        if (stdgo._internal.encoding.json.Json__codejson._codeJSON == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L252"
            _b.stopTimer();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L253"
            stdgo._internal.encoding.json.Json__codeinit._codeInit();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L254"
            _b.startTimer();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L256"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            var _r:stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse = ({} : stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L260"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L261"
                _buf.write(stdgo._internal.encoding.json.Json__codejson._codeJSON);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L263"
                _buf.writeByte((10 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L264"
                _buf.writeByte((10 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L265"
                _buf.writeByte((10 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L266"
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L267"
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L271"
        _b.setBytes((stdgo._internal.encoding.json.Json__codejson._codeJSON.length : stdgo.GoInt64));
    }
