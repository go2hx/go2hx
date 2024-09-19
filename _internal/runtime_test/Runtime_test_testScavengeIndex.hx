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
function testScavengeIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _setup = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _force:Bool):{ var _0 : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730; var _1 : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941; var _2 : () -> Void; } {
            var _mark = (null : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730), _find = (null : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941), _nextGen = null;
            _t.helper();
            var _si = stdgo._internal.runtime.Runtime_newScavengeIndex.newScavengeIndex(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (64u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx));
            _si.allocRange(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (64u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
            _si.nextGen();
            _si.freeRange(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (64u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
            {
                var _ci = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_ci < (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (64u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _ci++, {
                    _si.setEmpty(_ci);
                });
            };
            _si.resetSearchAddrs();
            _mark = function(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
                _t.helper();
                _si.allocRange(_base, _limit);
                _si.freeRange(_base, _limit);
            };
            _find = function(_want:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, _wantOffset:stdgo.GoUInt):Void {
                _t.helper();
                var __tmp__ = _si.find(_force), _got:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx = __tmp__._0, _gotOffset:stdgo.GoUInt = __tmp__._1;
                if (_want != (_got)) {
                    _t.errorf(("find: wanted chunk index %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
                if (_wantOffset != (_gotOffset)) {
                    _t.errorf(("find: wanted page offset %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_wantOffset), stdgo.Go.toInterface(_gotOffset));
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _si.setEmpty(_got);
            };
            _nextGen = function():Void {
                _t.helper();
                _si.nextGen();
            };
            return { _0 : _mark, _1 : _find, _2 : _nextGen };
        };
        {};
        for (__6 => _test in (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950>(15, 15, ...[
({ _name : ("Uninitialized" : stdgo.GoString), _mark : function(__6:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {}, _find : function(__6:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {} } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("OnePage" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (3u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (4u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (3u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("FirstPage" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (1u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("SeveralPages" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (9u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (14u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (13u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("WholeChunk" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("LastPage" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("TwoChunks" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (128u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (128u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (127u32 : stdgo.GoUInt));
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("TwoChunksOffset" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (7u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (128u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (8u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (129u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (8u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (128u32 : stdgo.GoUInt));
            _find((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (7u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (511u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("SevenChunksOffset" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (6u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (11u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (13u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (15u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (13u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (14u32 : stdgo.GoUInt));
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (12u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (6u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("ThirtyTwoChunks" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (31u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("ThirtyTwoChunksOffset" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (3u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (35u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (34u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (3u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("Mark" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i < (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i++, {
                    _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(_i, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((_i + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
                });
            };
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (31u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("MarkIdempotentOneChunk" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            _find(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt));
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("MarkIdempotentThirtyTwoChunks" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (31u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950),
({ _name : ("MarkIdempotentThirtyTwoChunksOffset" : stdgo.GoString), _mark : function(_mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730):Void {
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (31u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
            _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (5u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (36u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
        }, _find : function(_find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941):Void {
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (35u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i >= (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i--, {
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
        } } : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950>)) {
            var _test = (_test?.__copy__() : _internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___testCase_18950.T_testScavengeIndex___localname___testCase_18950);
            _t.run((("Bg/" : stdgo.GoString) + _test._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __tmp__ = _setup(_t, false), _mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730 = __tmp__._0, _find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941 = __tmp__._1, _nextGen:() -> Void = __tmp__._2;
                _test._mark(_mark);
                _find((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt));
                _nextGen();
                _test._find(_find);
                _find((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt));
            });
            _t.run((("Force/" : stdgo.GoString) + _test._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __tmp__ = _setup(_t, true), _mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730 = __tmp__._0, _find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941 = __tmp__._1, __23:() -> Void = __tmp__._2;
                _test._mark(_mark);
                _test._find(_find);
                _find((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt));
            });
        };
        _t.run(("Bg/MarkInterleaved" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = _setup(_t, false), _mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730 = __tmp__._0, _find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941 = __tmp__._1, _nextGen:() -> Void = __tmp__._2;
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i < (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i++, {
                    _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(_i, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((_i + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
                    _nextGen();
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
            _find((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt));
        });
        _t.run(("Force/MarkInterleaved" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = _setup(_t, true), _mark:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___markFunc_16730.T_testScavengeIndex___localname___markFunc_16730 = __tmp__._0, _find:_internal.runtime_test.Runtime_test_T_testScavengeIndex___localname___findFunc_16941.T_testScavengeIndex___localname___findFunc_16941 = __tmp__._1, __23:() -> Void = __tmp__._2;
            {
                var _i = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                stdgo.Go.cfor((_i < (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (32u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i++, {
                    _mark(stdgo._internal.runtime.Runtime_pageBase.pageBase(_i, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((_i + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)));
                    _find(_i, (511u32 : stdgo.GoUInt));
                });
            };
            _find((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt));
        });
    }
