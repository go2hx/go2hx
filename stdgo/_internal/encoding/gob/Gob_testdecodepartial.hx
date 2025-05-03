package stdgo._internal.encoding.gob;
function testDecodePartial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _t1 = ({ x : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), y : ("foo" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547);
        var _t2 = ({ x : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), y : ("bar" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _t1start = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1218"
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1219"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _t2start = (_buf.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1223"
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1224"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _data = _buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1228"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_data.length) : Bool)) {
                var _bufr = stdgo._internal.bytes.Bytes_newreader.newReader((_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
var _t1b:stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547 = ({} : stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547), _t2b:stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547 = ({} : stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547);
var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_bufr));
var _err:stdgo.Error = (null : stdgo.Error);
_err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1b) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547>))));
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1236"
                if (_err == null) {
                    _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2b) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547>))));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1240"
                {
                    final __value__ = _i;
                    if (__value__ == (_t1start) || __value__ == (_t2start)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1243"
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1244"
                            _t.errorf(("%d/%d: expected io.EOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    } else if (__value__ == ((_data.length))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1248"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1249"
                            _t.errorf(("%d/%d: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1251"
                        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1252"
                            _t.fatalf(("t1 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1254"
                        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_t2b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1255"
                            _t.fatalf(("t2 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1262"
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1263"
                            _t.errorf(("%d/%d: expected io.ErrUnexpectedEOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                _i++;
            };
        };
    }
