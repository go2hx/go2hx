package stdgo._internal.encoding.gob;
function testArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        var _t5 = (new stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494((new stdgo.GoArray<stdgo.GoString>(3, 3, ...[("hello" : stdgo.GoString), ("," : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()) : stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494);
        var _t5p:stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494 = ({} : stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t5)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t5p) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _t6:stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544 = ({} : stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t5)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544>)))) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("should fail with mismatched array sizes" : stdgo.GoString)));
            };
        };
    }
