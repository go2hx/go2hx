package stdgo.testing;
class T_matchStringOnly_static_extension {
    static public function snapshotCoverage(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.snapshotCoverage(_f);
    }
    static public function resetCoverage(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.resetCoverage(_f);
    }
    static public function checkCorpus(_f:T_matchStringOnly, _0:Array<stdgo.AnyInterface>, _1:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.checkCorpus(_f, _0, _1);
    }
    static public function readCorpus(_f:T_matchStringOnly, _0:String, _1:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Tuple<Array<stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return {
            final obj = stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.readCorpus(_f, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(_f:T_matchStringOnly, _0:stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry -> stdgo.Error):stdgo.Error {
        final _0 = _0;
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.runFuzzWorker(_f, _0);
    }
    static public function coordinateFuzzing(_f:T_matchStringOnly, _0:stdgo._internal.time.Time_Duration.Duration, _1:haxe.Int64, _2:stdgo._internal.time.Time_Duration.Duration, _3:haxe.Int64, _4:StdTypes.Int, _5:Array<stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry>, _6:Array<stdgo._internal.reflect.Reflect_Type_.Type_>, _7:String, _8:String):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        final _3 = (_3 : stdgo.GoInt64);
        final _4 = (_4 : stdgo.GoInt);
        final _5 = ([for (i in _5) i] : stdgo.Slice<stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry>);
        final _6 = ([for (i in _6) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        final _7 = (_7 : stdgo.GoString);
        final _8 = (_8 : stdgo.GoString);
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.coordinateFuzzing(_f, _0, _1, _2, _3, _4, _5, _6, _7, _8);
    }
    static public function setPanicOnExit0(_f:T_matchStringOnly, _0:Bool):Void {
        stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.setPanicOnExit0(_f, _0);
    }
    static public function stopTestLog(_f:T_matchStringOnly):stdgo.Error {
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.stopTestLog(_f);
    }
    static public function startTestLog(_f:T_matchStringOnly, _0:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.startTestLog(_f, _0);
    }
    static public function importPath(_f:T_matchStringOnly):String {
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.importPath(_f);
    }
    static public function writeProfileTo(_f:T_matchStringOnly, _0:String, _1:stdgo._internal.io.Io_Writer.Writer, _2:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.writeProfileTo(_f, _0, _1, _2);
    }
    static public function stopCPUProfile(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.stopCPUProfile(_f);
    }
    static public function startCPUProfile(_f:T_matchStringOnly, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.startCPUProfile(_f, _w);
    }
    static public function matchString(_f:T_matchStringOnly, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_T_matchStringOnly_static_extension.T_matchStringOnly_static_extension.matchString(_f, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
