package _internal.encoding.json_test;
function exampleRawMessage_unmarshal():Void {
        {};
        {};
        {};
        var _j:stdgo.Slice<stdgo.GoUInt8> = (("[\n\t{\"Space\": \"YCbCr\", \"Point\": {\"Y\": 255, \"Cb\": 0, \"Cr\": -10}},\n\t{\"Space\": \"RGB\",   \"Point\": {\"R\": 98, \"G\": 218, \"B\": 255}}\n]" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _colors:stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___Color_3769.T_exampleRawMessage_unmarshal___localname___Color_3769> = (null : stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___Color_3769.T_exampleRawMessage_unmarshal___localname___Color_3769>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_j, stdgo.Go.toInterface((stdgo.Go.setRef(_colors) : stdgo.Ref<stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___Color_3769.T_exampleRawMessage_unmarshal___localname___Color_3769>>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatalln.fatalln(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (__0 => _c in _colors) {
            var _dst:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                final __value__ = _c.space;
                if (__value__ == (("RGB" : stdgo.GoString))) {
                    _dst = stdgo.Go.toInterface((stdgo.Go.setRef(({} : _internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___RGB_3879.T_exampleRawMessage_unmarshal___localname___RGB_3879)) : stdgo.Ref<_internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___RGB_3879.T_exampleRawMessage_unmarshal___localname___RGB_3879>));
                } else if (__value__ == (("YCbCr" : stdgo.GoString))) {
                    _dst = stdgo.Go.toInterface((stdgo.Go.setRef(({} : _internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___YCbCr_3931.T_exampleRawMessage_unmarshal___localname___YCbCr_3931)) : stdgo.Ref<_internal.encoding.json_test.Json_test_T_exampleRawMessage_unmarshal___localname___YCbCr_3931.T_exampleRawMessage_unmarshal___localname___YCbCr_3931>));
                };
            };
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_c.point, _dst) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatalln.fatalln(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_c.space), _dst);
        };
    }
