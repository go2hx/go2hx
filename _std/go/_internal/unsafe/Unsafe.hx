package go._internal.unsafe;

@:follow typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(go.AnyInterface) from go.AnyInterface to go.AnyInterface {
	private function new(value) {
		this = value;
	}
	public function __toRef__():Dynamic
		return this.value;

	public function __convert__(toType:go._internal.internal.reflect.GoType):Any {
		var fromType:go._internal.internal.reflect.GoType = (this.type : Dynamic)._common();
		var f = null;
		f = t -> switch t {
			case go._internal.internal.reflect.GoType.refType(_.get() => elem):
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
								return Go.pointer(((this.value : go.Slice<GoUInt8>).toBytes() : go.GoString));
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

function sizeof(x:AnyInterface):GoUIntptr {
	return new go.GoUIntptr(x.type.size());
}

function offsetof_(x:AnyInterface):GoUIntptr {
	return new go.GoUIntptr(0);
}

function alignof_(x:AnyInterface):GoUIntptr {
	return new go.GoUIntptr(0);
}

function stringData(s:GoString):Dynamic
	return null;

function sliceData<T>(s:Slice<T>):Dynamic
	return null;

function string(s:go.Pointer<go.GoByte>, len:GoInt):GoString
	return "";

function slice(_ptr:Pointer<Dynamic>,_len:GoInt):Array<Dynamic>
	return [];