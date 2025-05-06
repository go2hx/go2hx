package stdgo._internal.go.importer;
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void {
        stdgo._internal.go.build.Build_default_.default_.gOROOT = stdgo._internal.internal.testenv.Testenv_goroot.gOROOT((null : stdgo._internal.testing.Testing_tb.TB))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/importer/importer_test.go#L19"
        #if (sys || hxnodejs) Sys.exit(_m.run()) #else null #end;
    }
