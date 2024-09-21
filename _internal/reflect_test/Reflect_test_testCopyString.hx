package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCopyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("Slice" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _s = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(95 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (8 : stdgo.GoInt));
            var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _n = (stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.str()))?.__copy__()) : stdgo.GoInt);
            {
                var _expecting = (("________" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (0 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 0, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_expecting));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString)))?.__copy__());
            {
                var _expecting = (("hello___" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (5 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 5, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_expecting));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("helloworld" : stdgo.GoString)))?.__copy__());
            {
                var _expecting = (("hellowor" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (8 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 8, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_expecting));
                };
            };
        });
        _t.run(("Array" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _s = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _n = (stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.str()))?.__copy__()) : stdgo.GoInt);
            {
                var _expecting = (("________" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (0 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 0, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_expecting));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString)))?.__copy__());
            {
                var _expecting = (("hello___" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (5 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 5, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_expecting));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("helloworld" : stdgo.GoString)))?.__copy__());
            {
                var _expecting = (("hellowor" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (8 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    _t.errorf(("got n = %d, s = %s, expecting n = 8, s = %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_expecting));
                };
            };
        });
    }
