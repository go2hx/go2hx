package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testStringPathNotResolved(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("makemeasandwich" : stdgo.GoString)), __8:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.skip(stdgo.Go.toInterface(("wow, thanks" : stdgo.GoString)));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("makemeasandwich" : stdgo.GoString), ("-lettuce" : stdgo.GoString));
        var _want = ("makemeasandwich -lettuce" : stdgo.GoString);
        {
            var _got = ((_cmd.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("String(%q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(("makemeasandwich" : stdgo.GoString)), stdgo.Go.toInterface(("-lettuce" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
