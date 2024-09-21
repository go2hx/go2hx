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
function _testCallerBar(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller(_i), _pc:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
                var _f = stdgo._internal.runtime.Runtime_funcForPC.funcForPC(_pc);
                if (((((((!_ok || !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_file?.__copy__(), ("symtab_test.go" : stdgo.GoString)) : Bool) || (((_i == (0 : stdgo.GoInt)) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_f.name()?.__copy__(), ("testCallerBar" : stdgo.GoString)) : Bool)) : Bool) || (((_i == (1 : stdgo.GoInt)) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_f.name()?.__copy__(), ("testCallerFoo" : stdgo.GoString)) : Bool)) : Bool) || (_line < (5 : stdgo.GoInt) : Bool) : Bool) || (_line > (1000 : stdgo.GoInt) : Bool) : Bool) || (_f.entry() >= _pc : Bool) : Bool)) {
                    _t.errorf(("incorrect symbol info %d: %t %d %d %s %s %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_f.entry()), stdgo.Go.toInterface(_pc), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line));
                };
            });
        };
    }
