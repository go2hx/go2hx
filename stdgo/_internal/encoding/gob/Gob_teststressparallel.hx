package stdgo._internal.encoding.gob;
function testStressParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L200"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L201"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var _p = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091>);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L203"
                        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
                        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))) : stdgo.Error);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L207"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L208"
                            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
                        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L212"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L213"
                            _t.error(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L215"
                        _c.__send__(true);
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L218"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L219"
                _c.__get__();
                _i++;
            };
        };
    }
