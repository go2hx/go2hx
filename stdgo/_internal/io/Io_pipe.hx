package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function pipe():{ var _0 : stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>; var _1 : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>; } {
        var _p = (stdgo.Go.setRef(({ _wrCh : (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), _rdCh : (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), _done : (new stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>(0, () -> ({} : stdgo._internal.io.Io_T_discard.T_discard)) : stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>) } : stdgo._internal.io.Io_T_pipe.T_pipe)) : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.io.Io_PipeReader.PipeReader(_p) : stdgo._internal.io.Io_PipeReader.PipeReader)) : stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>), _1 : (stdgo.Go.setRef((new stdgo._internal.io.Io_PipeWriter.PipeWriter(_p) : stdgo._internal.io.Io_PipeWriter.PipeWriter)) : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>) };
    }
