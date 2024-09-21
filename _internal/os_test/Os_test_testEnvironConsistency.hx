package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testEnvironConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        for (__8 => _kv in stdgo._internal.os.Os_environ_.environ_()) {
            var _i = (stdgo._internal.strings.Strings_index.index(_kv?.__copy__(), ("=" : stdgo.GoString)) : stdgo.GoInt);
            if (_i == ((0 : stdgo.GoInt))) {
                _i = (stdgo._internal.strings.Strings_index.index((_kv.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("=" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("Environ entry missing \'=\': %q" : stdgo.GoString), stdgo.Go.toInterface(_kv));
            };
            var _k = ((_kv.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _v = ((_kv.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(_k?.__copy__()), _v2:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok && (_v == _v2) : Bool)) {
                _t.logf(("LookupEnv(%q) = %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v2), stdgo.Go.toInterface(_ok));
            } else {
                _t.errorf(("Environ contains %q, but LookupEnv(%q) = %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_kv), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v2), stdgo.Go.toInterface(_ok));
            };
            {
                var _err = (stdgo._internal.os.Os_setenv.setenv(_k?.__copy__(), _v?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    _t.logf(("Setenv(%q, %q)" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                } else {
                    _t.errorf(("Environ contains %q, but SetEnv(%q, %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_kv), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
