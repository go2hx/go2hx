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
@:structInit class T_traceback {
    public var _frames : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>> = (null : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>>);
    public var _createdBy : stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>);
    public function new(?_frames:stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>>, ?_createdBy:stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>) {
        if (_frames != null) this._frames = _frames;
        if (_createdBy != null) this._createdBy = _createdBy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceback(_frames, _createdBy);
    }
}
