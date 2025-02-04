package stdgo._internal.runtime.coverage;
function _initHook(_istest:Bool):Void {
        var _runOnNonZeroExit = (true : Bool);
        stdgo._internal.runtime.coverage.Coverage__runtime_addexithook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitcounterdata._emitCounterData, _runOnNonZeroExit);
        if (_istest) {
            stdgo._internal.runtime.coverage.Coverage__runtime_addexithook._runtime_addExitHook(stdgo._internal.runtime.coverage.Coverage__emitmetadata._emitMetaData, _runOnNonZeroExit);
        } else {
            stdgo._internal.runtime.coverage.Coverage__emitmetadata._emitMetaData();
        };
    }
