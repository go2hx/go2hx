package stdgo._internal.unsafe;

import stdgo.Pointer;

import stdgo._internal.internal.reflect.Reflect.GoType;
using GoString.GoStringTools;

@:follow typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(AnyInterface) from stdgo.AnyInterface to stdgo.AnyInterface {
	private function new(value) {
		this = value;
	}
	public function __toRef__():Ref<Dynamic>
		return this.value;

	public function __convert__(toType:GoType):Any {
		var fromType:GoType = (this.type : Dynamic)._common();
		var f = null;
		f = t -> switch t {
			case refType(_.get() => elem):
				f(elem);
			default:
				t;
		}
		fromType = f(fromType);
		toType = f(toType);
		if (fromType.equals(toType))
			return this.value;
		// to
		switch toType {
			case basic(uintptr_kind):
				return this.value;
			default:
		}
		// from
		switch fromType {
			case basic(kind):
				switch kind {
					case uintptr_kind:
						return this.value;
					default:
				}
			case sliceType(_.get() => elem):
				switch elem {
					case basic(uint8_kind):
						switch toType {
							case pointerType(_.get() => basic(string_kind)):
								return Go.pointer(((this.value : Slice<GoUInt8>).toBytes() : GoString));
							default:
						}
					default:
				}
			default:
		}
		trace("unimplemented unsafe conversion: " + fromType + " -> " + toType);
		return this.value;
	}
}

function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr {
	return x.type.size();
}

function offsetof_(x:stdgo.AnyInterface):stdgo.GoUIntptr {
	return 0;
}

function alignof_(x:stdgo.AnyInterface):stdgo.GoUIntptr {
	return 0;
}

function stringData(s:stdgo.GoString):Dynamic
	return null;

function sliceData<T>(s:stdgo.Slice<T>):Dynamic
	return null;

function string(s:stdgo.Pointer<stdgo.GoByte>, len:stdgo.GoInt):stdgo.GoString
	return "";

function slice(_ptr:stdgo.Pointer<Dynamic>,_len:stdgo.GoInt):Array<Dynamic>
	return [];