package stdgo._internal.encoding.json;
function testEncodeRenamedByteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_renamedbyteslice.T_renamedByteSlice);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s)), _result:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _expect = (("\"YWJj\"" : stdgo.GoString) : stdgo.GoString);
        if ((_result : stdgo.GoString) != (_expect)) {
            @:check2r _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
        var _r = ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_renamedrenamedbyteslice.T_renamedRenamedByteSlice);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_r));
            _result = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_result : stdgo.GoString) != (_expect)) {
            @:check2r _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
    }
