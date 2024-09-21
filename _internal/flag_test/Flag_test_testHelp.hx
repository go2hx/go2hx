package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testHelp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _helpCalled:Bool = false;
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("help test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _fs.usage = function():Void {
            _helpCalled = true;
        };
        var _flag:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_flag), ("flag" : stdgo.GoString), false, ("regular flag" : stdgo.GoString));
        var _err = (_fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-flag=true" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_flag) {
            _t.error(stdgo.Go.toInterface(("flag was not set by -flag" : stdgo.GoString)));
        };
        if (_helpCalled) {
            _t.error(stdgo.Go.toInterface(("help called for regular flag" : stdgo.GoString)));
            _helpCalled = false;
        };
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-help" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("error expected" : stdgo.GoString)));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.flag.Flag_errHelp.errHelp))) {
            _t.fatal(stdgo.Go.toInterface(("expected ErrHelp; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was not called" : stdgo.GoString)));
        };
        var _help:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_help), ("help" : stdgo.GoString), false, ("help flag" : stdgo.GoString));
        _helpCalled = false;
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-help" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error for defined -help; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was called; should not have been for defined help flag" : stdgo.GoString)));
        };
    }
