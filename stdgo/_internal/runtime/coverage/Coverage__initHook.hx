package stdgo._internal.runtime.coverage;
function _initHook(_istest:Bool):Void {
        var _runOnNonZeroExit = (true : Bool);
        stdgo._internal.runtime.coverage.Coverage__runtime_addExitHook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitCounterData._emitCounterData, _runOnNonZeroExit);
        if (_istest) {
            stdgo._internal.runtime.coverage.Coverage__runtime_addExitHook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitMetaData._emitMetaData, _runOnNonZeroExit);
        } else {
            stdgo._internal.runtime.coverage.Coverage__emitMetaData._emitMetaData();
        };
    }
