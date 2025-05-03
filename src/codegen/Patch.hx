package codegen;

import haxe.macro.Expr.TypePath;

final splitDepsBool = true;
final newValue:TypePath = splitDepsBool ? {pack: "stdgo._internal.reflect.Reflect_value".split("."), name: "Value"} : {pack: [], name: "Value"};

final newValueError:TypePath = splitDepsBool ? {pack: "stdgo._internal.reflect.Reflect_valueerror".split("."), name: "ValueError"} : {
	pack: [],
	name: "ValueError"
};

final skipTests = [
	"testing.iotest:testWriteLogger" => [],
	// testing/fstest
	"testing.fstest:testMapFS" => [],
	"os_test:_createSocketPair" => [], // exclude because it pulls in x/net/
	"encoding.csv:testRead" => [], // temp disable FIXME
	"math.rand_test:testConcurrent" => [], // sync.WaitGroup and goroutines with exceptions inside
	"path.filepath_test:testCVE202230632" => [], // segfault
	"fmt_test:testPanics" => [], // keep Haxe specific throws, no need to replicate
	"text.tabwriter_test:testPanicDuringWrite" => ["interp", "js"],
	"text.tabwriter_test:testPanicDuringFlush" => ["interp", "js"],
	"bytes_test:testReaderCopyNothing" => ["interp", "js"], // out of bounds issue
	"bytes_test:testLargeStringWrites" => ["js"], // max call stack
	"bytes_test:testLargeByteWrites" => ["js"], // max call stack
	"bytes_test:testSplit" => [], // Segmentation fault (core dumped)
	"bytes_test:testMixedReadsAndWrites" => ["js"], // randomly causes errors in max call stack depth uses rand.Intn in the tests so it is random
	"fmt_test:testFinderNext" => [], // Segmentation fault (core dumped)
	"fmt_test:testScan" => ["js"],
	"fmt_test:testScanln" => ["js"],
	"fmt_test:testScanfMulti" => ["js"],
	"strings_test:testGenericTrieBuilding" => [], // Segmentation fault (core dumped)
	"math_test:testFloatMinima" => ["interp", "js"],
	"math_test:testNextafter32" => ["interp", "js"],
	"strconv_test:testRoundTrip32" => ["interp", "js"], // imprecise float
	"bufio_test:testScanLongLines" => [], // hits timeout
	"bufio_test:testReadStringAllocs" => [], // checks runtime allocations num
	"io_test:testMultiWriter_WriteStringSingleAlloc" => [], // checks runtime allocations num
	"io_test:testMultiReaderFreesExhaustedReaders" => [], // uses runtime.setFinalizer
	"io_test:testMultiWriterSingleChainFlatten" => [], // uses runtime.callers
	"io_test:testMultiReaderFlatten" => [], // uses runtime.callers
	// "math_test:testSignbit" => ["interp"],
	"math_test:testGamma" => ["interp", "js"],
	"strconv_test:testAtof" => [], // uses rand and sync
	"strconv_test:testAtofSlow" => [], // uses rand and sync
	"strconv_test:testAtofRandom" => [], // imprecise float
	"strconv_test:testFtoaRandom" => [], // uses rand
	"strconv_test:testFp" => [], // uses os read
	"strconv_test:testFtoaPowersOfTwo" => [], // imprecise float
	"strings_test:testBuilderGrow" => [], // checks runtime allocations num
	"strings_test:testBuilderAllocs" => [], // checks runtime allocations num
	"strings_test:testClone" => [], // uses unsafe pointer conversions
	"strings_test:testBuilderCopyPanic" => [], // TODO: implement - uses complex functionality of recover in a go routine
	"strings_test:testCompareStrings" => [], // uses unsafe pointer conversions
	"strings_test:testReaderLenSize" => [], // TODO: implement - io
	"strings_test:testReplacer" => [], // TODO: implement - uses bytes.Buffer
	"strings_test:testPickAlgorithm" => [], // TODO: implement - uses fmt.Sprintf
	"strings_test:testMap" => [], // uses unsafe pointer conversions
	"crypto.sha512_test:testAllocations" => [], // checks runtime allocations num
	"crypto.sha512:testAllocations" => [], // checks runtime allocations num
	"log_test:testDiscard" => [], // checks runtime allocations num
	"log:testDiscard" => [], // checks runtime allocations num
	"bytes_test:testGrow" => [], // checks runtime allocations num
	"bytes_test:testClone" => [], // uses unsafe sliceData
	"bytes_test:testReaderLenSize" => [], // TODO: implement - sync
	"bytes_test:testCompareBytes" => [], // very slow but passes
	"encoding.json:testHTTPDecoding" => [], // uses net/http
	"compress.gzip:example_compressingReader" => [], // uses net/http
	"encoding.binary_test:testNativeEndian" => [], // uses unsafe pointer conversions
	// stdgo/math/rand_test
	"math.rand_test:testFloat32" => [], // slow
	// stdgo/math/big_test
	"math.big_test:testLinkerGC" => [], // specific to GC's linker
	"math.big_test:testModSqrt" => [], // slow
	"math.big_test:testBytes" => [], // broken for gopherjs
	// stdgo/sync_test
	"sync_test:testCondCopy" => [], // raw pointers
	"sync_test:testIssue40999" => [], // uses runtime.setFinalizers
	"sync_test:testPoolGC" => [], // uses runtime.GC()
	"sync_test:testPoolRelease" => [], // uses runtime.GC()
	"sync_test:testPoolDequeue" => [], // This test targets upstream pool implementation, which is not used by GopherJS.
	"sync_test:testPoolChain" => [], // This test targets upstream pool implementation, which is not used by GopherJS.
	// stdgo/math_test
	"math_test:testFloatMinMax" => [], // fmt formatter
	"math:testGamma" => ["interp"], // high floating point precision
	"io.fs_test:testCVE202230630" => [], // signal 11, freezes
	"regexp.syntax:testParseInvalidRegexps" => [], // testParseInvalidRegexps not implemented: too slow
	// stdgo/math_bits_test
	"math_bits_test:testLeadingZeros" => [],
	"math_bits_test:testOnesCount" => [],
	"math_bits_test:testLen" => [],
	// stdgo/strings_test
	"strings_test:_makeBenchInputHard" => [],
];

