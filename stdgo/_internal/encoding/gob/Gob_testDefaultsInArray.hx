package stdgo._internal.encoding.gob;
function testDefaultsInArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t7 = (new stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446((new stdgo.Slice<Bool>(3, 3, ...[false, false, true]) : stdgo.Slice<Bool>), (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("hi" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("there" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) : stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446);
        var _t7p:stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446 = ({} : stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_t7), stdgo.Go.toInterface((stdgo.Go.setRef(_t7p) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446>))) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
