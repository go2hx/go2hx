package stdgo._internal.encoding.gob;
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t3p = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hello" : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005>);
        var _t3:stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005 = ({} : stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_t3), stdgo.Go.toInterface(_t3p)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
