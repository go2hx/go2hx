package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplicitMapConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists((1 : stdgo.GoInt)) ? { _0 : _m[(1 : stdgo.GoInt)], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _x:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != ((2 : stdgo.GoInt))) {
                _t.errorf(("#1 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _n = (stdgo.Go.typeAssert((_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__()).interface_() : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    _t.errorf(("#1 MapIndex(1) = %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
        };
        {
            var _m = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists(stdgo.Go.toInterface((1 : stdgo.GoInt))) ? { _0 : _m[stdgo.Go.toInterface((1 : stdgo.GoInt))], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _x:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != ((2 : stdgo.GoInt))) {
                _t.errorf(("#2 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _n = (stdgo.Go.typeAssert((_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__()).interface_() : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    _t.errorf(("#2 MapIndex(1) = %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
        };
        {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.AnyInterface>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists((1 : stdgo.GoInt)) ? { _0 : _m[(1 : stdgo.GoInt)], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _x:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != (stdgo.Go.toInterface((2 : stdgo.GoInt)))) {
                _t.errorf(("#3 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), _x, stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _n = (stdgo.Go.typeAssert((_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__()).interface_() : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    _t.errorf(("#3 MapIndex(1) = %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
        };
        {
            var _m = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists(stdgo.Go.toInterface((1 : stdgo.GoInt))) ? { _0 : _m[stdgo.Go.toInterface((1 : stdgo.GoInt))], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _x:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != (stdgo.Go.toInterface((2 : stdgo.GoInt)))) {
                _t.errorf(("#4 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), _x, stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _n = (stdgo.Go.typeAssert((_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__()).interface_() : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    _t.errorf(("#4 MapIndex(1) = %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
        };
        {
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.io.Io_Reader.Reader, stdgo._internal.io.Io_Writer.Writer>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.io.Io_Reader.Reader", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo._internal.io.Io_Writer.Writer);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.io.Io_Reader.Reader, stdgo._internal.io.Io_Writer.Writer>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _b1 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b1)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists(stdgo.Go.asInterface(_b1)) ? { _0 : _m[stdgo.Go.asInterface(_b1)], _1 : true } : { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : false }), _x:stdgo._internal.io.Io_Writer.Writer = __tmp__._0, _ok:Bool = __tmp__._1;
            if (stdgo.Go.toInterface(_x) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)))) {
                _t.errorf(("#5 after SetMapIndex(b1, b2): %p (!= %p), %t (map=%v)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _p = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b1)))?.__copy__()).elem().unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != ((stdgo.Go.toInterface(_b2) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                    _t.errorf(("#5 MapIndex(b1) = %#x want %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)));
                };
            };
        };
        {
            var _m = ({
                final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo.GoInt>, stdgo.Chan<stdgo.GoInt>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.Chan<stdgo.GoInt>>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _c1 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var _c2 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c1))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c2))?.__copy__());
            var __tmp__ = (_m != null && _m.exists(_c1) ? { _0 : _m[_c1], _1 : true } : { _0 : (null : stdgo.Chan<stdgo.GoInt>), _1 : false }), _x:stdgo.Chan<stdgo.GoInt> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != (_c2)) {
                _t.errorf(("#6 after SetMapIndex(c1, c2): %p (!= %p), %t (map=%v)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_c2), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _p = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c1))?.__copy__()).unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c2)).unsafePointer())) {
                    _t.errorf(("#6 MapIndex(c1) = %#x want %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_c2));
                };
            };
        };
        {
            {};
            var _m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.reflect_test.Reflect_test_T_testImplicitMapConversion___localname___MyBuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>, stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<_internal.reflect_test.Reflect_test_T_testImplicitMapConversion___localname___MyBuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>, stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>>);
            var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _b1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_T_testImplicitMapConversion___localname___MyBuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testImplicitMapConversion___localname___MyBuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>);
            var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_b1))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)))?.__copy__());
            var __tmp__ = (_m != null && _m.exists(_b1) ? { _0 : _m[_b1], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _1 : false }), _x:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_x != (_b2)) {
                _t.errorf(("#7 after SetMapIndex(b1, b2): %p (!= %p), %t (map=%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_m));
            };
            {
                var _p = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_b1))?.__copy__()).unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != ((stdgo.Go.toInterface(_b2) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                    _t.errorf(("#7 MapIndex(b1) = %#x want %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)));
                };
            };
        };
    }
