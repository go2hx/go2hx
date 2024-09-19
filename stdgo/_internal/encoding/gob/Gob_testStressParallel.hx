package stdgo._internal.encoding.gob;
function testStressParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _p = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testStressParallel___localname___T2_5091.T_testStressParallel___localname___T2_5091)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testStressParallel___localname___T2_5091.T_testStressParallel___localname___T2_5091>);
                        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(_p));
                        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
                        var _err = (_enc.encode(stdgo.Go.toInterface(_p)) : stdgo.Error);
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
                        _err = _dec.decode(stdgo.Go.toInterface(_p));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
    }
