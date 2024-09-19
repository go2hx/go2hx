package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(4, 4, ...[({ name : ("S" : stdgo.GoString), tag : (("s" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("Y" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0i64 : stdgo.GoUInt64))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("Z" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt16>(3, 3, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        var _st = (stdgo._internal.reflect.Reflect_structOf.structOf(_fields) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v = (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.runtime.Runtime_gc.gc();
        _v.fieldByName(("X" : stdgo.GoString)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoUInt8)))?.__copy__());
        _v.fieldByIndex((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoUInt8)))?.__copy__());
        stdgo._internal.runtime.Runtime_gc.gc();
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_())?.__copy__() : stdgo.GoString);
        var _want = ("{ 1 0 [0 0 0]}" : stdgo.GoString);
        if (_s != (_want)) {
            _t.errorf(("constructed struct = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
        };
        {};
        {
            var __0 = ((_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("struct { S string \"s\"; X uint8 \"x\"; Y uint64; Z [3]uint16 }" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("StructOf(fields).String()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _stt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ string : ("" : stdgo.GoString), x : (0 : stdgo.GoUInt8), y : (0 : stdgo.GoUInt64), z : new stdgo.GoArray<stdgo.GoUInt16>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt16)]) } : _internal.reflect_test.Reflect_test_T__struct_80.T__struct_80)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_st.size() != (_stt.size())) {
            _t.errorf(("constructed struct size = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.size()), stdgo.Go.toInterface(_stt.size()));
        };
        if (_st.align() != (_stt.align())) {
            _t.errorf(("constructed struct align = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.align()), stdgo.Go.toInterface(_stt.align()));
        };
        if (_st.fieldAlign() != (_stt.fieldAlign())) {
            _t.errorf(("constructed struct field align = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.fieldAlign()), stdgo.Go.toInterface(_stt.fieldAlign()));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _st.numField() : Bool), _i++, {
                var _o1 = (_st.field(_i).offset : stdgo.GoUIntptr);
                var _o2 = (_stt.field(_i).offset : stdgo.GoUIntptr);
                if (_o1 != (_o2)) {
                    _t.errorf(("constructed struct field %v offset = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_o1), stdgo.Go.toInterface(_o2));
                };
            });
        };
        _st = stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0, ...[]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        _stt = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ g1 : (0 : stdgo.GoUInt8), g2 : new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0) } : _internal.reflect_test.Reflect_test_T__struct_81.T__struct_81))));
        if (_st.size() != (_stt.size())) {
            _t.errorf(("constructed zero-padded struct size = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.size()), stdgo.Go.toInterface(_stt.size()));
        };
        if (_st.align() != (_stt.align())) {
            _t.errorf(("constructed zero-padded struct align = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.align()), stdgo.Go.toInterface(_stt.align()));
        };
        if (_st.fieldAlign() != (_stt.fieldAlign())) {
            _t.errorf(("constructed zero-padded struct field align = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_st.fieldAlign()), stdgo.Go.toInterface(_stt.fieldAlign()));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _st.numField() : Bool), _i++, {
                var _o1 = (_st.field(_i).offset : stdgo.GoUIntptr);
                var _o2 = (_stt.field(_i).offset : stdgo.GoUIntptr);
                if (_o1 != (_o2)) {
                    _t.errorf(("constructed zero-padded struct field %v offset = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_o1), stdgo.Go.toInterface(_o2));
                };
            });
        };
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("duplicate field" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_structOf.structOf((_fields.__slice__((2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)), stdgo.Go.toInterface(stdgo.Go.asInterface(({ y : (0 : stdgo.GoUInt64) } : _internal.reflect_test.Reflect_test_T__struct_82.T__struct_82))));
        {};
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("F" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOf___localname___structFieldType_141939.T_testStructOf___localname___structFieldType_141939>))).elem() } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)), stdgo.Go.toInterface(stdgo.Go.asInterface(({ f : (null : _internal.reflect_test.Reflect_test_T_testStructOf___localname___structFieldType_141939.T_testStructOf___localname___structFieldType_141939) } : _internal.reflect_test.Reflect_test_T__struct_83.T__struct_83))));
    }
