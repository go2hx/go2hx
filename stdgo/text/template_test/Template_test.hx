package stdgo.text.template_test;
import stdgo.text.template.Template;
/**
    // templateFile defines the contents of a template to be stored in a file, for testing.
    
    
**/
@:structInit @:private class T_templateFile {
    public var _name : stdgo.GoString = "";
    public var _contents : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_contents:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_contents != null) this._contents = _contents;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_templateFile(_name, _contents);
    }
}
/**
    // Prepare some data to insert into the template.
    
    
**/
@:structInit class T_exampleTemplate_53___localname___Recipient {
    public var name : stdgo.GoString = "";
    public var gift : stdgo.GoString = "";
    public var attended : Bool = false;
    public function new(?name:stdgo.GoString, ?gift:stdgo.GoString, ?attended:Bool) {
        if (name != null) this.name = name;
        if (gift != null) this.gift = gift;
        if (attended != null) this.attended = attended;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleTemplate_53___localname___Recipient(name, gift, attended);
    }
}
function exampleTemplate():Void {
        {};
        {};
        var _recipients:stdgo.Slice<stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient> = (new stdgo.Slice<stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient>(3, 3, (new stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient(("Aunt Mildred" : stdgo.GoString), ("bone china tea set" : stdgo.GoString), true) : stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient), (new stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient(("Uncle John" : stdgo.GoString), ("moleskin pants" : stdgo.GoString), false) : stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient), (new stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient(("Cousin Rodney" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient)) : stdgo.Slice<stdgo.text.template_test.Template_test.T_exampleTemplate_53___localname___Recipient>);
        var _t = ({
            var __tmp__ = stdgo.text.template.Template.new_(("letter" : stdgo.GoString)).parse(("\nDear {{.Name}},\n{{if .Attended}}\nIt was a pleasure to see you at the wedding.\n{{- else}}\nIt is a shame you couldn\'t make it to the wedding.\n{{- end}}\n{{with .Gift -}}\nThank you for the lovely {{.}}.\n{{end}}\nBest wishes,\nJosie\n" : stdgo.GoString));
            stdgo.text.template.Template.must((__tmp__._0 : stdgo.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        for (__8 => _r in _recipients) {
            var _err:stdgo.Error = _t.execute(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(_r));
            if (_err != null) {
                stdgo.log.Log.println(stdgo.Go.toInterface(("executing template:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleTemplate_block():Void {
        {};
        var __0:stdgo.text.template.Template.FuncMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            @:mergeBlock {
                x.set(("join" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.join));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), __1:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(5, 5, ("Gamora" : stdgo.GoString), ("Groot" : stdgo.GoString), ("Nebula" : stdgo.GoString), ("Rocket" : stdgo.GoString), ("Star-Lord" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _guardians:stdgo.Slice<stdgo.GoString> = __1, _funcs:stdgo.text.template.Template.FuncMap = __0;
        var __tmp__ = stdgo.text.template.Template.new_(("master" : stdgo.GoString)).funcs(_funcs).parse(("Names:{{block \"list\" .}}{{\"\\n\"}}{{range .}}{{println \"-\" .}}{{end}}{{end}}" : stdgo.GoString)), _masterTmpl:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = ({
            var __tmp__ = _masterTmpl.clone();
            stdgo.text.template.Template.must((__tmp__._0 : stdgo.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
        }).parse(("{{define \"list\"}} {{join . \", \"}}{{end}} " : stdgo.GoString)), _overlayTmpl:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _masterTmpl.execute(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(_guardians));
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _overlayTmpl.execute(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(_guardians));
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function _createTestDir(_files:stdgo.Slice<T_templateFile>):stdgo.GoString {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), ("template" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            for (__0 => _file in _files) {
                var __tmp__ = stdgo.os.Os.create(stdgo.path.filepath.Filepath.join(_dir?.__copy__(), _file._name?.__copy__())?.__copy__()), _f:stdgo.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _f.close());
                {
                    var __tmp__ = stdgo.io.Io.writeString(stdgo.Go.asInterface(_f), _file._contents?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _dir?.__copy__();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return ("" : stdgo.GoString);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return ("" : stdgo.GoString);
        };
    }
/**
    // Here we demonstrate loading a set of templates from a directory.
**/
function exampleTemplate_glob():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _createTestDir((new stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>(3, 3, (new stdgo.text.template_test.Template_test.T_templateFile(("T0.tmpl" : stdgo.GoString), ("T0 invokes T1: ({{template \"T1\"}})" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile), (new stdgo.text.template_test.Template_test.T_templateFile(("T1.tmpl" : stdgo.GoString), ("{{define \"T1\"}}T1 invokes T2: ({{template \"T2\"}}){{end}}" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile), (new stdgo.text.template_test.Template_test.T_templateFile(("T2.tmpl" : stdgo.GoString), ("{{define \"T2\"}}This is T2{{end}}" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile)) : stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>))?.__copy__();
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0?.__copy__()));
            };
            var _pattern:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("*.tmpl" : stdgo.GoString))?.__copy__();
            var _tmpl = ({
                var __tmp__ = stdgo.text.template.Template.parseGlob(_pattern?.__copy__());
                stdgo.text.template.Template.must((__tmp__._0 : stdgo.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _err:stdgo.Error = _tmpl.execute(stdgo.Go.asInterface(stdgo.os.Os.stdout), (null : stdgo.AnyInterface));
            if (_err != null) {
                stdgo.log.Log.fatalf(("template execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // This example demonstrates one way to share some templates
    // and use them in different contexts. In this variant we add multiple driver
    // templates by hand to an existing bundle of templates.
**/
function exampleTemplate_helpers():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _createTestDir((new stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>(2, 2, (new stdgo.text.template_test.Template_test.T_templateFile(("T1.tmpl" : stdgo.GoString), ("{{define \"T1\"}}T1 invokes T2: ({{template \"T2\"}}){{end}}" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile), (new stdgo.text.template_test.Template_test.T_templateFile(("T2.tmpl" : stdgo.GoString), ("{{define \"T2\"}}This is T2{{end}}" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile)) : stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>))?.__copy__();
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0?.__copy__()));
            };
            var _pattern:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("*.tmpl" : stdgo.GoString))?.__copy__();
            var _templates = ({
                var __tmp__ = stdgo.text.template.Template.parseGlob(_pattern?.__copy__());
                stdgo.text.template.Template.must((__tmp__._0 : stdgo.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var __tmp__ = _templates.parse(("{{define `driver1`}}Driver 1 calls T1: ({{template `T1`}})\n{{end}}" : stdgo.GoString)), __8:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("parsing driver1: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _templates.parse(("{{define `driver2`}}Driver 2 calls T2: ({{template `T2`}})\n{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("parsing driver2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = _templates.executeTemplate(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("driver1" : stdgo.GoString), (null : stdgo.AnyInterface));
            if (_err != null) {
                stdgo.log.Log.fatalf(("driver1 execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _templates.executeTemplate(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("driver2" : stdgo.GoString), (null : stdgo.AnyInterface));
            if (_err != null) {
                stdgo.log.Log.fatalf(("driver2 execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // This example demonstrates how to use one group of driver
    // templates with distinct sets of helper templates.
**/
function exampleTemplate_share():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _createTestDir((new stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>(2, 2, (new stdgo.text.template_test.Template_test.T_templateFile(("T0.tmpl" : stdgo.GoString), ("T0 ({{.}} version) invokes T1: ({{template `T1`}})\n" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile), (new stdgo.text.template_test.Template_test.T_templateFile(("T1.tmpl" : stdgo.GoString), ("{{define \"T1\"}}T1 invokes T2: ({{template \"T2\"}}){{end}}" : stdgo.GoString)) : stdgo.text.template_test.Template_test.T_templateFile)) : stdgo.Slice<stdgo.text.template_test.Template_test.T_templateFile>))?.__copy__();
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0?.__copy__()));
            };
            var _pattern:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir?.__copy__(), ("*.tmpl" : stdgo.GoString))?.__copy__();
            var _drivers = ({
                var __tmp__ = stdgo.text.template.Template.parseGlob(_pattern?.__copy__());
                stdgo.text.template.Template.must((__tmp__._0 : stdgo.Ref<stdgo.text.template.Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var __tmp__ = _drivers.clone(), _first:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("cloning helpers: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _first.parse(("{{define `T2`}}T2, version A{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("parsing T2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = _drivers.clone(), _second:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("cloning drivers: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _second.parse(("{{define `T2`}}T2, version B{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(("parsing T2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = _second.executeTemplate(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("T0.tmpl" : stdgo.GoString), stdgo.Go.toInterface(("second" : stdgo.GoString)));
            if (_err != null) {
                stdgo.log.Log.fatalf(("second execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _first.executeTemplate(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("T0.tmpl" : stdgo.GoString), stdgo.Go.toInterface(("first" : stdgo.GoString)));
            if (_err != null) {
                stdgo.log.Log.fatalf(("first: execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // This example demonstrates a custom function to process template text.
    // It installs the strings.Title function and uses it to
    // Make Title Text Look Good In Our Template's Output.
**/
function exampleTemplate_func():Void {
        var _funcMap:stdgo.text.template.Template.FuncMap = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            @:mergeBlock {
                x.set(("title" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.title));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        {};
        var __tmp__ = stdgo.text.template.Template.new_(("titleTest" : stdgo.GoString)).funcs(_funcMap).parse(("\nInput: {{printf \"%q\" .}}\nOutput 0: {{title .}}\nOutput 1: {{title . | printf \"%q\"}}\nOutput 2: {{printf \"%q\" . | title}}\n" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatalf(("parsing: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(("the go programming language" : stdgo.GoString)));
        if (_err != null) {
            stdgo.log.Log.fatalf(("execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Issue 36021: verify that text/template doesn't prevent the linker from removing
    // unused methods.
**/
function testLinkerGC(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _td:stdgo.GoString = _t.tempDir()?.__copy__();
        {
            var _err:stdgo.Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_td?.__copy__(), ("x.go" : stdgo.GoString))?.__copy__(), (("package main\n\nimport (\n\t_ \"text/template\"\n)\n\ntype T struct{}\n\nfunc (t *T) Unused() { println(\"THIS SHOULD BE ELIMINATED\") }\nfunc (t *T) Used() {}\n\nvar sink *T\n\nfunc main() {\n\tvar t T\n\tsink = &t\n\tt.Used()\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _cmd = stdgo.os.exec.Exec.command(stdgo.internal.testenv.Testenv.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("x.exe" : stdgo.GoString), ("x.go" : stdgo.GoString));
        _cmd.dir = _td?.__copy__();
        {
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("go build: %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
        var __tmp__ = stdgo.os.Os.readFile(stdgo.path.filepath.Filepath.join(_td?.__copy__(), ("x.exe" : stdgo.GoString))?.__copy__()), _slurp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (stdgo.bytes.Bytes.contains(_slurp, (("THIS SHOULD BE ELIMINATED" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
            _t.error(stdgo.Go.toInterface(("binary contains code that should be deadcode eliminated" : stdgo.GoString)));
        };
    }
