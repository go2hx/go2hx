package stdgo._internal.encoding.json;
function testInvalidStringOption(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _num = (0 : stdgo.GoInt);
        var _num__pointer__ = stdgo.Go.pointer(_num);
        var _num__pointer__ = stdgo.Go.pointer(_num);
        var _num__pointer__ = stdgo.Go.pointer(_num);
        var _num__pointer__ = stdgo.Go.pointer(_num);
        var _item = ({ m : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), s : (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), i : stdgo.Go.toInterface(_num), p : _num__pointer__, t : ({} : stdgo._internal.time.Time_time.Time), a : new stdgo.GoArray<stdgo.GoString>(1, 1).__setString__() } : stdgo._internal.encoding.json.Json_t__struct_13.T__struct_13);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_item))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_13.T__struct_13>))));
        if (_err != null) {
            @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
