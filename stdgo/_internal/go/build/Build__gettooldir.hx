package stdgo._internal.go.build;
function _getToolDir():stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/build/gc.go#L16"
        return stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__(), ("pkg/tool/js_wasm" : stdgo.GoString))?.__copy__();
    }
