package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testGetters(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _expectedName = ("flag set" : stdgo.GoString);
        var _expectedErrorHandling = (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling);
        var _expectedOutput = (stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr) : stdgo._internal.io.Io_Writer.Writer);
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(_expectedName?.__copy__(), _expectedErrorHandling);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %#v, expected %#v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
        _expectedName = ("gopher" : stdgo.GoString);
        _expectedErrorHandling = (1 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling);
        _expectedOutput = stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout);
        _fs.init(_expectedName?.__copy__(), _expectedErrorHandling);
        _fs.setOutput(_expectedOutput);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
    }
