package stdgo._internal.text.template;
function testInterfaceValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.text.template.Template_t__struct_5.T__struct_5>(30, 30, ...[
({ _text : ("{{index .Nil 1}}" : stdgo.GoString), _out : ("ERROR: index of untyped nil" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{index .Slice 2}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{index .Slice .Two}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{call .Nil 1}}" : stdgo.GoString), _out : ("ERROR: call of nil" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{call .PlusOne 1}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{call .PlusOne .One}}" : stdgo.GoString), _out : ("2" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{and (index .Slice 0) true}}" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{and .Zero true}}" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{and (index .Slice 1) false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{and .One false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{or (index .Slice 0) false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{or .Zero false}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{or (index .Slice 1) true}}" : stdgo.GoString), _out : ("1" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{or .One true}}" : stdgo.GoString), _out : ("1" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{not (index .Slice 0)}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{not .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{not (index .Slice 1)}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{not .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{eq (index .Slice 0) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{eq (index .Slice 1) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{ne (index .Slice 0) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{ne (index .Slice 1) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{ge (index .Slice 0) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{ge (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{gt (index .Slice 0) .One}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{gt (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{le (index .Slice 0) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{le (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{lt (index .Slice 0) .One}}" : stdgo.GoString), _out : ("true" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5),
({ _text : ("{{lt (index .Slice 1) .Zero}}" : stdgo.GoString), _out : ("false" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5)].concat([for (i in 30 ... (30 > 30 ? 30 : 30 : stdgo.GoInt).toBasic()) ({ _text : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_5.T__struct_5)])) : stdgo.Slice<stdgo._internal.text.template.Template_t__struct_5.T__struct_5>);
        for (__8 => _tt in _tests) {
            var _tmpl = ({
                var __f__ = stdgo._internal.text.template.Template_must.must;
                var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(_tt._text?.__copy__());
                __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            var _err = (@:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(("PlusOne" : stdgo.GoString), stdgo.Go.toInterface(function(_n:stdgo.GoInt):stdgo.GoInt {
                    return (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                }));
x.set(("Slice" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)));
x.set(("One" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)));
x.set(("Two" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.GoInt)));
x.set(("Nil" : stdgo.GoString), (null : stdgo.AnyInterface));
x.set(("Zero" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo.Error);
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_tt._out?.__copy__(), ("ERROR:" : stdgo.GoString))) {
                var _e = (stdgo._internal.strings.Strings_trimspace.trimSpace(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_tt._out?.__copy__(), ("ERROR:" : stdgo.GoString))?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _e?.__copy__()) : Bool)) {
                    @:check2r _t.errorf(("%s: Execute: %v, want error %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_e));
                };
                continue;
            };
            if (_err != null) {
                @:check2r _t.errorf(("%s: Execute: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((@:check2 _buf.string() : stdgo.GoString) != (_tt._out)) {
                @:check2r _t.errorf(("%s: template output = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._text), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
