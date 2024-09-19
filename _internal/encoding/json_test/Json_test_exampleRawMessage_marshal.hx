package _internal.encoding.json_test;
function exampleRawMessage_marshal():Void {
        var _h = (("{\"precomputed\": true}" : stdgo.GoString) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage);
        var _c = ({ header : (stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), body : ("Hello Gophers!" : stdgo.GoString) } : _internal.encoding.json_test.Json_test_T__struct_47.T__struct_47);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<_internal.encoding.json_test.Json_test_T__struct_47.T__struct_47>))), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.os.Os_stdout.stdout.write(_b);
    }
