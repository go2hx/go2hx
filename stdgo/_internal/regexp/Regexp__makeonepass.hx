package stdgo._internal.regexp;
function _makeOnePass(_p:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        if ((((@:checkr _p ?? throw "null pointer dereference").inst.length) >= (1000 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var __0 = stdgo._internal.regexp.Regexp__newqueue._newQueue(((@:checkr _p ?? throw "null pointer dereference").inst.length)), __1 = stdgo._internal.regexp.Regexp__newqueue._newQueue(((@:checkr _p ?? throw "null pointer dereference").inst.length)), __2:(stdgo.GoUInt32, stdgo.Slice<Bool>) -> Bool = null, __3 = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>(((@:checkr _p ?? throw "null pointer dereference").inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
var _onePassRunes = __3, _check = __2, _visitQueue = __1, _instQueue = __0;
        _check = function(_pc:stdgo.GoUInt32, _m:stdgo.Slice<Bool>):Bool {
            var _ok = false;
            _ok = true;
            var _inst = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
            if (@:check2r _visitQueue._contains(_pc)) {
                return _ok;
            };
            @:check2r _visitQueue._insert(_pc);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _inst ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _ok = (_check((@:checkr _inst ?? throw "null pointer dereference").inst.out, _m) && _check((@:checkr _inst ?? throw "null pointer dereference").inst.arg, _m) : Bool);
                            var _matchOut = (_m[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)] : Bool);
                            var _matchArg = (_m[((@:checkr _inst ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] : Bool);
                            if ((_matchOut && _matchArg : Bool)) {
                                _ok = false;
                                break;
                            };
                            if (_matchArg) {
                                {
                                    final __tmp__0 = (@:checkr _inst ?? throw "null pointer dereference").inst.arg;
                                    final __tmp__1 = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                                    (@:checkr _inst ?? throw "null pointer dereference").inst.out = __tmp__0;
                                    (@:checkr _inst ?? throw "null pointer dereference").inst.arg = __tmp__1;
                                };
                                {
                                    final __tmp__0 = _matchArg;
                                    final __tmp__1 = _matchOut;
                                    _matchOut = __tmp__0;
                                    _matchArg = __tmp__1;
                                };
                            };
                            if (_matchOut) {
                                _m[(_pc : stdgo.GoInt)] = true;
                                (@:checkr _inst ?? throw "null pointer dereference").inst.op = (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
                            };
                            {
                                var __tmp__ = stdgo._internal.regexp.Regexp__mergerunesets._mergeRuneSets((stdgo.Go.setRef(_onePassRunes[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_onePassRunes[((@:checkr _inst ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (@:checkr _inst ?? throw "null pointer dereference").inst.out, (@:checkr _inst ?? throw "null pointer dereference").inst.arg);
                                _onePassRunes[(_pc : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                (@:checkr _inst ?? throw "null pointer dereference").next = @:tmpset0 __tmp__._1;
                            };
                            if (((((@:checkr _inst ?? throw "null pointer dereference").next.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _inst ?? throw "null pointer dereference").next[(0 : stdgo.GoInt)] == (-1u32 : stdgo.GoUInt32)) : Bool)) {
                                _ok = false;
                                break;
                            };
                            break;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _ok = _check((@:checkr _inst ?? throw "null pointer dereference").inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in (@:checkr _inst ?? throw "null pointer dereference").next) {
                                (@:checkr _inst ?? throw "null pointer dereference").next[(_i : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                            };
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _ok = _check((@:checkr _inst ?? throw "null pointer dereference").inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[((@:checkr _inst ?? throw "null pointer dereference").inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in (@:checkr _inst ?? throw "null pointer dereference").next) {
                                (@:checkr _inst ?? throw "null pointer dereference").next[(_i : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                            };
                            break;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp));
                            break;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if ((((@:checkr _inst ?? throw "null pointer dereference").next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            @:check2r _instQueue._insert((@:checkr _inst ?? throw "null pointer dereference").inst.out);
                            if (((@:checkr _inst ?? throw "null pointer dereference").inst.rune.length) == ((0 : stdgo.GoInt))) {
                                _onePassRunes[(_pc : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                                (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(@:checkr _inst ?? throw "null pointer dereference").inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                                break;
                            };
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if ((((@:checkr _inst ?? throw "null pointer dereference").inst.rune.length == (1 : stdgo.GoInt)) && ((((@:checkr _inst ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool)) {
                                var _r0 = ((@:checkr _inst ?? throw "null pointer dereference").inst.rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1 = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r0) : stdgo.GoInt32);
                                    while (_r1 != (_r0)) {
                                        _runes = (_runes.__append__(_r1, _r1));
                                        _r1 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r1);
                                    };
                                };
                                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_runes : stdgo._internal.regexp.Regexp_t_runeslice.T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__(...((@:checkr _inst ?? throw "null pointer dereference").inst.rune : Array<stdgo.GoInt32>)));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in (@:checkr _inst ?? throw "null pointer dereference").next) {
                                (@:checkr _inst ?? throw "null pointer dereference").next[(_i : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                            };
                            (@:checkr _inst ?? throw "null pointer dereference").inst.op = (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
                            break;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if ((((@:checkr _inst ?? throw "null pointer dereference").next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            @:check2r _instQueue._insert((@:checkr _inst ?? throw "null pointer dereference").inst.out);
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if ((((@:checkr _inst ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                                var _r0 = ((@:checkr _inst ?? throw "null pointer dereference").inst.rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1 = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r0) : stdgo.GoInt32);
                                    while (_r1 != (_r0)) {
                                        _runes = (_runes.__append__(_r1, _r1));
                                        _r1 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r1);
                                    };
                                };
                                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_runes : stdgo._internal.regexp.Regexp_t_runeslice.T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__((@:checkr _inst ?? throw "null pointer dereference").inst.rune[(0 : stdgo.GoInt)], (@:checkr _inst ?? throw "null pointer dereference").inst.rune[(0 : stdgo.GoInt)]));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in (@:checkr _inst ?? throw "null pointer dereference").next) {
                                (@:checkr _inst ?? throw "null pointer dereference").next[(_i : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                            };
                            (@:checkr _inst ?? throw "null pointer dereference").inst.op = (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
                            break;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if ((((@:checkr _inst ?? throw "null pointer dereference").next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            @:check2r _instQueue._insert((@:checkr _inst ?? throw "null pointer dereference").inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(stdgo._internal.regexp.Regexp__anyrune._anyRune : Array<stdgo.GoInt32>)));
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(@:checkr _inst ?? throw "null pointer dereference").inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            break;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if ((((@:checkr _inst ?? throw "null pointer dereference").next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            @:check2r _instQueue._insert((@:checkr _inst ?? throw "null pointer dereference").inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(stdgo._internal.regexp.Regexp__anyrunenotnl._anyRuneNotNL : Array<stdgo.GoInt32>)));
                            (@:checkr _inst ?? throw "null pointer dereference").next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in (@:checkr _inst ?? throw "null pointer dereference").next) {
                                (@:checkr _inst ?? throw "null pointer dereference").next[(_i : stdgo.GoInt)] = (@:checkr _inst ?? throw "null pointer dereference").inst.out;
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return _ok;
        };
        @:check2r _instQueue._clear();
        @:check2r _instQueue._insert(((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32));
        var _m = (new stdgo.Slice<Bool>(((@:checkr _p ?? throw "null pointer dereference").inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        while (!@:check2r _instQueue._empty()) {
            @:check2r _visitQueue._clear();
            var _pc = (@:check2r _instQueue._next() : stdgo.GoUInt32);
            if (!_check(_pc, _m)) {
                _p = null;
                break;
            };
        };
        if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
            for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").inst) {
                (@:checkr _p ?? throw "null pointer dereference").inst[(_i : stdgo.GoInt)].inst.rune = _onePassRunes[(_i : stdgo.GoInt)];
            };
        };
        return _p;
    }
