package stdgo._internal.encoding.hex_test;
import stdgo._internal.encoding.hex.Hex;
function exampleEncode():Void {
        var _src = (("Hello Gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.hex.Hex.encode(_dst, _src);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_dst));
    }
function exampleDecode():Void {
        var _src = (("48656c6c6f20476f7068657221" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex.decodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.hex.Hex.decode(_dst, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
    }
function exampleDecodeString():Void {
        {};
        var __tmp__ = stdgo._internal.encoding.hex.Hex.decodeString(("48656c6c6f20476f7068657221" : stdgo.GoString)), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_decoded));
    }
function exampleDump():Void {
        var _content = (("Go is an open source programming language." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex.dump(_content)));
    }
function exampleDumper():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _lines = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Go is an open source programming language." : stdgo.GoString), ("\n" : stdgo.GoString), ("We encourage all Go users to subscribe to golang-announce." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _stdoutDumper = (stdgo._internal.encoding.hex.Hex.dumper(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout)) : stdgo._internal.io.Io.WriteCloser);
            __deferstack__.unshift(() -> _stdoutDumper.close());
            for (__0 => _line in _lines) {
                _stdoutDumper.write((_line : stdgo.Slice<stdgo.GoByte>));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function exampleEncodeToString():Void {
        var _src = (("Hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _encodedStr = (stdgo._internal.encoding.hex.Hex.encodeToString(_src)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_encodedStr));
    }
