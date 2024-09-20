package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkCallArgCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _byteArray = (function(_n:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
            return stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_arrayOf.arrayOf(_n, stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8)))))?.__copy__();
        } : stdgo.GoInt -> stdgo._internal.reflect.Reflect_Value.Value);
        var _sizes = (new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_103.T__struct_103>(5, 5, ...[({ _fv : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoArray<stdgo.GoUInt8>):Void {}))?.__copy__(), _arg : _byteArray((128 : stdgo.GoInt))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103), ({ _fv : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoArray<stdgo.GoUInt8>):Void {}))?.__copy__(), _arg : _byteArray((256 : stdgo.GoInt))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103), ({ _fv : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoArray<stdgo.GoUInt8>):Void {}))?.__copy__(), _arg : _byteArray((1024 : stdgo.GoInt))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103), ({ _fv : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoArray<stdgo.GoUInt8>):Void {}))?.__copy__(), _arg : _byteArray((4096 : stdgo.GoInt))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103), ({ _fv : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoArray<stdgo.GoUInt8>):Void {}))?.__copy__(), _arg : _byteArray((65536 : stdgo.GoInt))?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _fv : ({} : stdgo._internal.reflect.Reflect_Value.Value), _arg : ({} : stdgo._internal.reflect.Reflect_Value.Value) } : _internal.reflect_test.Reflect_test_T__struct_103.T__struct_103)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_103.T__struct_103>);
        for (__6 => _size in _sizes) {
            var _bench = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _args = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[_size._arg?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
                _b.setBytes((_size._arg.len() : stdgo.GoInt64));
                _b.resetTimer();
                _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                    while (_pb.next()) {
                        _size._fv.call(_args);
                    };
                });
            };
            var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("size=%v" : stdgo.GoString), stdgo.Go.toInterface(_size._arg.len()))?.__copy__() : stdgo.GoString);
            _b.run(_name?.__copy__(), _bench);
        };
    }
