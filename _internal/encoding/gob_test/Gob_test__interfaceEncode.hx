package _internal.encoding.gob_test;
function _interfaceEncode(_enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _p:_internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras):Void {
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
