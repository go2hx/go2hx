package stdgo._internal.encoding.binary;
function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _ts = (new stdgo._internal.encoding.binary.Binary_T_.T_() : stdgo._internal.encoding.binary.Binary_T_.T_);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_ts)) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("WriteT: have err == nil, want non-nil" : stdgo.GoString));
            };
        };
        var _tv = (stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_ts))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_tv.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _typ = ((_tv.field(_i).type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_typ == (("[4]int" : stdgo.GoString))) {
                    _typ = ("int" : stdgo.GoString);
                };
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _tv.field(_i).interface_()) : stdgo.Error);
                    if (_err == null) {
                        _t.errorf(("WriteT.%v: have err == nil, want non-nil" : stdgo.GoString), stdgo.Go.toInterface(_tv.field(_i).type()));
                    } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _typ?.__copy__())) {
                        _t.errorf(("WriteT: have err == %q, want it to mention %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_typ));
                    };
                };
            });
        };
    }