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
function _buildableFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _dir:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _ctxt = (stdgo._internal.go.build.Build_default_.default_?.__copy__() : stdgo._internal.go.build.Build_Context.Context);
        _ctxt.cgoEnabled = true;
        var __tmp__ = _ctxt.importDir(_dir?.__copy__(), (0u32 : stdgo._internal.go.build.Build_ImportMode.ImportMode)), _pkg:stdgo.Ref<stdgo._internal.go.build.Build_Package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("can\'t find buildable files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _pkg.goFiles;
    }
