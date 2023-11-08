package stdgo.internal.platform_test;
import stdgo.internal.platform.Platform;
/**
    
    
    
**/
var _flagFix : stdgo.Pointer<Bool> = stdgo.flag.Flag.bool_(("fix" : stdgo.GoString), false, ("if true, fix out-of-date generated files" : stdgo.GoString));
/**
    
    
    
**/
final _zosarchTmpl : stdgo.GoString = ("// Code generated by go test internal/platform -fix. DO NOT EDIT.\n\n// To change the information in this file, edit the cgoEnabled and/or firstClass\n// maps in cmd/dist/build.go, then run \'go generate internal/platform\'.\n\npackage platform\n\n// List is the list of all valid GOOS/GOARCH combinations,\n// including known-broken ports.\nvar List = []OSArch{\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} },\n{{end}}\n}\n\nvar distInfo = map[OSArch]osArchInfo {\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} }:\n{ {{if .CgoSupported}}CgoSupported: true, {{end}}{{if .FirstClass}}FirstClass: true, {{end}}{{if .Broken}} Broken: true, {{end}} },\n{{end}}\n}\n" : stdgo.GoString);
/**
    
    
    
**/
@:structInit class T_testGenerated_0___localname___listEntry {
    public var goos : stdgo.GoString = "";
    public var goarch : stdgo.GoString = "";
    public var cgoSupported : Bool = false;
    public var firstClass : Bool = false;
    public var broken : Bool = false;
    public function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString, ?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) {
        if (goos != null) this.goos = goos;
        if (goarch != null) this.goarch = goarch;
        if (cgoSupported != null) this.cgoSupported = cgoSupported;
        if (firstClass != null) this.firstClass = firstClass;
        if (broken != null) this.broken = broken;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGenerated_0___localname___listEntry(goos, goarch, cgoSupported, firstClass, broken);
    }
}
/**
    // TestGenerated verifies that zosarch.go is up to date,
    // or regenerates it if the -fix flag is set.
**/
function testGenerated(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoRun(stdgo.Go.asInterface(_t));
        var _cmd = stdgo.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("go" : stdgo.GoString), ("run" : stdgo.GoString), ("cmd/dist" : stdgo.GoString), ("list" : stdgo.GoString), ("-json" : stdgo.GoString), ("-broken" : stdgo.GoString));
        _cmd.env = (_cmd.environ().__append__(("GOROOT=" : stdgo.GoString) + stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>)) : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>), ok : false };
                }, _ee = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (_ee.stderr.length > (0 : stdgo.StdGoTypes.GoInt))) {
                    _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_ee.stderr));
                };
            };
            _t.fatalf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
        };
        {};
        var _entries:stdgo.Slice<T_testGenerated_0___localname___listEntry> = (null : stdgo.Slice<stdgo.internal.platform_test.Platform_test.T_testGenerated_0___localname___listEntry>);
        {
            var _err:stdgo.Error = stdgo.encoding.json.Json.unmarshal(_out, stdgo.Go.toInterface((stdgo.Go.setRef(_entries) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.internal.platform_test.Platform_test.T_testGenerated_0___localname___listEntry>>)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _tmplOut = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _tmpl = {
            var __tmp__ = stdgo.text.template.Template.new_(("zosarch" : stdgo.GoString)).parse(("// Code generated by go test internal/platform -fix. DO NOT EDIT.\n\n// To change the information in this file, edit the cgoEnabled and/or firstClass\n// maps in cmd/dist/build.go, then run \'go generate internal/platform\'.\n\npackage platform\n\n// List is the list of all valid GOOS/GOARCH combinations,\n// including known-broken ports.\nvar List = []OSArch{\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} },\n{{end}}\n}\n\nvar distInfo = map[OSArch]osArchInfo {\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} }:\n{ {{if .CgoSupported}}CgoSupported: true, {{end}}{{if .FirstClass}}FirstClass: true, {{end}}{{if .Broken}} Broken: true, {{end}} },\n{{end}}\n}\n" : stdgo.GoString));
            stdgo.text.template.Template.must((__tmp__._0 : stdgo.StdGoTypes.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(_tmplOut), stdgo.Go.toInterface(_entries));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _cmd = stdgo.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("gofmt" : stdgo.GoString));
        _cmd.stdin = stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_tmplOut.bytes()));
        var __tmp__ = _cmd.output(), _want:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.logf(("stdin:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tmplOut.bytes()));
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>)) : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.os.exec.Exec.ExitError>), ok : false };
                }, _ee = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (_ee.stderr.length > (0 : stdgo.StdGoTypes.GoInt))) {
                    _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_ee.stderr));
                };
            };
            _t.fatalf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo.os.Os.readFile(("zosarch.go" : stdgo.GoString)), _got:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err == null) && stdgo.bytes.Bytes.equal(_got, _want)) {
            return;
        };
        if (!_flagFix.value) {
            if (_err != null) {
                _t.log(stdgo.Go.toInterface(_err));
            } else {
                _t.logf(("diff:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.internal.diff.Diff.diff(("zosarch.go" : stdgo.GoString), _got, ("want" : stdgo.GoString), _want)));
            };
            _t.fatalf(("zosarch.go is missing or out of date; to regenerate, run\ngo generate internal/platform" : stdgo.GoString));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.writeFile(("zosarch.go" : stdgo.GoString), _want, (438u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
