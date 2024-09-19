package _internal.text.template_test;
function exampleTemplate_helpers():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir = (_internal.text.template_test.Template_test__createTestDir._createTestDir((new stdgo.Slice<_internal.text.template_test.Template_test_T_templateFile.T_templateFile>(2, 2, ...[(new _internal.text.template_test.Template_test_T_templateFile.T_templateFile(("T1.tmpl" : stdgo.GoString), ("{{define \"T1\"}}T1 invokes T2: ({{template \"T2\"}}){{end}}" : stdgo.GoString)) : _internal.text.template_test.Template_test_T_templateFile.T_templateFile), (new _internal.text.template_test.Template_test_T_templateFile.T_templateFile(("T2.tmpl" : stdgo.GoString), ("{{define \"T2\"}}This is T2{{end}}" : stdgo.GoString)) : _internal.text.template_test.Template_test_T_templateFile.T_templateFile)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.text.template_test.Template_test_T_templateFile.T_templateFile)])) : stdgo.Slice<_internal.text.template_test.Template_test_T_templateFile.T_templateFile>))?.__copy__() : stdgo.GoString);
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _pattern = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("*.tmpl" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _templates = ({
                var __tmp__ = stdgo._internal.text.template.Template_parseGlob.parseGlob(_pattern?.__copy__());
                stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var __tmp__ = _templates.parse(("{{define `driver1`}}Driver 1 calls T1: ({{template `T1`}})\n{{end}}" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("parsing driver1: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _templates.parse(("{{define `driver2`}}Driver 2 calls T2: ({{template `T2`}})\n{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("parsing driver2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = _templates.executeTemplate(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ("driver1" : stdgo.GoString), (null : stdgo.AnyInterface));
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("driver1 execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _templates.executeTemplate(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ("driver2" : stdgo.GoString), (null : stdgo.AnyInterface));
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("driver2 execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                if (__exception__.message == "__return__") throw "__return__";
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
