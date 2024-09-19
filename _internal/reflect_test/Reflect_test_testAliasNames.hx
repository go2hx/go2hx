package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAliasNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = ({ _byte : (1 : stdgo.GoUInt8), _uint8 : (2 : stdgo.GoUInt8), _int : (3 : stdgo.GoInt), _int32 : (4 : stdgo.GoInt32), _rune : (5 : stdgo.GoInt32) } : _internal.reflect_test.Reflect_test_Talias1.Talias1);
        var _out = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), stdgo.Go.toInterface(_t1))?.__copy__() : stdgo.GoString);
        var _want = ("reflect_test.Talias1{byte:0x1, uint8:0x2, int:3, int32:4, rune:5}" : stdgo.GoString);
        if (_out != (_want)) {
            _t.errorf(("Talias1 print:\nhave: %s\nwant: %s" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want));
        };
        var _t2 = ({ tint : (1 : _internal.reflect_test.Reflect_test_Tint.Tint), tint2 : (2 : _internal.reflect_test.Reflect_test_Tint.Tint) } : _internal.reflect_test.Reflect_test_Talias2.Talias2);
        _out = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), stdgo.Go.toInterface(_t2))?.__copy__();
        _want = ("reflect_test.Talias2{Tint:1, Tint2:2}" : stdgo.GoString);
        if (_out != (_want)) {
            _t.errorf(("Talias2 print:\nhave: %s\nwant: %s" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want));
        };
    }
