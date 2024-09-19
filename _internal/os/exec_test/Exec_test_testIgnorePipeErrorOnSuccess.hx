package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testIgnorePipeErrorOnSuccess(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _testWith = function(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
            return function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.parallel();
                var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echo" : stdgo.GoString), ("foo" : stdgo.GoString));
                var _out:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _cmd.stdin = _r;
                _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
                {
                    var _err = (_cmd.run() : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __0 = ((_out.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("foo\n" : stdgo.GoString);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        _t.run(("10MB" : stdgo.GoString), _testWith(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (10485760 : stdgo.GoInt))?.__copy__()))));
        _t.run(("Infinite" : stdgo.GoString), _testWith(stdgo.Go.asInterface((new _internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader() : _internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader))));
    }
