package stdgo._internal.encoding.json;
function _benchMarshalBytes(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
        var _sample = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _v = (stdgo.Go.setRef(({ bytes : (stdgo._internal.bytes.Bytes_repeat.repeat(_sample, (((_n / (_sample.length) : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt)).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.json.Json_T__struct_0.T__struct_0)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_0.T__struct_0>);
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                    };
                });
            };
        };
    }