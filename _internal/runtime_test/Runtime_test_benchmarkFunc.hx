package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((0 : stdgo.GoInt)), _pc:stdgo.GoUIntptr = __tmp__._0, __6:stdgo.GoString = __tmp__._1, __7:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok) {
            _b.fatal(stdgo.Go.toInterface(("failed to look up PC" : stdgo.GoString)));
        };
        var _f = stdgo._internal.runtime.Runtime_funcForPC.funcForPC(_pc);
        _b.run(("Name" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _name = (_f.name()?.__copy__() : stdgo.GoString);
                    if (_name != (("runtime_test.BenchmarkFunc" : stdgo.GoString))) {
                        _b.fatalf(("unexpected name %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    };
                });
            };
        });
        _b.run(("Entry" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _pc = (_f.entry() : stdgo.GoUIntptr);
                    if (_pc == ((0 : stdgo.GoUIntptr))) {
                        _b.fatal(stdgo.Go.toInterface(("zero PC" : stdgo.GoString)));
                    };
                });
            };
        });
        _b.run(("FileLine" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var __tmp__ = _f.fileLine(_pc), _file:stdgo.GoString = __tmp__._0, _line:stdgo.GoInt = __tmp__._1;
                    if ((!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_file?.__copy__(), ("symtab_test.go" : stdgo.GoString)) || (_line == (0 : stdgo.GoInt)) : Bool)) {
                        _b.fatalf(("unexpected file/line %q:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line));
                    };
                });
            };
        });
    }
