package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testPipes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _check = (function(_what:stdgo.GoString, _err:stdgo.Error):Void {
            if (_err != null) {
                _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
            };
        } : (stdgo.GoString, stdgo.Error) -> Void);
        var _c = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("pipetest" : stdgo.GoString));
        var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StdinPipe" : stdgo.GoString), _err);
        var __tmp__ = _c.stdoutPipe(), _stdout:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StdoutPipe" : stdgo.GoString), _err);
        var __tmp__ = _c.stderrPipe(), _stderr:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StderrPipe" : stdgo.GoString), _err);
        var _outbr = stdgo._internal.bufio.Bufio_newReader.newReader(_stdout);
        var _errbr = stdgo._internal.bufio.Bufio_newReader.newReader(_stderr);
        var _line = function(_what:stdgo.GoString, _br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.GoString {
            var __tmp__ = _br.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __26:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
            };
            return (_line : stdgo.GoString)?.__copy__();
        };
        _err = _c.start();
        _check(("Start" : stdgo.GoString), _err);
        {
            var __tmp__ = _stdin.write((("O:I am output\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        _check(("first stdin Write" : stdgo.GoString), _err);
        {
            var __0 = (_line(("first output line" : stdgo.GoString), _outbr)?.__copy__() : stdgo.GoString), __1 = ("O:I am output" : stdgo.GoString);
var _e = __1, _g = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        {
            var __tmp__ = _stdin.write((("E:I am error\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        _check(("second stdin Write" : stdgo.GoString), _err);
        {
            var __0 = (_line(("first error line" : stdgo.GoString), _errbr)?.__copy__() : stdgo.GoString), __1 = ("E:I am error" : stdgo.GoString);
var _e = __1, _g = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        {
            var __tmp__ = _stdin.write((("O:I am output2\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        _check(("third stdin Write 3" : stdgo.GoString), _err);
        {
            var __0 = (_line(("second output line" : stdgo.GoString), _outbr)?.__copy__() : stdgo.GoString), __1 = ("O:I am output2" : stdgo.GoString);
var _e = __1, _g = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        _stdin.close();
        _err = _c.wait_();
        _check(("Wait" : stdgo.GoString), _err);
    }
