package stdgo._internal.encoding.json;
function _benchMarshalBytesError(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void {
        var _sample = ((("hello world" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _v = (stdgo.Go.setRef(({ bytes : (stdgo._internal.bytes.Bytes_repeat.repeat(_sample, (((_n / (_sample.length) : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt)).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.json.Json_t__struct_0.T__struct_0)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_0.T__struct_0>);
        {};
        var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>);
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), __12:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                    };
{
                        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), __13:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                        };
                    };
                    _i++;
                };
            };
        };
    }
