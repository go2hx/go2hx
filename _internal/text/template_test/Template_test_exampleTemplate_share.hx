package _internal.text.template_test;
function exampleTemplate_share():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir = (_internal.text.template_test.Template_test__createTestDir._createTestDir((new stdgo.Slice<_internal.text.template_test.Template_test_T_templateFile.T_templateFile>(2, 2, ...[(new _internal.text.template_test.Template_test_T_templateFile.T_templateFile(("T0.tmpl" : stdgo.GoString), ("T0 ({{.}} version) invokes T1: ({{template `T1`}})\n" : stdgo.GoString)) : _internal.text.template_test.Template_test_T_templateFile.T_templateFile), (new _internal.text.template_test.Template_test_T_templateFile.T_templateFile(("T1.tmpl" : stdgo.GoString), ("{{define \"T1\"}}T1 invokes T2: ({{template \"T2\"}}){{end}}" : stdgo.GoString)) : _internal.text.template_test.Template_test_T_templateFile.T_templateFile)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.text.template_test.Template_test_T_templateFile.T_templateFile)])) : stdgo.Slice<_internal.text.template_test.Template_test_T_templateFile.T_templateFile>))?.__copy__() : stdgo.GoString);
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _pattern = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("*.tmpl" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _drivers = ({
                var __tmp__ = stdgo._internal.text.template.Template_parseGlob.parseGlob(_pattern?.__copy__());
                stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var __tmp__ = _drivers.clone(), _first:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("cloning helpers: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _first.parse(("{{define `T2`}}T2, version A{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("parsing T2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = _drivers.clone(), _second:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("cloning drivers: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _second.parse(("{{define `T2`}}T2, version B{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("parsing T2: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = _second.executeTemplate(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ("T0.tmpl" : stdgo.GoString), stdgo.Go.toInterface(("second" : stdgo.GoString)));
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("second execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _first.executeTemplate(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ("T0.tmpl" : stdgo.GoString), stdgo.Go.toInterface(("first" : stdgo.GoString)));
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("first: execution: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
