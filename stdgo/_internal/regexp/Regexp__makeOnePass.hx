package stdgo._internal.regexp;
function _makeOnePass(_p:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg> {
        if (((_p.inst.length) >= (1000 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var __0 = stdgo._internal.regexp.Regexp__newQueue._newQueue((_p.inst.length)), __1 = stdgo._internal.regexp.Regexp__newQueue._newQueue((_p.inst.length)), __2:(stdgo.GoUInt32, stdgo.Slice<Bool>) -> Bool = null, __3 = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>((_p.inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
var _onePassRunes = __3, _check = __2, _visitQueue = __1, _instQueue = __0;
        _check = function(_pc:stdgo.GoUInt32, _m:stdgo.Slice<Bool>):Bool {
            var _ok = false;
            _ok = true;
            var _inst = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
            if (_visitQueue._contains(_pc)) {
                return _ok;
            };
            _visitQueue._insert(_pc);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _inst.inst.op;
                        if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _ok = (_check(_inst.inst.out, _m) && _check(_inst.inst.arg, _m) : Bool);
                            var _matchOut = (_m[(_inst.inst.out : stdgo.GoInt)] : Bool);
                            var _matchArg = (_m[(_inst.inst.arg : stdgo.GoInt)] : Bool);
                            if ((_matchOut && _matchArg : Bool)) {
                                _ok = false;
                                break;
                            };
                            if (_matchArg) {
                                {
                                    final __tmp__0 = _inst.inst.arg;
                                    final __tmp__1 = _inst.inst.out;
                                    _inst.inst.out = __tmp__0;
                                    _inst.inst.arg = __tmp__1;
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
                                _inst.inst.op = (1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
                            };
                            {
                                var __tmp__ = stdgo._internal.regexp.Regexp__mergeRuneSets._mergeRuneSets((stdgo.Go.setRef(_onePassRunes[(_inst.inst.out : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_onePassRunes[(_inst.inst.arg : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), _inst.inst.out, _inst.inst.arg);
                                _onePassRunes[(_pc : stdgo.GoInt)] = __tmp__._0;
                                _inst.next = __tmp__._1;
                            };
                            if ((((_inst.next.length) > (0 : stdgo.GoInt) : Bool) && (_inst.next[(0 : stdgo.GoInt)] == (-1u32 : stdgo.GoUInt32)) : Bool)) {
                                _ok = false;
                                break;
                            };
                            break;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _ok = _check(_inst.inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[(_inst.inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[(_inst.inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _ok = _check(_inst.inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[(_inst.inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[(_inst.inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = _inst.inst.op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp));
                            break;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            if ((_inst.inst.rune.length) == ((0 : stdgo.GoInt))) {
                                _onePassRunes[(_pc : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                                _inst.next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[_inst.inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                                break;
                            };
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if (((_inst.inst.rune.length == (1 : stdgo.GoInt)) && (((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool)) {
                                var _r0 = (_inst.inst.rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1 = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r0) : stdgo.GoInt32);
                                    while (_r1 != (_r0)) {
                                        _runes = (_runes.__append__(_r1, _r1));
                                        _r1 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r1);
                                    };
                                };
                                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_runes : stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__(...(_inst.inst.rune : Array<stdgo.GoInt32>)));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            _inst.inst.op = (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
                            break;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if (((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                var _r0 = (_inst.inst.rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1 = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r0) : stdgo.GoInt32);
                                    while (_r1 != (_r0)) {
                                        _runes = (_runes.__append__(_r1, _r1));
                                        _r1 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r1);
                                    };
                                };
                                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_runes : stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__(_inst.inst.rune[(0 : stdgo.GoInt)], _inst.inst.rune[(0 : stdgo.GoInt)]));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            _inst.inst.op = (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
                            break;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(stdgo._internal.regexp.Regexp__anyRune._anyRune : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[_inst.inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            break;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(stdgo._internal.regexp.Regexp__anyRuneNotNL._anyRuneNotNL : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return _ok;
        };
        _instQueue._clear();
        _instQueue._insert((_p.start : stdgo.GoUInt32));
        var _m = (new stdgo.Slice<Bool>((_p.inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        while (!_instQueue._empty()) {
            _visitQueue._clear();
            var _pc = (_instQueue._next() : stdgo.GoUInt32);
            if (!_check(_pc, _m)) {
                _p = null;
                break;
            };
        };
        if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
            for (_i => _ in _p.inst) {
                _p.inst[(_i : stdgo.GoInt)].inst.rune = _onePassRunes[(_i : stdgo.GoInt)];
            };
        };
        return _p;
    }
