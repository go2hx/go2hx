package stdgo._internal.internal.coverage;
function parseCounterMode(_mode:stdgo.GoString):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        var _cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
        {
            final __value__ = _mode;
            if (__value__ == (("set" : stdgo.GoString))) {
                _cm = (1 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            } else if (__value__ == (("count" : stdgo.GoString))) {
                _cm = (2 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            } else if (__value__ == (("atomic" : stdgo.GoString))) {
                _cm = (3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            } else if (__value__ == (("regonly" : stdgo.GoString))) {
                _cm = (4 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            } else if (__value__ == (("testmain" : stdgo.GoString))) {
                _cm = (5 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            } else {
                _cm = (0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            };
        };
        return _cm;
    }
