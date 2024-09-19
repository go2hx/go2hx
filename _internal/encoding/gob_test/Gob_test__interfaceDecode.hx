package _internal.encoding.gob_test;
function _interfaceDecode(_dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>):_internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras {
        var _p:_internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras = (null : _internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras);
        var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        return _p;
    }
