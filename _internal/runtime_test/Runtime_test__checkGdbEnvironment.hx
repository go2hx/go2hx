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
function _checkGdbEnvironment(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("darwin" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("gdb does not work on darwin" : stdgo.GoString)));
            } else if (__value__ == (("netbsd" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("gdb does not work with threads on NetBSD; see https://golang.org/issue/22893 and https://gnats.netbsd.org/52548" : stdgo.GoString)));
            } else if (__value__ == (("linux" : stdgo.GoString))) {
                if (false) {
                    _t.skip(stdgo.Go.toInterface(("skipping gdb tests on linux/ppc64; see https://golang.org/issue/17366" : stdgo.GoString)));
                };
                if (false) {
                    _t.skip(stdgo.Go.toInterface(("skipping gdb tests on linux/mips; see https://golang.org/issue/25939" : stdgo.GoString)));
                };
                if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-alpine" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping gdb tests on alpine; see https://golang.org/issue/54352" : stdgo.GoString)));
                };
            } else if (__value__ == (("freebsd" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("skipping gdb tests on FreeBSD; see https://golang.org/issue/29508" : stdgo.GoString)));
            } else if (__value__ == (("aix" : stdgo.GoString))) {
                if (stdgo._internal.testing.Testing_short.short()) {
                    _t.skip(stdgo.Go.toInterface(("skipping gdb tests on AIX; see https://golang.org/issue/35710" : stdgo.GoString)));
                };
            } else if (__value__ == (("plan9" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("there is no gdb on Plan 9" : stdgo.GoString)));
            };
        };
        {
            var _final = (stdgo._internal.os.Os_getenv.getenv(("GOROOT_FINAL" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (((_final != stdgo.Go.str()) && (stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t)) != _final) : Bool)) {
                _t.skip(stdgo.Go.toInterface(("gdb test can fail with GOROOT_FINAL pending" : stdgo.GoString)));
            };
        };
    }
