package stdgo._internal.go.types;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.go.types.Types__cgoprefixes._cgoPrefixes, __tmp__1 = stdgo._internal.go.types.Types__errbadcgo._errBadCgo, __tmp__2 = stdgo._internal.go.types.Types__op2str1._op2str1, __tmp__3 = stdgo._internal.go.types.Types__op2str2._op2str2, __tmp__4 = stdgo._internal.go.types.Types__gccgoarchsizes._gccgoArchSizes, __tmp__5 = stdgo._internal.go.types.Types__operandmodestring._operandModeString, __tmp__6 = stdgo._internal.go.types.Types__basicsizes._basicSizes, __tmp__7 = stdgo._internal.go.types.Types__gcarchsizes._gcArchSizes, __tmp__8 = stdgo._internal.go.types.Types__stdsizes._stdSizes, __tmp__9 = stdgo._internal.go.types.Types__alltermlist._allTermlist, __tmp__10 = stdgo._internal.go.types.Types__toptypeset._topTypeSet, __tmp__11 = stdgo._internal.go.types.Types__emptyinterface._emptyInterface, __tmp__12 = stdgo._internal.go.types.Types_typ.typ, __tmp__13 = stdgo._internal.go.types.Types__aliases._aliases, __tmp__14 = stdgo._internal.go.types.Types__predeclaredconsts._predeclaredConsts, __tmp__15 = stdgo._internal.go.types.Types__predeclaredfuncs._predeclaredFuncs, __tmp__16 = stdgo._internal.go.types.Types__go0_0._go0_0, __tmp__17 = stdgo._internal.go.types.Types__go1_9._go1_9, __tmp__18 = stdgo._internal.go.types.Types__go1_13._go1_13, __tmp__19 = stdgo._internal.go.types.Types__go1_14._go1_14, __tmp__20 = stdgo._internal.go.types.Types__go1_17._go1_17, __tmp__21 = stdgo._internal.go.types.Types__go1_18._go1_18, __tmp__22 = stdgo._internal.go.types.Types__go1_20._go1_20, __tmp__23 = stdgo._internal.go.types.Types__go1_21._go1_21, __tmp__24 = stdgo._internal.go.types.Types__assignops._assignOps, __tmp__25 = stdgo._internal.go.types.Types__myint._myInt, __tmp__26 = stdgo._internal.go.types.Types__testterms._testTerms, __tmp__27 = stdgo._internal.go.types.Types__parsegoversiontests._parseGoVersionTests;
            stdgo._internal.go.types.Types__unaryoppredicates._unaryOpPredicates = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.go.types.Types_type_.Type_ -> Bool>();
                x.__defaultValue__ = () -> null;
                x.set((12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumeric._allNumeric);
x.set((13 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumeric._allNumeric);
x.set((19 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((43 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allboolean._allBoolean);
                x;
            } : stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, stdgo._internal.go.types.Types_type_.Type_ -> Bool>) : stdgo._internal.go.types.Types_t_oppredicates.T_opPredicates);
            stdgo._internal.go.types.Types__binaryoppredicates._binaryOpPredicates = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.go.types.Types_type_.Type_ -> Bool>();
                x.__defaultValue__ = () -> null;
                x.set((12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumericorstring._allNumericOrString);
x.set((13 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumeric._allNumeric);
x.set((14 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumeric._allNumeric);
x.set((15 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allnumeric._allNumeric);
x.set((16 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((17 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((18 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((19 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((22 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allinteger._allInteger);
x.set((34 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allboolean._allBoolean);
x.set((35 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.types.Types__allboolean._allBoolean);
                x;
            } : stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, stdgo._internal.go.types.Types_type_.Type_ -> Bool>) : stdgo._internal.go.types.Types_t_oppredicates.T_opPredicates);
            stdgo._internal.go.types.Types_universe.universe = stdgo._internal.go.types.Types_newscope.newScope(null, stdgo._internal.go.types.Types__nopos._nopos, stdgo._internal.go.types.Types__nopos._nopos, ("universe" : stdgo.GoString));
            stdgo._internal.go.types.Types_unsafe.unsafe = stdgo._internal.go.types.Types_newpackage.newPackage(("unsafe" : stdgo.GoString), ("unsafe" : stdgo.GoString));
            (@:checkr stdgo._internal.go.types.Types_unsafe.unsafe ?? throw "null pointer dereference")._complete = true;
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L247"
            stdgo._internal.go.types.Types__defpredeclaredtypes._defPredeclaredTypes();
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L248"
            stdgo._internal.go.types.Types__defpredeclaredconsts._defPredeclaredConsts();
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L249"
            stdgo._internal.go.types.Types__defpredeclarednil._defPredeclaredNil();
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L250"
            stdgo._internal.go.types.Types__defpredeclaredfuncs._defPredeclaredFuncs();
            stdgo._internal.go.types.Types__universeiota._universeIota = stdgo._internal.go.types.Types_universe.universe.lookup(("iota" : stdgo.GoString));
            stdgo._internal.go.types.Types__universebyte._universeByte = stdgo._internal.go.types.Types_universe.universe.lookup(("byte" : stdgo.GoString)).type();
            stdgo._internal.go.types.Types__universerune._universeRune = stdgo._internal.go.types.Types_universe.universe.lookup(("rune" : stdgo.GoString)).type();
            stdgo._internal.go.types.Types__universeany._universeAny = stdgo._internal.go.types.Types_universe.universe.lookup(("any" : stdgo.GoString));
            stdgo._internal.go.types.Types__universeerror._universeError = stdgo._internal.go.types.Types_universe.universe.lookup(("error" : stdgo.GoString)).type();
            stdgo._internal.go.types.Types__universecomparable._universeComparable = stdgo._internal.go.types.Types_universe.universe.lookup(("comparable" : stdgo.GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
