package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
function _initHook(_istest:Bool):Void {
        var _runOnNonZeroExit = (true : Bool);
        stdgo._internal.runtime.coverage.Coverage__runtime_addExitHook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitCounterData._emitCounterData, _runOnNonZeroExit);
        if (_istest) {
            stdgo._internal.runtime.coverage.Coverage__runtime_addExitHook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitMetaData._emitMetaData, _runOnNonZeroExit);
        } else {
            stdgo._internal.runtime.coverage.Coverage__emitMetaData._emitMetaData();
        };
    }
