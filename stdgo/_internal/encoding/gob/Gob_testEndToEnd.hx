package stdgo._internal.encoding.gob;
function testEndToEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        {};
        var _pi = (3.14159 : stdgo.GoFloat64);
        var _e = (2.71828 : stdgo.GoFloat64);
        var _two = (2 : stdgo.GoFloat64);
        var _meaning = (42 : stdgo.GoInt);
        var _fingers = (5 : stdgo.GoInt);
        var _s1 = ("string1" : stdgo.GoString);
        var _s2 = ("string2" : stdgo.GoString);
        var _comp1:stdgo.GoComplex128 = new stdgo.GoComplex128((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
        var _comp2:stdgo.GoComplex128 = new stdgo.GoComplex128((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
        var _arr1:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2, 2, ...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
        _arr1[(0 : stdgo.GoInt)] = _s1?.__copy__();
        _arr1[(1 : stdgo.GoInt)] = _s2?.__copy__();
        var _arr2:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2, 2, ...[for (i in 0 ... 2) ("" : stdgo.GoString)]);
        _arr2[(0 : stdgo.GoInt)] = _s2?.__copy__();
        _arr2[(1 : stdgo.GoInt)] = _s1?.__copy__();
        var _floatArr1:stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2, ...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.GoFloat64>)]);
        _floatArr1[(0 : stdgo.GoInt)] = stdgo.Go.pointer(_pi);
        _floatArr1[(1 : stdgo.GoInt)] = stdgo.Go.pointer(_e);
        var _floatArr2:stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2, ...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.GoFloat64>)]);
        _floatArr2[(0 : stdgo.GoInt)] = stdgo.Go.pointer(_e);
        _floatArr2[(1 : stdgo.GoInt)] = stdgo.Go.pointer(_two);
        var _t1 = (stdgo.Go.setRef(({ a : (17 : stdgo.GoInt), b : (18 : stdgo.GoInt), c : (-5 : stdgo.GoInt), m : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Pointer<stdgo.GoFloat64>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.GoFloat64>);
            x.set(("pi" : stdgo.GoString), stdgo.Go.pointer(_pi));
x.set(("e" : stdgo.GoString), stdgo.Go.pointer(_e));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>), m2 : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794);
            x.set((4 : stdgo.GoInt), ({ x : _pi, z : stdgo.Go.pointer(_meaning) } : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794));
x.set((10 : stdgo.GoInt), ({ x : _e, z : stdgo.Go.pointer(_fingers) } : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>), mstring : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("pi" : stdgo.GoString), ("3.14" : stdgo.GoString));
x.set(("e" : stdgo.GoString), ("2.71" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), mintptr : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.GoInt>);
            x.set(_meaning, stdgo.Go.pointer(_fingers));
x.set(_fingers, stdgo.Go.pointer(_meaning));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>), mcomp : ({
            final x = new stdgo.GoMap.GoComplex128Map<stdgo.GoComplex128>();
            x.__defaultValue__ = () -> new stdgo.GoComplex128(0, 0);
            x.set(_comp1, _comp2);
x.set(_comp2, _comp1);
            x;
        } : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>), marr : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, 2));
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2, ...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.GoFloat64>)]);
            x.set(_arr1, _floatArr1);
x.set(_arr2, _floatArr2);
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>), emptyMap : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), n : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoFloat64>(3, 3, ...[(1.5 : stdgo.GoFloat64), (2.5 : stdgo.GoFloat64), (3.5 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>), strs : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoString>(2, 2, ...[_s1?.__copy__(), _s2?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>), int64s : (stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt64>(3, 3, ...[(77i64 : stdgo.GoInt64), (89i64 : stdgo.GoInt64), (123412342134i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>), ri : ((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -23f64)), s : ("Now is the time" : stdgo.GoString), y : (("hello, sailor" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), t : (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762(("this is T2" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762>) } : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_t1)) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __t1:stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836 = ({} : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(__t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_t1), stdgo.Go.toInterface((stdgo.Go.setRef(__t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836>)))) {
            _t.errorf(("encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_t1 : stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836)), stdgo.Go.toInterface(__t1));
        };
        if (_t1.emptyMap == null) {
            _t.errorf(("nil map sent" : stdgo.GoString));
        };
        if (__t1.emptyMap == null) {
            _t.errorf(("nil map received" : stdgo.GoString));
        };
    }