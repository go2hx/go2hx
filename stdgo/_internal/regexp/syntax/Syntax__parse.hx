package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3409691:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3409455:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3408977:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3407989:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3407681:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3406336:stdgo.Error = (null : stdgo.Error);
            var _r_3409452:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3409066:stdgo.Error = (null : stdgo.Error);
            var _after_3408014:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3406614:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3406532:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3406516:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _c_3406498:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3410116:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3409290:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _min_3408004:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3407806:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3409694:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3409057:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3408021:Bool = false;
            var _max_3408009:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _err_3409461:stdgo.Error = (null : stdgo.Error);
            var _rest_3409060:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3406478:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _t_3406590:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3406289i32;
                        } else {
                            _gotoNext = 3406470i32;
                        };
                    } else if (__value__ == (3406289i32)) {
                        {
                            _err_3406336 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3406336 != null) {
                                _gotoNext = 3406368i32;
                            } else {
                                _gotoNext = 3406395i32;
                            };
                        };
                    } else if (__value__ == (3406368i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3406336 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3406395i32;
                    } else if (__value__ == (3406395i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3406470i32;
                    } else if (__value__ == (3406470i32)) {
                        _p_3406478._flags = _flags;
                        _p_3406478._wholeRegexp = _s?.__copy__();
                        _t_3406590 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3406598i32;
                    } else if (__value__ == (3406598i32)) {
                        if (_t_3406590 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3406610i32;
                        } else {
                            _gotoNext = 3410000i32;
                        };
                    } else if (__value__ == (3406610i32)) {
                        _repeat_3406614 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3406628i32;
                    } else if (__value__ == (3406628i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3406641i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3406590[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406754i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407024i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407121i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407217i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407332i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407462i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407576i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407658i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407959i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3408515i32;
                                } else {
                                    _gotoNext = 3406657i32;
                                };
                            };
                        } else {
                            _gotoNext = 3409975i32;
                        };
                    } else if (__value__ == (3406657i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3406590?.__copy__());
                                _c_3406498 = @:tmpset0 __tmp__._0;
                                _t_3406590 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3406708i32;
                            } else {
                                _gotoNext = 3406738i32;
                            };
                        };
                    } else if (__value__ == (3406708i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3406738i32;
                    } else if (__value__ == (3406738i32)) {
                        @:check2 _p_3406478._literal(_c_3406498);
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3406754i32)) {
                        if ((((_p_3406478._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3406590.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3406590[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3406819i32;
                        } else {
                            _gotoNext = 3406962i32;
                        };
                    } else if (__value__ == (3406819i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._parsePerlFlags(_t_3406590?.__copy__());
                                _t_3406590 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3406915i32;
                            } else {
                                _gotoNext = 3406948i32;
                            };
                        };
                    } else if (__value__ == (3406915i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3406948i32;
                    } else if (__value__ == (3406948i32)) {
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3406962i32)) {
                        _p_3406478._numCap++;
                        @:check2 _p_3406478._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3406478._numCap;
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407024i32)) {
                        {
                            _err = @:check2 _p_3406478._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3407079i32;
                            } else {
                                _gotoNext = 3407109i32;
                            };
                        };
                    } else if (__value__ == (3407079i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407109i32;
                    } else if (__value__ == (3407109i32)) {
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407121i32)) {
                        {
                            _err = @:check2 _p_3406478._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3407175i32;
                            } else {
                                _gotoNext = 3407205i32;
                            };
                        };
                    } else if (__value__ == (3407175i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407205i32;
                    } else if (__value__ == (3407205i32)) {
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407217i32)) {
                        if ((_p_3406478._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3407254i32;
                        } else {
                            _gotoNext = 3407288i32;
                        };
                    } else if (__value__ == (3407254i32)) {
                        @:check2 _p_3406478._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3407320i32;
                    } else if (__value__ == (3407288i32)) {
                        _gotoNext = 3407288i32;
                        @:check2 _p_3406478._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3407320i32;
                    } else if (__value__ == (3407320i32)) {
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407332i32)) {
                        if ((_p_3406478._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3407369i32;
                        } else {
                            _gotoNext = 3407420i32;
                        };
                    } else if (__value__ == (3407369i32)) {
                        {
                            final __t__ = @:check2 _p_3406478._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3407450i32;
                    } else if (__value__ == (3407420i32)) {
                        _gotoNext = 3407420i32;
                        @:check2 _p_3406478._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3407450i32;
                    } else if (__value__ == (3407450i32)) {
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407462i32)) {
                        if ((_p_3406478._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3407497i32;
                        } else {
                            _gotoNext = 3407529i32;
                        };
                    } else if (__value__ == (3407497i32)) {
                        @:check2 _p_3406478._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3407564i32;
                    } else if (__value__ == (3407529i32)) {
                        _gotoNext = 3407529i32;
                        @:check2 _p_3406478._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3407564i32;
                    } else if (__value__ == (3407564i32)) {
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407576i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._parseClass(_t_3406590?.__copy__());
                                _t_3406590 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3407629i32;
                            } else {
                                _gotoNext = 3409975i32;
                            };
                        };
                    } else if (__value__ == (3407629i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407658i32)) {
                        _before_3407681 = _t_3406590?.__copy__();
                        _gotoNext = 3407696i32;
                    } else if (__value__ == (3407696i32)) {
                        {
                            final __value__ = _t_3406590[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3407713i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3407742i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3407771i32;
                            } else {
                                _gotoNext = 3407806i32;
                            };
                        };
                    } else if (__value__ == (3407713i32)) {
                        _op_3406516 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3407806i32;
                    } else if (__value__ == (3407742i32)) {
                        _op_3406516 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3407806i32;
                    } else if (__value__ == (3407771i32)) {
                        _op_3406516 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3407806i32;
                    } else if (__value__ == (3407806i32)) {
                        _after_3407806 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._repeat(_op_3406516, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3407681?.__copy__(), _after_3407806?.__copy__(), _lastRepeat_3406532?.__copy__());
                                _after_3407806 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3407898i32;
                            } else {
                                _gotoNext = 3407928i32;
                            };
                        };
                    } else if (__value__ == (3407898i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407928i32;
                    } else if (__value__ == (3407928i32)) {
                        _repeat_3406614 = _before_3407681?.__copy__();
                        _t_3406590 = _after_3407806?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3407959i32)) {
                        _op_3406516 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3407989 = _t_3406590?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3406478._parseRepeat(_t_3406590?.__copy__());
                            _min_3408004 = @:tmpset0 __tmp__._0;
                            _max_3408009 = @:tmpset0 __tmp__._1;
                            _after_3408014 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3408021 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3408021) {
                            _gotoNext = 3408054i32;
                        } else {
                            _gotoNext = 3408162i32;
                        };
                    } else if (__value__ == (3408054i32)) {
                        @:check2 _p_3406478._literal((123 : stdgo.GoInt32));
                        _t_3406590 = (_t_3406590.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3408162i32)) {
                        if (((((_min_3408004 < (0 : stdgo.GoInt) : Bool) || (_min_3408004 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3408009 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3408009 >= (0 : stdgo.GoInt) : Bool) && (_min_3408004 > _max_3408009 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3408226i32;
                        } else {
                            _gotoNext = 3408376i32;
                        };
                    } else if (__value__ == (3408226i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3407989.__slice__(0, ((_before_3407989.length) - (_after_3408014.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408376i32;
                    } else if (__value__ == (3408376i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._repeat(_op_3406516, _min_3408004, _max_3408009, _before_3407989?.__copy__(), _after_3408014?.__copy__(), _lastRepeat_3406532?.__copy__());
                                _after_3408014 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3408454i32;
                            } else {
                                _gotoNext = 3408484i32;
                            };
                        };
                    } else if (__value__ == (3408454i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408484i32;
                    } else if (__value__ == (3408484i32)) {
                        _repeat_3406614 = _before_3407989?.__copy__();
                        _t_3406590 = _after_3408014?.__copy__();
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3408515i32)) {
                        if ((((_p_3406478._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3406590.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3408566i32;
                        } else {
                            _gotoNext = 3409290i32;
                        };
                    } else if (__value__ == (3408566i32)) {
                        _gotoNext = 3408572i32;
                    } else if (__value__ == (3408572i32)) {
                        {
                            final __value__ = _t_3406590[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3408590i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3408663i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3408739i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3408817i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3408912i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3409208i32;
                            } else {
                                _gotoNext = 3409290i32;
                            };
                        };
                    } else if (__value__ == (3408590i32)) {
                        @:check2 _p_3406478._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3406590 = (_t_3406590.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3408663i32)) {
                        @:check2 _p_3406478._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3406590 = (_t_3406590.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3408739i32)) {
                        @:check2 _p_3406478._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3406590 = (_t_3406590.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3408817i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3406590.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3409290i32;
                    } else if (__value__ == (3408912i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3406590.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3408977 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3406590 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3409035i32;
                    } else if (__value__ == (3409035i32)) {
                        if (_lit_3408977 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3409049i32;
                        } else {
                            _gotoNext = 3409188i32;
                        };
                    } else if (__value__ == (3409049i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3408977?.__copy__());
                            _c_3409057 = @:tmpset0 __tmp__._0;
                            _rest_3409060 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3409066 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3409066 != null) {
                            _gotoNext = 3409107i32;
                        } else {
                            _gotoNext = 3409146i32;
                        };
                    } else if (__value__ == (3409107i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3409066 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3409146i32;
                    } else if (__value__ == (3409146i32)) {
                        @:check2 _p_3406478._literal(_c_3409057);
                        _lit_3408977 = _rest_3409060?.__copy__();
                        _gotoNext = 3409035i32;
                    } else if (__value__ == (3409188i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3409208i32)) {
                        @:check2 _p_3406478._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3406590 = (_t_3406590.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3409290i32)) {
                        _re_3409290 = @:check2 _p_3406478._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3409290 ?? throw "null pointer dereference").flags = _p_3406478._flags;
                        if ((((_t_3406590.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3406590[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3406590[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3409446i32;
                        } else {
                            _gotoNext = 3409688i32;
                        };
                    } else if (__value__ == (3409446i32)) {
                        {
                            var __tmp__ = @:check2 _p_3406478._parseUnicodeClass(_t_3406590?.__copy__(), ((@:checkr _re_3409290 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3409452 = @:tmpset0 __tmp__._0;
                            _rest_3409455 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3409461 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3409461 != null) {
                            _gotoNext = 3409523i32;
                        } else {
                            _gotoNext = 3409556i32;
                        };
                    } else if (__value__ == (3409523i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3409461 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3409556i32;
                    } else if (__value__ == (3409556i32)) {
                        if (_r_3409452 != null) {
                            _gotoNext = 3409568i32;
                        } else {
                            _gotoNext = 3409688i32;
                        };
                    } else if (__value__ == (3409568i32)) {
                        (@:checkr _re_3409290 ?? throw "null pointer dereference").rune = _r_3409452;
                        _t_3406590 = _rest_3409455?.__copy__();
                        @:check2 _p_3406478._push(_re_3409290);
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3409688i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._parsePerlClassEscape(_t_3406590?.__copy__(), ((@:checkr _re_3409290 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3409691 = @:tmpset0 __tmp__._0;
                                _rest_3409694 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3409691 != null) {
                                _gotoNext = 3409752i32;
                            } else {
                                _gotoNext = 3409826i32;
                            };
                        };
                    } else if (__value__ == (3409752i32)) {
                        (@:checkr _re_3409290 ?? throw "null pointer dereference").rune = _r_3409691;
                        _t_3406590 = _rest_3409694?.__copy__();
                        @:check2 _p_3406478._push(_re_3409290);
                        bigSwitchBreak = true;
                        _gotoNext = 3406641i32;
                    } else if (__value__ == (3409826i32)) {
                        @:check2 _p_3406478._reuse(_re_3409290);
                        {
                            {
                                var __tmp__ = @:check2 _p_3406478._parseEscape(_t_3406590?.__copy__());
                                _c_3406498 = @:tmpset0 __tmp__._0;
                                _t_3406590 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3409926i32;
                            } else {
                                _gotoNext = 3409956i32;
                            };
                        };
                    } else if (__value__ == (3409926i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3409956i32;
                    } else if (__value__ == (3409956i32)) {
                        @:check2 _p_3406478._literal(_c_3406498);
                        _gotoNext = 3409975i32;
                    } else if (__value__ == (3409975i32)) {
                        _lastRepeat_3406532 = _repeat_3406614?.__copy__();
                        _gotoNext = 3406598i32;
                    } else if (__value__ == (3410000i32)) {
                        @:check2 _p_3406478._concat();
                        if (@:check2 _p_3406478._swapVerticalBar()) {
                            _gotoNext = 3410035i32;
                        } else {
                            _gotoNext = 3410100i32;
                        };
                    } else if (__value__ == (3410035i32)) {
                        _p_3406478._stack = (_p_3406478._stack.__slice__(0, ((_p_3406478._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3410100i32;
                    } else if (__value__ == (3410100i32)) {
                        @:check2 _p_3406478._alternate();
                        _n_3410116 = (_p_3406478._stack.length);
                        if (_n_3410116 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3410145i32;
                        } else {
                            _gotoNext = 3410192i32;
                        };
                    } else if (__value__ == (3410145i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3410192i32;
                    } else if (__value__ == (3410192i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3406478._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
