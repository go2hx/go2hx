package stdgo.encoding.hex_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.encoding.hex.Hex;
function exampleEncode():Void {
        var _src = (("Hello Gopher!" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.hex.Hex.encodedLen((_src.length)) : GoInt).toBasic(), 0).__setNumber32__();
        stdgo.encoding.hex.Hex.encode(_dst, _src);
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_dst));
    }
function exampleDecode():Void {
        var _src = (("48656c6c6f20476f7068657221" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.hex.Hex.decodedLen((_src.length)) : GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.encoding.hex.Hex.decode(_dst, _src), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface((_dst.__slice__(0, _n) : Slice<GoUInt8>)));
    }
function exampleDecodeString():Void {
        {};
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(("48656c6c6f20476f7068657221" : GoString)), _decoded:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_decoded));
    }
function exampleDump():Void {
        var _content = (("Go is an open source programming language." : GoString) : Slice<GoByte>);
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.encoding.hex.Hex.dump(_content)));
    }
function exampleDumper():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _lines = (new Slice<GoString>(3, 3, ("Go is an open source programming language." : GoString), ("\n" : GoString), ("We encourage all Go users to subscribe to golang-announce." : GoString)) : Slice<GoString>);
            var _stdoutDumper:stdgo.io.Io.WriteCloser = stdgo.encoding.hex.Hex.dumper(Go.asInterface(stdgo.os.Os.stdout));
            __deferstack__.unshift(() -> _stdoutDumper.close());
            for (__0 => _line in _lines) {
                _stdoutDumper.write((_line : Slice<GoByte>));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function exampleEncodeToString():Void {
        var _src = (("Hello" : GoString) : Slice<GoByte>);
        var _encodedStr:GoString = stdgo.encoding.hex.Hex.encodeToString(_src);
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_encodedStr));
    }
