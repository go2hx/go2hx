package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkSemTable(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _n in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1000 : stdgo.GoInt), (2000 : stdgo.GoInt), (4000 : stdgo.GoInt), (8000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("OneAddrCollision/n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _tab = stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_SemTable.SemTable)) : stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>));
                var _u = (new stdgo.Slice<stdgo.GoUInt32>((252 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                _b.resetTimer();
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                if ((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                    _tab.enqueue(stdgo.Go.pointer(_u[(0 : stdgo.GoInt)]));
                                } else {
                                    _tab.enqueue(stdgo.Go.pointer(_u[(251 : stdgo.GoInt)]));
                                };
                            });
                        };
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                var _ok:Bool = false;
                                if ((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                    _ok = _tab.dequeue(stdgo.Go.pointer(_u[(0 : stdgo.GoInt)]));
                                } else {
                                    _ok = _tab.dequeue(stdgo.Go.pointer(_u[(251 : stdgo.GoInt)]));
                                };
                                if (!_ok) {
                                    _b.fatal(stdgo.Go.toInterface(("failed to dequeue" : stdgo.GoString)));
                                };
                            });
                        };
                    });
                };
            });
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("ManyAddrCollision/n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _tab = stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_SemTable.SemTable)) : stdgo.Ref<stdgo._internal.runtime.Runtime_SemTable.SemTable>));
                var _u = (new stdgo.Slice<stdgo.GoUInt32>((_n * (251 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                _b.resetTimer();
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                _tab.enqueue(stdgo.Go.pointer(_u[(_i * (251 : stdgo.GoInt) : stdgo.GoInt)]));
                            });
                        };
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                if (!_tab.dequeue(stdgo.Go.pointer(_u[(_i * (251 : stdgo.GoInt) : stdgo.GoInt)]))) {
                                    _b.fatal(stdgo.Go.toInterface(("failed to dequeue" : stdgo.GoString)));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
