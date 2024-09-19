package stdgo._internal.internal.testenv;
function hasCGO():Bool {
        stdgo._internal.internal.testenv.Testenv__hasCgoOnce._hasCgoOnce.do_(function():Void {
            var __tmp__ = stdgo._internal.internal.testenv.Testenv_goTool.goTool(), _goTool:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            var _cmd = stdgo._internal.os.exec.Exec_command.command(_goTool?.__copy__(), ("env" : stdgo.GoString), ("CGO_ENABLED" : stdgo.GoString));
            _cmd.env = stdgo._internal.internal.testenv.Testenv__origEnv._origEnv;
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool((stdgo._internal.bytes.Bytes_trimSpace.trimSpace(_out) : stdgo.GoString)?.__copy__());
                stdgo._internal.internal.testenv.Testenv__hasCgo._hasCgo = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: non-boolean output %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_out)));
            };
        });
        return stdgo._internal.internal.testenv.Testenv__hasCgo._hasCgo;
    }
