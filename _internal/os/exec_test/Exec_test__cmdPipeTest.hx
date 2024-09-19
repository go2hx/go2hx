package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdPipeTest(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        var _bufr = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin));
        while (true) {
            var __tmp__ = _bufr.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            } else if (_err != null) {
                Sys.exit((1 : stdgo.GoInt));
            };
            if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_line, (("O:" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.os.Os_stdout.stdout.write(_line);
                stdgo._internal.os.Os_stdout.stdout.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            } else if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_line, (("E:" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.os.Os_stderr.stderr.write(_line);
                stdgo._internal.os.Os_stderr.stderr.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
