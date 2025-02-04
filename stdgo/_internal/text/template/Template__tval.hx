package stdgo._internal.text.template;
var _tVal : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_> = (stdgo.Go.setRef(({ __True : true, i : (17 : stdgo.GoInt), u16 : (16 : stdgo.GoUInt16), x : ("x" : stdgo.GoString), s : ("xyz" : stdgo.GoString), u : (stdgo.Go.setRef((new stdgo._internal.text.template.Template_u.U(("v" : stdgo.GoString)) : stdgo._internal.text.template.Template_u.U)) : stdgo.Ref<stdgo._internal.text.template.Template_u.U>), v0 : (new stdgo._internal.text.template.Template_v.V((6666 : stdgo.GoInt)) : stdgo._internal.text.template.Template_v.V), v1 : (stdgo.Go.setRef((new stdgo._internal.text.template.Template_v.V((7777 : stdgo.GoInt)) : stdgo._internal.text.template.Template_v.V)) : stdgo.Ref<stdgo._internal.text.template.Template_v.V>), w0 : (new stdgo._internal.text.template.Template_w.W((888 : stdgo.GoInt)) : stdgo._internal.text.template.Template_w.W), w1 : (stdgo.Go.setRef((new stdgo._internal.text.template.Template_w.W((999 : stdgo.GoInt)) : stdgo._internal.text.template.Template_w.W)) : stdgo.Ref<stdgo._internal.text.template.Template_w.W>), sI : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), sICap : (new stdgo.Slice<stdgo.GoInt>((5 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), aI : (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), sB : (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>), mSI : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), mSIone : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), mXI : ({
        final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(stdgo.Go.toInterface(("one" : stdgo.GoString)), (1 : stdgo.GoInt));
        cast x;
    } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>), mII : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set((1 : stdgo.GoInt), (1 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), mI32S : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt32), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt32), ("two" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>), mI64S : ({
        final x = new stdgo.GoMap.GoInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2i64 : stdgo.GoInt64), ("i642" : stdgo.GoString));
x.set((3i64 : stdgo.GoInt64), ("i643" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>), mUI32S : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2u32 : stdgo.GoUInt32), ("u322" : stdgo.GoString));
x.set((3u32 : stdgo.GoUInt32), ("u323" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>), mUI64S : ({
        final x = new stdgo.GoMap.GoUInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2i64 : stdgo.GoUInt64), ("ui642" : stdgo.GoString));
x.set((3i64 : stdgo.GoUInt64), ("ui643" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>), mI8S : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt8), ("i82" : stdgo.GoString));
x.set((3 : stdgo.GoInt8), ("i83" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>), mUI8S : ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoUInt8), ("u82" : stdgo.GoString));
x.set((3 : stdgo.GoUInt8), ("u83" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>), sMSI : (new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>(2, 2, ...[({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("eleven" : stdgo.GoString), (11 : stdgo.GoInt));
x.set(("twelve" : stdgo.GoString), (12 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)]) : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>), empty1 : stdgo.Go.toInterface((3 : stdgo.GoInt)), empty2 : stdgo.Go.toInterface(("empty2" : stdgo.GoString)), empty3 : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), empty4 : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.text.template.Template_u.U(("UinEmpty" : stdgo.GoString)) : stdgo._internal.text.template.Template_u.U)) : stdgo.Ref<stdgo._internal.text.template.Template_u.U>))), nonEmptyInterface : stdgo.Go.asInterface((stdgo.Go.setRef(({ x : ("x" : stdgo.GoString) } : stdgo._internal.text.template.Template_t_.T_)) : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>)), nonEmptyInterfacePtS : (stdgo.Go.setRef(stdgo._internal.text.template.Template__sival._siVal) : stdgo.Ref<stdgo._internal.text.template.Template_i.I>), nonEmptyInterfaceTypedNil : stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>)), str : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer(((("foozle" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))), err : stdgo._internal.errors.Errors_new_.new_(("erroozle" : stdgo.GoString)), pI : stdgo._internal.text.template.Template__newint._newInt((23 : stdgo.GoInt)), pS : stdgo._internal.text.template.Template__newstring._newString(("a string" : stdgo.GoString)), pSI : stdgo._internal.text.template.Template__newintslice._newIntSlice((21 : stdgo.GoInt), (22 : stdgo.GoInt), (23 : stdgo.GoInt)), binaryFunc : function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%s=%s]" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }, variadicFunc : function(_s:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _s = new stdgo.Slice<stdgo.GoString>(_s.length, 0, ..._s);
        return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(("<" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_s, ("+" : stdgo.GoString))), stdgo.Go.toInterface((">" : stdgo.GoString)))?.__copy__();
    }, variadicFuncInt : function(_a:stdgo.GoInt, _s:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _s = new stdgo.Slice<stdgo.GoString>(_s.length, 0, ..._s);
        return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(("=<" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_s, ("+" : stdgo.GoString))), stdgo.Go.toInterface((">" : stdgo.GoString)))?.__copy__();
    }, nilOKFunc : function(_s:stdgo.Pointer<stdgo.GoInt>):Bool {
        return _s == null;
    }, errFunc : function():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return { _0 : ("bla" : stdgo.GoString), _1 : (null : stdgo.Error) };
    }, panicFunc : function():stdgo.GoString {
        throw stdgo.Go.toInterface(("test panic" : stdgo.GoString));
    }, tmpl : ({
        var __f__ = stdgo._internal.text.template.Template_must.must;
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("x" : stdgo.GoString)).parse(("test template" : stdgo.GoString));
        __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
    }) } : stdgo._internal.text.template.Template_t_.T_)) : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>);
