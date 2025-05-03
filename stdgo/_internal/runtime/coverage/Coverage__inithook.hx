package stdgo._internal.runtime.coverage;
function _initHook(_istest:Bool):Void {
        var _runOnNonZeroExit = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/hooks.go#L33"
        stdgo._internal.runtime.coverage.Coverage__runtime_addexithook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitcounterdata._emitCounterData, _runOnNonZeroExit);
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/hooks.go#L34"
        if (_istest) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/hooks.go#L35"
            stdgo._internal.runtime.coverage.Coverage__runtime_addexithook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitmetadata._emitMetaData, _runOnNonZeroExit);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/hooks.go#L37"
            stdgo._internal.runtime.coverage.Coverage__emitmetadata._emitMetaData();
        };
    }