final replace = [
	"internal.reflectlite:Value" => macro stdgo._internal.reflect.Reflect_value.Value,
	"internal.reflectlite:Type_" => macro stdgo._internal.reflect.Reflect_type_.Type_,
];

final structs = [
	"testing:M" => macro {
		@:local
		var benchBool = false;
	},
	"testing:T_" => macro {
		@:local
		var output:StringBuf = null;
	},
	"testing:T_common" => macro {
		@:local
		var failCount = 0;
	},
	"syscall:IPv6Mreq" => macro {
		@:local
		var Multiaddr:stdgo.GoUInt8;
		@:local
		var Interface:stdgo.GoUInt32;
	},
	"os:File" => macro {
		@:local
		var _input:haxe.io.Input = null;
		@:local
		var _output:haxe.io.Output = null;
		@:local
		var mutex = @:define("target.threaded", {acquire: () -> {}, release: () -> {}}) new sys.thread.Mutex();
		// FileInput + FileOutput: seek, tell
		// FileInput only: eof
	},
	"reflect:MapIter" => macro {
		@:local
		var map:haxe.Constraints.IMap<Dynamic, Dynamic>;
		@:local
		var keys:Array<Dynamic>;
		@:local
		var values:Array<Dynamic>;
		@:local
		var t:stdgo._internal.internal.reflect.Reflect._Type;
		@:local
		var index:Int = 0;
	},
	"reflect:Value" => macro {
		var value:stdgo.AnyInterface;
		@:local
		var underlyingValue:Dynamic;
		var underlyingIndex:stdgo.GoInt = -1;
		@:local
		var underlyingKey:Dynamic = null;
		var canAddrBool:Bool = false;
		var notSetBool:Bool = false;
		function string():stdgo.GoString @:splitdeps {
			var _v = this;
			if (@:privateAccess _v.value == null) {
				return "<invalid Value>";
			}
			var value = @:privateAccess _v.value.value;
			final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
			if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
				switch std.Type.typeof(value) {
					case std.Type.ValueType.TClass(c):
						final name = std.Type.getClassName(c);
						if (std.StringTools.endsWith(name, "_asInterface"))
							value = (value : Dynamic).__underlying__().value;
					default:
						final _ = false;
				}
			}
			if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
				@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
				value = (value : stdgo.Pointer<Dynamic>).value;
			};
			final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
			switch (underlyingType) {
				case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
					switch kind {
						case string_kind:
							return value;
						default:
							final _ = false;
					};
				default:
					final _ = false;
			};
			return "<" + _v.type().string() + " Value>";
		}
	},
	"sync:WaitGroup" => macro {
		@:local
		var counter:stdgo.GoUInt = 0;
		@:local
		var mutex = @:define("target.threaded") new sys.thread.Mutex();
	},
	"sync:Cond" => macro {
		@:local
		var cond = @:define("target.threaded") new sys.thread.Condition();
	},
	"sync:Mutex" => macro {
		@:local
		var mutex = @:define("target.threaded") new sys.thread.Semaphore(1);
	},
	"sync:RWMutex" => macro {
		@:local
		var mutex = @:define("target.threaded") new sys.thread.Semaphore(1);
	},
	"syscall.js:Value" => macro {
		@:local
		var value = (null : Dynamic);
	},
	"sync:Pool" => macro {
		@:local
		var pool = @:define("target.threaded", new Array<stdgo.AnyInterface>()) new sys.thread.Deque<stdgo.AnyInterface>();
	},
	"reflect:ValueError" => macro {
		@:splitdeps function toString():String {
			return "" + method;
		};
	},
];

