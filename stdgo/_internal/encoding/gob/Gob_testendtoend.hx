package stdgo._internal.encoding.gob;
function testEndToEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        {};
        var _pi = (3.14159 : stdgo.GoFloat64);
        var _pi__pointer__ = stdgo.Go.pointer(_pi);
        var _pi__pointer__ = stdgo.Go.pointer(_pi);
        var _pi__pointer__ = stdgo.Go.pointer(_pi);
        var _pi__pointer__ = stdgo.Go.pointer(_pi);
        var _e = (2.71828 : stdgo.GoFloat64);
        var _e__pointer__ = stdgo.Go.pointer(_e);
        var _e__pointer__ = stdgo.Go.pointer(_e);
        var _e__pointer__ = stdgo.Go.pointer(_e);
        var _e__pointer__ = stdgo.Go.pointer(_e);
        var _two = (2 : stdgo.GoFloat64);
        var _two__pointer__ = stdgo.Go.pointer(_two);
        var _two__pointer__ = stdgo.Go.pointer(_two);
        var _two__pointer__ = stdgo.Go.pointer(_two);
        var _two__pointer__ = stdgo.Go.pointer(_two);
        var _meaning = (42 : stdgo.GoInt);
        var _meaning__pointer__ = stdgo.Go.pointer(_meaning);
        var _meaning__pointer__ = stdgo.Go.pointer(_meaning);
        var _meaning__pointer__ = stdgo.Go.pointer(_meaning);
        var _meaning__pointer__ = stdgo.Go.pointer(_meaning);
        var _fingers = (5 : stdgo.GoInt);
        var _fingers__pointer__ = stdgo.Go.pointer(_fingers);
        var _fingers__pointer__ = stdgo.Go.pointer(_fingers);
        var _fingers__pointer__ = stdgo.Go.pointer(_fingers);
        var _fingers__pointer__ = stdgo.Go.pointer(_fingers);
        var _s1 = (("string1" : stdgo.GoString) : stdgo.GoString);
        var _s2 = (("string2" : stdgo.GoString) : stdgo.GoString);
        var _comp1:stdgo.GoComplex128 = new stdgo.GoComplex128((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
        var _comp2:stdgo.GoComplex128 = new stdgo.GoComplex128((1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
        var _arr1:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2, 2).__setString__();
        _arr1[(0 : stdgo.GoInt)] = _s1?.__copy__();
        _arr1[(1 : stdgo.GoInt)] = _s2?.__copy__();
        var _arr2:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2, 2).__setString__();
        _arr2[(0 : stdgo.GoInt)] = _s2?.__copy__();
        _arr2[(1 : stdgo.GoInt)] = _s1?.__copy__();
        var _floatArr1:stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2);
        _floatArr1[(0 : stdgo.GoInt)] = _pi__pointer__;
        _floatArr1[(1 : stdgo.GoInt)] = _e__pointer__;
        var _floatArr2:stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2);
        _floatArr2[(0 : stdgo.GoInt)] = _e__pointer__;
        _floatArr2[(1 : stdgo.GoInt)] = _two__pointer__;
        var _t1 = (stdgo.Go.setRef(({ a : (17 : stdgo.GoInt), b : (18 : stdgo.GoInt), c : (-5 : stdgo.GoInt), m : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Pointer<stdgo.GoFloat64>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.GoFloat64>);
            x.set(("pi" : stdgo.GoString), _pi__pointer__);
x.set(("e" : stdgo.GoString), _e__pointer__);
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>), m2 : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794);
            x.set((4 : stdgo.GoInt), ({ x : _pi, z : _meaning__pointer__ } : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794));
x.set((10 : stdgo.GoInt), ({ x : _e, z : _fingers__pointer__ } : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>), mstring : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("pi" : stdgo.GoString), ("3.14" : stdgo.GoString));
x.set(("e" : stdgo.GoString), ("2.71" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), mintptr : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo.GoInt>);
            x.set(_meaning, _fingers__pointer__);
x.set(_fingers, _meaning__pointer__);
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
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>(2, 2);
            x.set(_arr1, _floatArr1);
x.set(_arr2, _floatArr2);
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>), emptyMap : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), n : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoFloat64>(3, 3, ...[(1.5 : stdgo.GoFloat64), (2.5 : stdgo.GoFloat64), (3.5 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>), strs : (stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoString>(2, 2, ...[_s1?.__copy__(), _s2?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>), int64s : (stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt64>(3, 3, ...[(77i64 : stdgo.GoInt64), (89i64 : stdgo.GoInt64), (123412342134i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>), rI : ((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -23f64)), s : ("Now is the time" : stdgo.GoString), y : ((("hello, sailor" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), t : (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762(("this is T2" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762>) } : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __t1:stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836 = ({} : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(__t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836>))));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(__t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836>))))) {
            @:check2r _t.errorf(("encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_t1 : stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836))), stdgo.Go.toInterface(stdgo.Go.asInterface(__t1)));
        };
        if ((@:checkr _t1 ?? throw "null pointer dereference").emptyMap == null) {
            @:check2r _t.errorf(("nil map sent" : stdgo.GoString));
        };
        if (__t1.emptyMap == null) {
            @:check2r _t.errorf(("nil map received" : stdgo.GoString));
        };
    }
