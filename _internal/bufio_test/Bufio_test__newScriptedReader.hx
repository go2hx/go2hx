package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _newScriptedReader(_steps:haxe.Rest<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>):stdgo._internal.io.Io_Reader.Reader {
        var _steps = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>(_steps.length, 0, ..._steps);
        var _sr = (_steps : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_sr) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader>));
    }
