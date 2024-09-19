package _internal.encoding.json_test;
function exampleIndent():Void {
        {};
        var _roads = (new stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090>(2, 2, ...[(new _internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090(("Diamond Fork" : stdgo.GoString), (29 : stdgo.GoInt)) : _internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090), (new _internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090(("Sheep Creek" : stdgo.GoString), (51 : stdgo.GoInt)) : _internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090)])) : stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleIndent___localname___Road_5090.T_exampleIndent___localname___Road_5090>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_roads)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        var _out:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _b, ("=" : stdgo.GoString), ("\t" : stdgo.GoString));
        _out.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
    }
