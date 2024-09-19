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
function _runTestProg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _binary:stdgo.GoString, _name:stdgo.GoString, _env:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _env = new stdgo.Slice<stdgo.GoString>(_env.length, 0, ..._env);
        if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
            _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
        };
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        _t.helper();
        var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, _binary?.__copy__()), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        return _internal.runtime_test.Runtime_test__runBuiltTestProg._runBuiltTestProg(_t, _exe?.__copy__(), _name?.__copy__(), ...(_env : Array<stdgo.GoString>))?.__copy__();
    }