final addFuncs = [
	"math:negZero" => macro {
		return stdgo._internal.math.Math_copysign.copysign(0.0, -1.0);
	},
];

final addTypeDefs = [
	"net:HaxeListener" => macro class HaxeListener {
		@:local
		private var _socket = @:define("sys") {
			(null : sys.net.Socket);
		};
		@:local
		private var _addr = null;

		public function new(addr, socket) {
			this._addr = addr;
			this._socket = socket;
		}

		public dynamic function accept():{_0:stdgo._internal.net.Net_conn.Conn, _1:stdgo.Error} {
			@:define("sys") {
				final s = _socket.accept();
				return {_0: new stdgo._internal.net.Net_haxeconn.HaxeConn(this._addr, s), _1: null};
			}
			return {_0: null, _1: null};
		}

		public dynamic function close():stdgo.Error {
			@:define("sys") {
				_socket.close();
			}
			return null;
		}

		public dynamic function addr():stdgo._internal.net.Net_addr.Addr {
			return this._addr;
		}

		public function __underlying__():stdgo.AnyInterface
			return stdgo.Go.toInterface(this);
	},
	"net:HaxeAddr" => macro class HaxeAddr {
		@:local
		private var _network:String = "";
		@:local
		private var _ip:String = "";
		@:local
		private var _port:Int = 0;

		public function new(network, ip, port) {
			this._network = network;
			this._ip = ip;
			this._port = port;
		}

		public dynamic function network():stdgo.GoString {
			return _network;
		}

		public dynamic function string():stdgo.GoString {
			return "";
		}

		public function __underlying__():stdgo.AnyInterface
			return stdgo.Go.toInterface(this);
	},
	"net:HaxeConn" => macro class HaxeConn {
		@:local
		private var _socket = @:define("sys") {
			(null : sys.net.Socket);
		};
		@:local
		private var _addr = null;

		public function new(addr, socket) {
			this._socket = socket;
			this._addr = addr;
		}

		public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{_0:stdgo.GoInt, _1:stdgo.Error} {
			@:define("sys") {
				final b = _b.toBytes();
				final i = _socket.input.readBytes(b, 0, b.length);
				@:privateAccess _b.__bytes__ = b;
				return {_0: i, _1: null};
			}
			return {_0: 0, _1: null};
		}

		public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{_0:stdgo.GoInt, _1:stdgo.Error} {
			@:define("sys") {
				final b = _b.toBytes();
				final i = _socket.output.writeBytes(b, 0, b.length);
				@:privateAccess _b.__bytes__ = b;
				return {_0: i, _1: null};
			}
			return {_0: 0, _1: null};
		}

		public dynamic function close():stdgo.Error {
			@:define("sys") {
				_socket.close();
			}
			return null;
		}

		public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr {
			throw "not implemented";
			return null;
		}

		public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr {
			throw "not implemented";
			return null;
		}

		public dynamic function setDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
			throw "not implemented";
			return null;
		}

		public dynamic function setReadDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
			throw "not implemented";
			return null;
		}

		public dynamic function setWriteDeadline(t:stdgo._internal.time.Time_time.Time):stdgo.Error {
			throw "not implemented";
			return null;
		}

		public function __underlying__():stdgo.AnyInterface
			return stdgo.Go.toInterface(this);
	},
	"os:JsOutput" => macro class JsOutput extends haxe.io.Output {
		public function new() {}

		override public function writeBytes(buf, pos, len) {
			if (pos == 0 && len == buf.length) {
				stdgo.Go.print(buf.toString());
			}
			return 0;
		}

		override public function write(s) {
			stdgo.Go.print(s.toString());
		}
	},
];

final funcInline = [
	"math:_sin",
	"math:_cos",
	"math:_archFloor",
	"math:_archCeil",
	"math:_archTrunc",
	"math:_sqrt",
];
